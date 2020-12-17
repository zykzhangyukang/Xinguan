package com.coderman.business.service;


import com.coderman.common.error.BusinessException;
import com.coderman.common.vo.business.ProductStockVO;
import com.coderman.common.vo.business.ProductVO;
import com.coderman.common.vo.system.PageVO;

import java.util.List;

/**
 * @Author zhangyukang
 * @Date 2020/3/16 17:18
 * @Version 1.0
 **/
public interface ProductService {

    /**
     * 添加商品
     * @param productVO
     */
    void add(ProductVO productVO);


    /**
     * 商品列表
     * @param pageNum
     * @param pageSize
     * @param productVO
     * @return
     */
    PageVO<ProductVO> findProductList(Integer pageNum, Integer pageSize, ProductVO productVO);


    /**
     * 编辑商品
     * @param id
     * @return
     */
    ProductVO edit(Long id);

    /**
     * 更新商品
     * @param id
     * @param productVO
     */
    void update(Long id, ProductVO productVO);

    /**
     * 删除商品
     * @param id
     */
    void delete(Long id) throws BusinessException;

    /**
     * 库存列表
     * @param pageNum
     * @param pageSize
     * @param productVO
     * @return
     */
    PageVO<ProductStockVO> findProductStocks(Integer pageNum, Integer pageSize, ProductVO productVO);

    /**
     * 所有库存信息
     * @return
     */
    List<ProductStockVO> findAllStocks(Integer pageNum, Integer pageSize, ProductVO productVO);

    /**
     * 移入回收站
     * @param id
     */
    void remove(Long id) throws BusinessException;

    /**
     * 从回收站恢复数据
     * @param id
     */
    void back(Long id) throws BusinessException;

    /**
     * 物资添加审核
     * @param id
     */
    void publish(Long id) throws BusinessException;


}
