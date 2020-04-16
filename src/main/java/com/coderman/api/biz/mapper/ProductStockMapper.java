package com.coderman.api.biz.mapper;

import com.coderman.api.biz.pojo.ProductStock;
import com.coderman.api.biz.vo.ProductStockVO;
import com.coderman.api.biz.vo.ProductVO;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

/**
 * @Author zhangyukang
 * @Date 2020/3/21 19:38
 * @Version 1.0
 **/
public interface ProductStockMapper extends Mapper<ProductStock> {

    /**
     * 库存列表
     * @param productVO
     * @return
     */
    List<ProductStockVO> selectProductStockList(ProductVO productVO);

    /**
     * 所有库存信息
     * @return
     */
    List<ProductStockVO> findAllStocks();
}
