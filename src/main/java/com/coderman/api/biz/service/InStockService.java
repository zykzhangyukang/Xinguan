package com.coderman.api.biz.service;

import com.coderman.api.biz.vo.InStockDetailVO;
import com.coderman.api.biz.vo.InStockVO;
import com.coderman.api.system.vo.PageVO;

/**
 * @Author zhangyukang
 * @Date 2020/3/19 09:54
 * @Version 1.0
 **/
public interface InStockService {

    /**
     * 添加入库单
     * @param inStockVO
     */
    void add(InStockVO inStockVO);


    /**
     * 入库单列表
     * @param pageNum
     * @param pageSize
     * @param inStockVO
     * @return
     */
    PageVO<InStockVO> findInStockList(Integer pageNum, Integer pageSize, InStockVO inStockVO);


    /**
     * 入库单明细
     * @param id
     * @return
     */
    InStockDetailVO detail(Long id);

    /**
     * 更新入库单
     * @param id
     * @param inStockVO
     */
    void update(Long id, InStockVO inStockVO);

    /**
     * 删除入库单
     * @param id
     */
    void delete(Long id);

    /**
     * 物资入库
     * @param inStockVO
     */
    void addIntoStock(InStockVO inStockVO);
}
