package com.coderman.api.system.controller;

import com.coderman.api.system.bean.ResponseBean;
import com.coderman.api.system.pojo.Menu;
import com.coderman.api.system.service.MenuService;
import com.coderman.api.system.vo.MenuNodeVO;
import com.coderman.api.system.vo.MenuVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author zhangyukang
 * @Date 2020/3/10 11:51
 * @Version 1.0
 **/
@Api(tags = "菜单权限接口")
@RequestMapping("/menu")
@RestController
public class MenuController {

    @Autowired
    private MenuService menuService;

    /**
     * 加载菜单树
     * @return
     */
    @ApiOperation(value = "加载菜单树",notes = "获取所有菜单树，以及展开项")
    @GetMapping("/menuTree")
    public ResponseBean menuTree(){
        List<MenuNodeVO> menuTree = menuService.findMenuTree();
        List<Long> ids=menuService.findOpenIds();
        Map<String,Object> map=new HashMap<>();
        map.put("tree",menuTree);
        map.put("open",ids);
        return ResponseBean.success(map);
    }

    /**
     * 新增菜单节点
     * @return
     */
    @ApiOperation(value = "新增菜单")
    @RequiresPermissions({"menu:add"})
    @PostMapping("/add")
    public ResponseBean add(@RequestBody @Validated MenuVO menuVO){
        Menu node = menuService.add(menuVO);
        Map<String,Object> map=new HashMap<>();
        map.put("id",node.getId());
        map.put("menuName",node.getMenuName());
        map.put("children",new ArrayList<>());
        map.put("icon",node.getIcon());
        return ResponseBean.success(map);
    }

    /**
     * 删除菜单节点
     * @param id
     * @return
     */
    @ApiOperation(value = "删除菜单",notes = "根据id删除菜单节点")
    @RequiresPermissions({"menu:delete"})
    @DeleteMapping("/delete/{id}")
    public ResponseBean delete(@PathVariable Long id){
        try {
            menuService.delete(id);
            return ResponseBean.success("删除节点成功");
        } catch (Exception e) {
            return ResponseBean.error("删除节点失败");
        }
    }

    /**
     * 编辑菜单节点
     * @param id
     * @return
     */
    @ApiOperation(value = "编辑菜单",notes = "根据id编辑菜单节点")
    @RequiresPermissions({"menu:edit"})
    @GetMapping("/edit/{id}")
    public ResponseBean edit(@PathVariable Long id){
        try {
            MenuVO menuVO=menuService.edit(id);
            return ResponseBean.success(menuVO);
        } catch (Exception e) {
            return ResponseBean.error("编辑失败");
        }
    }

    /**
     * 更新菜单节点
     * @param id
     * @param menuVO
     * @return
     */
    @ApiOperation(value = "更新菜单",notes = "根据id更新菜单节点")
    @RequiresPermissions({"menu:update"})
    @PostMapping("/update/{id}")
    public ResponseBean update(@PathVariable Long id, @RequestBody @Validated MenuVO menuVO){
        try {
            menuService.update(id,menuVO);
            return ResponseBean.success("更新节点成功");
        } catch (Exception e) {
            return ResponseBean.error("更新节点失败");
        }
    }
}
