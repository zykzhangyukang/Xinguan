package com.coderman.api.system.controller;

import com.coderman.api.common.annotation.ControllerEndpoint;
import com.coderman.api.common.bean.ResponseBean;
import com.coderman.api.system.converter.RoleConverter;
import com.coderman.api.common.pojo.system.Role;
import com.coderman.api.common.pojo.system.User;
import com.coderman.api.system.service.LoginLogService;
import com.coderman.api.system.service.RoleService;
import com.coderman.api.system.service.UserService;
import com.coderman.api.system.vo.*;
import com.wuwenze.poi.ExcelKit;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.constraints.NotBlank;
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
     * 用户登入
     *
     * @param username: 用户名
     * @param password: 密码
     * @return
     */
    @ApiOperation(value = "用户登入", notes = "接收参数用户名和密码,登入成功后,返回JWTToken")
    @PostMapping("/login")
    public ResponseBean login(@NotBlank(message = "账号必填") String username,
                              @NotBlank(message = "密码必填") String password,
                              HttpServletRequest request) {
        String token=userService.login(username,password);
        loginLogService.add(request);
        return ResponseBean.success((Object) token);
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
        UserInfoVO userInfoVO=userService.info();
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
     * 添加用户信息
     * @param userVO
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "添加用户失败", operation = "添加用户")
    @ApiOperation(value = "添加用户", notes = "添加用户信息")
    @RequiresPermissions({"user:add"})
    @PostMapping("/add")
    public ResponseBean add(@RequestBody @Validated UserVO userVO) {
        userService.add(userVO);
        return ResponseBean.success();
    }

    /**
     * 用户角色信息
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

    /**
     * 导出excel
     * @param response
     */
    @ApiOperation(value = "导出excel", notes = "导出所有用户的excel表格")
    @PostMapping("/excel")
    @RequiresPermissions("user:export")
    @ControllerEndpoint(exceptionMessage = "导出Excel失败",operation = "导出用户excel")
    public void export(HttpServletResponse response) {
        List<User> users = this.userService.findAll();
        ExcelKit.$Export(User.class, response).downXlsx(users, false);
    }

}
