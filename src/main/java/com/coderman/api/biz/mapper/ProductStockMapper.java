package com.coderman.api.biz.mapper;

import com.coderman.api.common.pojo.biz.ProductStock;
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
    List<ProductStockVO> findProductStocks(ProductVO productVO);

    /**
     * 库存信息(饼图使用)
     * @return
     */
    List<ProductStockVO> findAllStocks(ProductVO productVO);
}
