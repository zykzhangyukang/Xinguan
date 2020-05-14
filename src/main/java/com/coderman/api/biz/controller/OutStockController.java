package com.coderman.api.biz.controller;

import com.coderman.api.biz.service.OutStockService;
import com.coderman.api.biz.vo.InStockVO;
import com.coderman.api.biz.vo.OutStockVO;
import com.coderman.api.system.bean.ResponseBean;
import com.coderman.api.system.vo.PageVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * 出库单
 * @Author zhangyukang
 * @Date 2020/5/10 14:23
 * @Version 1.0
 **/
@Api(tags = "物资出库接口")
@RestController
@RequestMapping("/outStock")
public class OutStockController {

    @Autowired
    private OutStockService outStockService;

    /**
     * 出库单列表
     * @param pageNum
     * @param pageSize
     * @param outStockVO
     * @return
     */
    @ApiOperation(value = "出库单列表")
    @GetMapping("/findOutStockList")
    public ResponseBean findInStockList(
            @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
            @RequestParam(value = "pageSize") Integer pageSize,
            OutStockVO outStockVO) {
        PageVO<OutStockVO> outStockList = outStockService.findOutStockList(pageNum, pageSize, outStockVO);
        return ResponseBean.success(outStockList);
    }

}
