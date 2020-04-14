package com.coderman.api.system.controller;

import com.coderman.api.system.annotation.ControllerEndpoint;
import com.coderman.api.system.bean.ActiveUser;
import com.coderman.api.system.bean.ResponseBean;
import com.coderman.api.system.config.JWTToken;
import com.coderman.api.system.converter.RoleConverter;
import com.coderman.api.system.pojo.LoginLog;
import com.coderman.api.system.pojo.Role;
import com.coderman.api.system.pojo.User;
import com.coderman.api.system.service.LoginLogService;
import com.coderman.api.system.service.RoleService;
import com.coderman.api.system.service.UserService;
import com.coderman.api.system.util.AddressUtil;
import com.coderman.api.system.util.IPUtil;
import com.coderman.api.system.util.JWTUtils;
import com.coderman.api.system.util.MD5Utils;
import com.coderman.api.system.vo.*;
import eu.bitwalker.useragentutils.Browser;
import eu.bitwalker.useragentutils.OperatingSystem;
import eu.bitwalker.useragentutils.UserAgent;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.constraints.NotBlank;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author zhangyukang
 * @Date 2020/3/7 16:24
 * @Version 1.0
 **/

@RestController
@RequestMapping("/user")
@Validated
@Api(value = "系统用户模块", tags = "系统用户接口")
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private RoleService roleService;

    @Autowired
    private LoginLogService loginLogService;


    /**
     * 创建登入日志
     *
     * @param
     * @return
     */
    public static LoginLog createLoginLog(HttpServletRequest request) {
        ActiveUser activeUser = (ActiveUser) SecurityUtils.getSubject().getPrincipal();
        LoginLog loginLog = new LoginLog();
        loginLog.setUsername(activeUser.getUser().getUsername());
        loginLog.setIp(IPUtil.getIpAddr(request));
        loginLog.setLocation(AddressUtil.getCityInfo(IPUtil.getIpAddr(request)));
        // 获取客户端操作系统
        UserAgent userAgent = UserAgent.parseUserAgentString(request.getHeader("User-Agent"));
        Browser browser = userAgent.getBrowser();
        OperatingSystem os = userAgent.getOperatingSystem();
        loginLog.setUserSystem(os.getName());
        loginLog.setUserBrowser(browser.getName());
        loginLog.setLoginTime(new Date());
        return loginLog;
    }

    /**
     * 用户登入
     *
     * @param username
     * @param password
     * @return
     */
    @ApiOperation(value = "用户登入", notes = "用户名和密码登入系统，登入成功后返回JWTToken")
    @PostMapping("/login")
    public ResponseBean login(@NotBlank(message = "用户名必填") String username,
                              @NotBlank(message = "密码必填") String password,
                              HttpServletRequest request) {
        Object token;
        User user = userService.findUserByName(username);
        if (user != null) {
            String salt = user.getSalt();
            //秘钥为盐
            String target = MD5Utils.md5Encryption(password, salt);
            //生成Token
            token = JWTUtils.sign(username, target);
            JWTToken jwtToken = new JWTToken((String) token);
            try {
                SecurityUtils.getSubject().login(jwtToken);
            } catch (AuthenticationException e) {
                return ResponseBean.error(e.getMessage());
            }
        } else {
            return ResponseBean.error("用户名不存在");
        }
        //登入日志
        LoginLog loginLog = createLoginLog(request);
        loginLogService.add(loginLog);
        return ResponseBean.success(token);
    }



    /**
     * 用户列表
     *
     * @return
     */
    @ApiOperation(value = "用户列表", notes = "模糊查询用户列表")
    @GetMapping("/findUserList")
    public ResponseBean findUserList(@RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
                                     @RequestParam(value = "pageSize", defaultValue = "7") Integer pageSize,
                                     UserVO userVO) {
        PageVO<UserVO> userList = userService.findUserList(pageNum, pageSize, userVO);
        return ResponseBean.success(userList);
    }

    /**
     * 用户信息
     *
     * @return
     */
    @ApiOperation(value = "用户信息", notes = "用户登入信息")
    @GetMapping("/info")
    public ResponseBean info() {
        ActiveUser activeUser = (ActiveUser) SecurityUtils.getSubject().getPrincipal();
        UserInfoVO userInfoVO = new UserInfoVO();
        userInfoVO.setAvatar(activeUser.getUser().getAvatar());
        userInfoVO.setUsername(activeUser.getUser().getUsername());
        userInfoVO.setRoles(activeUser.getRoles());
        userInfoVO.setMenus(activeUser.getMenus());
        return ResponseBean.success(userInfoVO);
    }

    /**
     * 加载菜单
     *
     * @return
     */
    @ApiOperation(value = "加载菜单", notes = "用户登入后,根据角色加载菜单树")
    @GetMapping("/findMenu")
    public ResponseBean findMenu() {
        List<MenuNodeVO> menuTreeVOS = userService.findMenu();
        return ResponseBean.success(menuTreeVOS);
    }

    /**
     * 分配角色
     *
     * @param id
     * @param rids
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "分配角色失败", operation = "分配角色")
    @ApiOperation(value = "分配角色", notes = "角色分配给用户")
    @RequiresPermissions({"user:assign"})
    @PostMapping("/{id}/assignRoles")
    public ResponseBean assignRoles(@PathVariable Long id, @RequestBody Long[] rids) {
        userService.assignRoles(id, rids);
        return ResponseBean.success();
    }

    /**
     * 删除用户
     *
     * @param id 用户ID
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "删除用户失败", operation = "删除用户")
    @RequiresPermissions({"user:delete"})
    @ApiOperation(value = "删除用户", notes = "删除用户信息，根据用户ID")
    @DeleteMapping("/delete/{id}")
    public ResponseBean delete(@PathVariable Long id) {
        userService.deleteById(id);
        return ResponseBean.success();
    }

    /**
     * 更新状态
     *
     * @param id
     * @param status
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "更新用户状态失败", operation = "用户|禁用/启用")
    @ApiOperation(value = "用户状态", notes = "禁用和启用这两种状态")
    @RequiresPermissions({"user:status"})
    @PutMapping("/updateStatus/{id}/{status}")
    public ResponseBean updateStatus(@PathVariable Long id, @PathVariable Boolean status) {
        userService.updateStatus(id, status);
        return ResponseBean.success();
    }

    /**
     * 更新用户
     *
     * @param id
     * @param userEditVO
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "更新用户失败", operation = "更新用户")
    @ApiOperation(value = "更新用户", notes = "更新用户信息")
    @RequiresPermissions({"user:update"})
    @PutMapping("/update/{id}")
    public ResponseBean update(@PathVariable Long id, @RequestBody @Validated UserEditVO userEditVO) {
        userService.update(id, userEditVO);
        return ResponseBean.success();
    }

    /**
     * 编辑用户
     *
     * @param id
     * @return
     */
    @ApiOperation(value = "编辑用户", notes = "获取用户的详情，编辑用户信息")
    @RequiresPermissions({"user:edit"})
    @GetMapping("/edit/{id}")
    public ResponseBean edit(@PathVariable Long id) {
        UserEditVO userVO = userService.edit(id);
        return ResponseBean.success(userVO);
    }

    /**
     * 添加用户
     *
     * @param userVO
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "添加用户失败", operation = "添加用户")
    @ApiOperation(value = "添加用户", notes = "添加用户信息")
    @RequiresPermissions({"user:add"})
    @PostMapping("/add")
    public ResponseBean add(@RequestBody @Validated UserVO userVO) {
        User user = userService.findUserByName(userVO.getUsername());
        if (user == null) {
            userService.add(userVO);
            return ResponseBean.success();
        } else {
            return ResponseBean.error("用户名已被占用");
        }
    }

    /**
     * 拥有角色ID
     *
     * @param id
     * @return
     */
    @ApiOperation(value = "已有角色", notes = "根据用户id，获取用户已经拥有的角色")
    @GetMapping("/{id}/roles")
    public ResponseBean roles(@PathVariable Long id) {
        List<Long> values = userService.roles(id);
        List<Role> list = roleService.findAll();
        //转成前端需要的角色Item
        List<RoleTransferItemVO> items = RoleConverter.converterToRoleTransferItem(list);
        Map<String, Object> map = new HashMap<>();
        map.put("roles", items);
        map.put("values", values);
        return ResponseBean.success(map);
    }

}
