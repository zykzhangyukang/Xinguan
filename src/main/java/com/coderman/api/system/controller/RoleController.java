package com.coderman.api.system.controller;

import com.coderman.api.system.bean.ResponseBean;
import com.coderman.api.system.service.MenuService;
import com.coderman.api.system.service.RoleService;
import com.coderman.api.system.vo.*;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author zhangyukang
 * @Date 2020/3/9 16:21
 * @Version 1.0
 **/
@Api(tags = "系统角色接口")
@RestController
@RequestMapping("/role")
public class RoleController {


    @Autowired
    private RoleService roleService;


    @Autowired
    private MenuService menuService;


    /**
     * 角色授权
     * @param mids
     * @return
     */
    @ApiOperation(value = "角色授权")
    @RequiresPermissions({"role:authority"})
    @PostMapping("/authority/{id}")
    public ResponseBean authority(@PathVariable Long id,@RequestBody Long[] mids ){
        try {
            menuService.authority(id,mids);
            return ResponseBean.success("角色授权成功");
        } catch (Exception e) {
            return ResponseBean.error("角色授权失败");
        }
    }

    /**
     * 角色拥有的菜单权限id和菜单树
     * @param id
     * @return
     */
    @ApiOperation(value = "角色菜单")
    @GetMapping("/findRoleMenu/{id}")
    public  ResponseBean findRoleMenu(@PathVariable Long id){
        List<MenuNodeVO> tree = menuService.findMenuTree();
        //角色拥有的菜单id
        List<Long> mids=roleService.findMenuIdsByRoleId(id);
        List<Long> ids=menuService.findOpenIds();
        Map<String,Object> map=new HashMap<>();
        map.put("tree",tree);
        map.put("mids",mids);
        map.put("open",ids);
        return ResponseBean.success(map);
    }

    /**
     * 角色列表
     * @return
     */
    @ApiOperation(value = "角色列表")
    @GetMapping("/findRoleList")
    public ResponseBean findRoleList(@RequestParam(value = "pageNum",defaultValue = "1") Integer pageNum,
                                     @RequestParam(value = "pageSize",defaultValue = "7") Integer pageSize,
                                     RoleVO roleVO){
        PageVO<RoleVO> roleList= roleService.findRoleList(pageNum,pageSize,roleVO);
        return ResponseBean.success(roleList);
    }

    /**
     * 添加角色信息
     * @param roleVO
     * @return
     */
    @ApiOperation(value = "添加角色")
    @RequiresPermissions({"role:add"})
    @PostMapping("/add")
    public ResponseBean add(@RequestBody @Validated RoleVO roleVO){
        try {
            roleService.add(roleVO);
            return ResponseBean.success("添加角色成功");
        } catch (Exception e) {
            return ResponseBean.error("添加角色失败");
        }
    }

    /**
     * 删除角色信息
     * @param id 角色ID
     * @return
     */
    @ApiOperation(value = "删除角色",notes = "根据id删除角色信息")
    @RequiresPermissions({"role:delete"})
    @DeleteMapping("/delete/{id}")
    public ResponseBean delete(@PathVariable Long id){
        try {
            roleService.deleteById(id);
            return ResponseBean.success("删除成功");
        } catch (Exception e) {
            return ResponseBean.error("删除失败");
        }
    }


    /**
     * 编辑角色信息
     * @param id
     * @return
     */
    @ApiOperation(value = "编辑用户",notes = "根据id更新角色信息")
    @GetMapping("/edit/{id}")
    @RequiresPermissions({"role:edit"})
    public ResponseBean edit(@PathVariable Long id){
        try {
            RoleVO roleVO=roleService.edit(id);
            return ResponseBean.success(roleVO);
        } catch (Exception e) {
            return ResponseBean.error("编辑失败");
        }
    }

    /**
     * 更新角色信息
     * @param id
     * @param roleVO
     * @return
     */
    @ApiOperation(value = "更新角色",notes = "根据id更新角色信息")
    @RequiresPermissions({"role:update"})
    @PostMapping("/update/{id}")
    public ResponseBean update(@PathVariable Long id,@RequestBody @Validated RoleVO roleVO){
        try {
            roleService.update(id,roleVO);
            return ResponseBean.success("更新角色成功");
        } catch (Exception e) {
            return ResponseBean.error("更新角色失败");
        }
    }

    /**
     * 更新角色状态
     * @param id
     * @param status
     * @return
     */
    @ApiOperation(value = "更新状态",notes = "禁用和更新两种状态")
    @RequiresPermissions({"role:status"})
    @PutMapping("/updateStatus/{id}/{status}")
    public ResponseBean updateStatus(@PathVariable Long id,@PathVariable Boolean status){
        try {
            roleService.updateStatus(id,status);
            return ResponseBean.success("更新状态成功");
        } catch (Exception e) {
            return ResponseBean.error("更新状态失败");
        }
    }



}
