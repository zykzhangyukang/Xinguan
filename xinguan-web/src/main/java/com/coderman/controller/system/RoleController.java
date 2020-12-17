package com.coderman.controller.system;

import com.coderman.common.annotation.ControllerEndpoint;
import com.coderman.common.error.SystemException;
import com.coderman.common.model.system.Role;
import com.coderman.common.response.ResponseBean;
import com.coderman.common.vo.system.MenuNodeVO;
import com.coderman.common.vo.system.PageVO;
import com.coderman.common.vo.system.RoleVO;
import com.coderman.system.service.MenuService;
import com.coderman.system.service.RoleService;
import com.wuwenze.poi.ExcelKit;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author zhangyukang
 * @Date 2020/3/9 16:21
 * @Version 1.0
 **/
@Api(tags = "系统模块-角色相关接口")
@RestController
@RequestMapping("/system/role")
public class RoleController {


    @Autowired
    private RoleService roleService;


    @Autowired
    private MenuService menuService;


    /**
     * 角色授权
     *
     * @param mids
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "角色授权失败", operation = "角色授权")
    @ApiOperation(value = "角色授权")
    @RequiresPermissions({"role:authority"})
    @PostMapping("/authority/{id}")
    public ResponseBean authority(@PathVariable Long id, @RequestBody Long[] mids) throws SystemException {
        roleService.authority(id, mids);
        return ResponseBean.success();
    }

    /**
     * 角色拥有的菜单权限id和菜单树
     *
     * @param id
     * @return
     */
    @ApiOperation(value = "角色菜单")
    @GetMapping("/findRoleMenu/{id}")
    public ResponseBean<Map<String, Object>> findRoleMenu(@PathVariable Long id) throws SystemException {
        List<MenuNodeVO> tree = menuService.findMenuTree();
        //角色拥有的菜单id
        List<Long> mids = roleService.findMenuIdsByRoleId(id);
        List<Long> ids = menuService.findOpenIds();
        Map<String, Object> map = new HashMap<>();
        map.put("tree", tree);
        map.put("mids", mids);
        map.put("open", ids);
        return ResponseBean.success(map);
    }

    /**
     * 角色列表
     *
     * @return
     */
    @ApiOperation(value = "角色列表")
    @GetMapping("/findRoleList")
    public ResponseBean<PageVO<RoleVO>> findRoleList(@RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
                                     @RequestParam(value = "pageSize", defaultValue = "7") Integer pageSize,
                                     RoleVO roleVO) {
        PageVO<RoleVO> roleList = roleService.findRoleList(pageNum, pageSize, roleVO);
        return ResponseBean.success(roleList);
    }

    /**
     * 添加角色信息
     *
     * @param roleVO
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "添加角色失败", operation = "添加角色")
    @ApiOperation(value = "添加角色")
    @RequiresPermissions({"role:add"})
    @PostMapping("/add")
    public ResponseBean add(@RequestBody @Validated RoleVO roleVO) throws SystemException {
        roleService.add(roleVO);
        return ResponseBean.success();
    }

    /**
     * 删除角色
     *
     * @param id 角色ID
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "删除角色失败", operation = "删除角色")
    @ApiOperation(value = "删除角色", notes = "根据id删除角色信息")
    @RequiresPermissions({"role:delete"})
    @DeleteMapping("/delete/{id}")
    public ResponseBean delete(@PathVariable Long id) throws SystemException {
        roleService.deleteById(id);
        return ResponseBean.success();
    }


    /**
     * 编辑角色信息
     *
     * @param id
     * @return
     */
    @ApiOperation(value = "编辑用户", notes = "根据id更新角色信息")
    @GetMapping("/edit/{id}")
    @RequiresPermissions({"role:edit"})
    public ResponseBean<RoleVO> edit(@PathVariable Long id) throws SystemException {
        RoleVO roleVO = roleService.edit(id);
        return ResponseBean.success(roleVO);
    }

    /**
     * 更新角色
     *
     * @param id
     * @param roleVO
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "更新角色失败", operation = "更新角色")
    @ApiOperation(value = "更新角色", notes = "根据id更新角色信息")
    @RequiresPermissions({"role:update"})
    @PutMapping("/update/{id}")
    public ResponseBean update(@PathVariable Long id, @RequestBody @Validated RoleVO roleVO) throws SystemException {
        roleService.update(id, roleVO);
        return ResponseBean.success();
    }

    /**
     * 更新角色状态
     *
     * @param id
     * @param status
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "角色更新状态失败", operation = "角色|禁用/启用")
    @ApiOperation(value = "更新状态", notes = "禁用和更新两种状态")
    @RequiresPermissions({"role:status"})
    @PutMapping("/updateStatus/{id}/{status}")
    public ResponseBean updateStatus(@PathVariable Long id, @PathVariable Boolean status) throws SystemException {
        roleService.updateStatus(id, status);
        return ResponseBean.success();
    }

    /**
     * 导出excel
     * @param response
     */
    @ApiOperation(value = "导出excel", notes = "导出所有角色的excel表格")
    @PostMapping("/excel")
    @RequiresPermissions("role:export")
    @ControllerEndpoint(exceptionMessage = "导出Excel失败",operation = "导出角色excel")
    public void export(HttpServletResponse response) {
        List<Role> roles = this.roleService.findAll();
        ExcelKit.$Export(Role.class, response).downXlsx(roles, false);
    }


}
