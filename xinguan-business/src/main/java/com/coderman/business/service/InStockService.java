package com.coderman.business.service;


import com.coderman.common.error.BusinessException;
import com.coderman.common.vo.business.InStockDetailVO;
import com.coderman.common.vo.business.InStockVO;
import com.coderman.common.vo.system.PageVO;

/**
 * @Author zhangyukang
 * @Date 2020/3/19 09:54
 * @Version 1.0
 **/
public interface InStockService {

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
    InStockDetailVO detail(Long id, int pageNo, int pageSize) throws BusinessException;

    /**
     * 删除入库单
     * @param id
     */
    void delete(Long id) throws BusinessException;

    /**
     * 物资入库
     * @param inStockVO
     */
    void addIntoStock(InStockVO inStockVO) throws BusinessException;

    /**
     * 移入回收站
     * @param id
     */
    void remove(Long id) throws BusinessException;

    /**
     * 还原从回收站中
     * @param id
     */
    void back(Long id) throws BusinessException;

    /**
     * 入库审核
     * @param id
     */
    void publish(Long id) throws BusinessException;
}
