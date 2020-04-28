package com.coderman.api.biz.controller;

import com.coderman.api.biz.service.ProductService;
import com.coderman.api.biz.vo.ProductStockVO;
import com.coderman.api.biz.vo.ProductVO;
import com.coderman.api.system.bean.ResponseBean;
import com.coderman.api.system.vo.PageVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Author zhangyukang
 * @Date 2020/3/17 09:19
 * @Version 1.0
 **/
@Api(tags = "物资资料接口")
@RestController
@RequestMapping("/product")
public class ProductController {


    @Autowired
    private ProductService productService;

    /**
     * 物资列表
     *
     * @return
     */
    @ApiOperation(value = "物资列表", notes = "物资列表,根据物资名模糊查询")
    @GetMapping("/findProductList")
    public ResponseBean findProductList(@RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
                                        @RequestParam(value = "pageSize") Integer pageSize,
                                        @RequestParam(value = "categorys", required = false) String categorys,
                                        ProductVO productVO) {
        buildCategorySearch(categorys, productVO);
        PageVO<ProductVO> productVOPageVO = productService.findProductList(pageNum, pageSize, productVO);
        return ResponseBean.success(productVOPageVO);
    }

    /**
     * 库存列表
     *
     * @return
     */
    @ApiOperation(value = "库存列表", notes = "物资列表,根据物资名模糊查询")
    @GetMapping("/findProductStocks")
    public ResponseBean findProductStocks(@RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
                                        @RequestParam(value = "pageSize") Integer pageSize,
                                        @RequestParam(value = "categorys", required = false) String categorys,
                                        ProductVO productVO) {

        buildCategorySearch(categorys, productVO);
        PageVO<ProductStockVO> productVOPageVO = productService.findProductStocks(pageNum, pageSize, productVO);
        return ResponseBean.success(productVOPageVO);
    }
    /**
     * 所有库存
     *
     * @return
     */
    @ApiOperation(value = "所有库存", notes = "物资所有库存信息")
    @GetMapping("/findAllStocks")
    public ResponseBean findAllStocks() {
        List<ProductStockVO> list = productService.findAllStocks();
        return ResponseBean.success(list);
    }



    /**
     * 封装物资查询条件
     * @param categorys
     * @param productVO
     */
    private void buildCategorySearch(@RequestParam(value = "categorys", required = false) String categorys, ProductVO productVO) {
        if (categorys != null && !"".equals(categorys)) {
            String[] split = categorys.split(",");
            switch (split.length) {
                case 1:
                    productVO.setOneCategoryId(Long.parseLong(split[0]));
                    break;
                case 2:
                    productVO.setOneCategoryId(Long.parseLong(split[0]));
                    productVO.setTwoCategoryId(Long.parseLong(split[1]));
                    break;
                case 3:
                    productVO.setOneCategoryId(Long.parseLong(split[0]));
                    productVO.setTwoCategoryId(Long.parseLong(split[1]));
                    productVO.setThreeCategoryId(Long.parseLong(split[2]));
                    break;
            }
        }
    }


    /**
     * 添加物资
     *
     * @return
     */
    @ApiOperation(value = "添加物资")
    @RequiresPermissions({"product:add"})
    @PostMapping("/add")
    public ResponseBean add(@RequestBody @Validated ProductVO productVO) {
        if (productVO.getCategoryKeys().length != 3) {
            return ResponseBean.error("物资需要3级分类");
        }
        productService.add(productVO);
        return ResponseBean.success();
    }

    /**
     * 编辑物资
     *
     * @param id
     * @return
     */
    @ApiOperation(value = "编辑物资", notes = "编辑物资信息")
    @RequiresPermissions({"product:edit"})
    @GetMapping("/edit/{id}")
    public ResponseBean edit(@PathVariable Long id) {
        ProductVO productVO = productService.edit(id);
        return ResponseBean.success(productVO);
    }

    /**
     * 更新物资
     *
     * @return
     */
    @ApiOperation(value = "更新物资", notes = "更新物资信息")
    @RequiresPermissions({"product:update"})
    @PutMapping("/update/{id}")
    public ResponseBean update(@PathVariable Long id, @RequestBody ProductVO productVO) {
        if (productVO.getCategoryKeys().length != 3) {
            return ResponseBean.error("物资需要3级分类");
        }
        productService.update(id, productVO);
        return ResponseBean.success();
    }

    /**
     * 删除物资
     *
     * @param id
     * @return
     */
    @ApiOperation(value = "删除物资", notes = "删除物资信息")
    @RequiresPermissions({"product:delete"})
    @DeleteMapping("/delete/{id}")
    public ResponseBean delete(@PathVariable Long id) {
        productService.delete(id);
        return ResponseBean.success();
    }

    /**
     * 移入回收站
     * @param id
     * @return
     */
    @ApiOperation(value = "移入回收站", notes = "移入回收站")
    @RequiresPermissions({"product:remove"})
    @GetMapping("/remove/{id}")
    public ResponseBean remove(@PathVariable Long id) {
        productService.remove(id);
        return ResponseBean.success();
    }
    /**
     * 恢复数据从回收站
     * @param id
     * @return
     */
    @ApiOperation(value = "恢复数据", notes = "从回收站中恢复物资")
    @RequiresPermissions({"product:back"})
    @GetMapping("/back/{id}")
    public ResponseBean back(@PathVariable Long id) {
        productService.back(id);
        return ResponseBean.success();
    }
}


