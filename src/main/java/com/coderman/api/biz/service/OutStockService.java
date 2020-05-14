package com.coderman.api.biz.service;

import com.coderman.api.biz.vo.OutStockVO;
import com.coderman.api.system.vo.PageVO;

/**
 * @Author zhangyukang
 * @Date 2020/5/10 14:26
 * @Version 1.0
 **/
public interface OutStockService {

    /**
     * 出库单列表
     * @param pageNum
     * @param pageSize
     * @param outStockVO
     * @return
     */
    PageVO<OutStockVO> findOutStockList(Integer pageNum, Integer pageSize, OutStockVO outStockVO);
}
