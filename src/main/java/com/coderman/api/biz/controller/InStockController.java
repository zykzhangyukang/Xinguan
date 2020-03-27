package com.coderman.api.biz.controller;

import com.coderman.api.biz.service.InStockService;
import com.coderman.api.biz.vo.InStockDetailVO;
import com.coderman.api.biz.vo.InStockVO;
import com.coderman.api.system.bean.ResponseBean;
import com.coderman.api.system.vo.PageVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

/**
 * @Author zhangyukang
 * @Date 2020/3/19 09:53
 * @Version 1.0
 **/
@Api(tags = "物资入库接口")
@RestController
@RequestMapping("/inStock")
public class InStockController {

    @Autowired
    private InStockService inStockService;

    /**
     * 入库单列表
     * @param pageNum
     * @param pageSize
     * @param inStockVO
     * @return
     */
    @ApiOperation(value = "入库单列表")
    @GetMapping("/findInStockList")
    public ResponseBean findInStockList(
            @RequestParam(value = "pageNum",defaultValue = "1") Integer pageNum,
            @RequestParam(value = "pageSize") Integer pageSize,
            InStockVO inStockVO){
        PageVO<InStockVO> inStockList = inStockService.findInStockList(pageNum, pageSize, inStockVO);
        return ResponseBean.success(inStockList);
    }


    /**
     * 物资入库
     * @param inStockVO
     * @return
     */
    @ApiOperation(value = "物资入库")
    @PostMapping("/addIntoStock")
    public ResponseBean addIntoStock(@RequestBody @Validated InStockVO inStockVO){
        try {
            inStockService.addIntoStock(inStockVO);
            return ResponseBean.success("入库成功");
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseBean.error("入库失败");
        }
    }

    /**
     * 物资入库单详细
     * @param id
     * @return
     */
    @ApiOperation(value = "入库单明细")
    @GetMapping("/detail/{id}")
    public ResponseBean detail(@PathVariable Long id){
        InStockDetailVO detail = inStockService.detail(id);
        return ResponseBean.success(detail);
    }
}
