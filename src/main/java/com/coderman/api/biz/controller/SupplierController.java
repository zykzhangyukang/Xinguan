package com.coderman.api.biz.controller;

import com.coderman.api.biz.service.SupplierService;
import com.coderman.api.biz.vo.SupplierVO;
import com.coderman.api.system.bean.ResponseBean;
import com.coderman.api.system.vo.PageVO;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 供应商管理
 * @Author zhangyukang
 * @Date 2020/3/16 20:18
 * @Version 1.0
 **/
@RestController
@RequestMapping("/supplier")
public class SupplierController {


    @Autowired
    private SupplierService supplierService;

    /**
     * 供应商列表
     * @return
     */
    @ApiOperation(value = "供应商列表",notes = "供应商列表,根据供应商名模糊查询")
    @GetMapping("/findSupplierList")
    public ResponseBean findSupplierList(@RequestParam(value = "pageNum",defaultValue = "1") Integer pageNum,
                                                @RequestParam(value = "pageSize") Integer pageSize,
                                                SupplierVO supplierVO){
        PageVO<SupplierVO> supplierVOPageVO= supplierService.findSupplierList(pageNum,pageSize,supplierVO);
        return ResponseBean.success(supplierVOPageVO);
    }


    /**
     * 添加供应商
     * @return
     */
    @RequiresPermissions({"supplier:add"})
    @ApiOperation(value = "添加供应商")
    @PostMapping("/add")
    public ResponseBean add(@RequestBody @Validated SupplierVO supplierVO){
        try {
            supplierService.add(supplierVO);
            return ResponseBean.success("添加供应商成功");
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseBean.error("添加供应商失败");
        }
    }

    /**
     * 编辑供应商
     * @param id
     * @return
     */
    @RequiresPermissions({"supplier:edit"})
    @GetMapping("/edit/{id}")
    public ResponseBean edit(@PathVariable Long id){
        try {
            SupplierVO supplierVO=supplierService.edit(id);
            return ResponseBean.success(supplierVO);
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseBean.error("编辑供应商失败");
        }
    }

    /**
     * 更新供应商
     * @return
     */
    @RequiresPermissions({"supplier:update"})
    @PostMapping("/update/{id}")
    public ResponseBean update(@PathVariable Long id, @RequestBody @Validated SupplierVO supplierVO){
        try {
            supplierService.update(id,supplierVO);
            return ResponseBean.success("更新供应商成功");
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseBean.error("更新供应商失败");
        }
    }

    /**
     * 删除供应商
     * @param id
     * @return
     */
    @RequiresPermissions({"supplier:delete"})
    @DeleteMapping("/delete/{id}")
    public ResponseBean delete(@PathVariable Long id){
        try {
            supplierService.delete(id);
            return ResponseBean.success("删除供应商成功");
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseBean.error("删除供应商失败");
        }
    }

    /**
     * 查找所有供应商
     * @return
     */
    @GetMapping("/findAll")
    public ResponseBean findAll(){
        List<SupplierVO> supplierVOS=supplierService.findAll();
        return ResponseBean.success(supplierVOS);
    }
}
