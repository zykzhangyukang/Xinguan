package com.coderman.api.biz.controller;

import com.coderman.api.biz.service.ProductCategoryService;
import com.coderman.api.biz.vo.ProductCategoryTreeNodeVO;
import com.coderman.api.system.bean.ResponseBean;
import com.coderman.api.system.vo.PageVO;
import com.coderman.api.biz.vo.ProductCategoryVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.List;

/**
 *商品分类管理
 * @Author zhangyukang
 * @Date 2020/3/16 17:16
 * @Version 1.0
 **/
@Api(tags = "物资类别接口")
@RestController
@RequestMapping("/productCategory")
public class ProductCategoryController {

    @Autowired
    private ProductCategoryService productCategoryService;


    /**
     * 商品分类列表
     * @return
     */
    @ApiOperation(value = "商品分类列表",notes = "商品分类列表,根据商品分类名模糊查询")
    @GetMapping("/findProductCategoryList")
    public ResponseBean findProductCategoryList(
            @RequestParam(value = "pageNum",defaultValue = "1") Integer pageNum,
                                           @RequestParam(value = "pageSize") Integer pageSize,
                                           ProductCategoryVO productCategoryVO){

        PageVO<ProductCategoryVO> departmentsList= productCategoryService.findProductCategoryList(pageNum,pageSize,productCategoryVO);
        return ResponseBean.success(departmentsList);
    }

    /**
     * 分类树形结构(分页)
     * @return
     *
     */
    @GetMapping("/categoryTree")
    public ResponseBean categoryTree( @RequestParam(value = "pageNum",required = false) Integer pageNum,
                                      @RequestParam(value = "pageSize",required = false) Integer pageSize){
        PageVO<ProductCategoryTreeNodeVO> pageVO=productCategoryService.categoryTree(pageNum,pageSize);
        return ResponseBean.success(pageVO);
    }

    /**
     * 获取父级菜单树：2级树
     * @return
     */
    @GetMapping("/getParentCategoryTree")
    public ResponseBean getParentCategoryTree(){
        List<ProductCategoryTreeNodeVO> parentTree=productCategoryService.getParentCategoryTree();
        return ResponseBean.success(parentTree);
    }

    /**
     * 查询所有分类
     * @return
     */
    @GetMapping("/findAll")
    public ResponseBean findAll(){
        List<ProductCategoryVO> productCategoryVOS=productCategoryService.findAll();
        return ResponseBean.success(productCategoryVOS);
    }

    /**
     * 添加商品分类
     * @return
     */
    @RequiresPermissions({"productCategory:add"})
    @ApiOperation(value = "添加商品分类")
    @PostMapping("/add")
    public ResponseBean add(@RequestBody @Validated ProductCategoryVO productCategoryVO){
        try {
            productCategoryService.add(productCategoryVO);
            return ResponseBean.success("添加商品分类成功");
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseBean.error("添加商品分类失败");
        }
    }

    /**
     * 编辑商品分类
     * @param id
     * @return
     */
    @RequiresPermissions({"productCategory:edit"})
    @GetMapping("/edit/{id}")
    public ResponseBean edit(@PathVariable Long id){
        try {
            ProductCategoryVO productCategoryVO=productCategoryService.edit(id);
            return ResponseBean.success(productCategoryVO);
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseBean.error("编辑商品分类失败");
        }
    }

    /**
     * 更新商品分类
     * @return
     */
    @RequiresPermissions({"productCategory:update"})
    @PostMapping("/update/{id}")
    public ResponseBean update(@PathVariable Long id, @RequestBody @Validated ProductCategoryVO productCategoryVO){
        try {
            productCategoryService.update(id,productCategoryVO);
            return ResponseBean.success("更新商品分类成功");
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseBean.error("更新商品分类失败");
        }
    }

    /**
     * 删除商品分类
     * @param id
     * @return
     */
    @RequiresPermissions({"productCategory:delete"})
    @DeleteMapping("/delete/{id}")
    public ResponseBean delete(@PathVariable Long id){
        try {
            productCategoryService.delete(id);
            return ResponseBean.success("删除商品分类成功");
        }catch(Exception e) {
            e.printStackTrace();
            return ResponseBean.error("删除商品分类失败");
        }
    }
}
