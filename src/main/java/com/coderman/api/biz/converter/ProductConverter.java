package com.coderman.api.biz.converter;

import com.coderman.api.biz.mapper.ProductStockMapper;
import com.coderman.api.biz.pojo.Product;
import com.coderman.api.biz.pojo.ProductStock;
import com.coderman.api.biz.vo.ProductVO;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.CollectionUtils;
import tk.mybatis.mapper.entity.Example;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author zhangyukang
 * @Date 2020/3/17 09:22
 * @Version 1.0
 **/
@Component
public class ProductConverter {

    @Autowired
    private ProductStockMapper productStockMapper;

    /**
     * 转VOList
     * @param products
     * @return
     */
    public  List<ProductVO> converterToVOList(List<Product> products) {
        List<ProductVO> productVOS=new ArrayList<>();
        if(!CollectionUtils.isEmpty(products)){
            for (Product product : products) {
                ProductVO productVO = converterToProductVO(product);
                //设置库存信息
                Example o = new Example(ProductStock.class);
                o.createCriteria().andEqualTo("pNum",product.getPNum());
                List<ProductStock> productStocks = productStockMapper.selectByExample(o);
                if(!CollectionUtils.isEmpty(productStocks)){
                    ProductStock productStock = productStocks.get(0);
                    productVO.setStock(productStock.getStock());
                }
                productVOS.add(productVO);
            }
        }
        return productVOS;
    }

    /**
     * 转VO
     * @param product
     * @return
     */
    public  ProductVO converterToProductVO(Product product) {
        ProductVO productVO = new ProductVO();
        BeanUtils.copyProperties(product,productVO);
        return productVO;
    }
}
