package com.coderman.api.biz.service;

import com.coderman.api.biz.vo.ProductVO;
import com.coderman.api.system.vo.PageVO;

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
    void delete(Long id);
}
