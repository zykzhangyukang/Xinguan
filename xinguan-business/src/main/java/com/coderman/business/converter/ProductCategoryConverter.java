package com.coderman.business.converter;

import com.coderman.common.model.business.ProductCategory;
import com.coderman.common.vo.business.ProductCategoryTreeNodeVO;
import com.coderman.common.vo.business.ProductCategoryVO;
import org.springframework.beans.BeanUtils;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author zhangyukang
 * @Date 2020/3/16 17:26
 * @Version 1.0
 **/
public class ProductCategoryConverter {

    /**
     * 转vo
     * @param productCategory
     * @return
     */
    public static ProductCategoryVO converterToProductCategoryVO(ProductCategory productCategory) {
        ProductCategoryVO productCategoryVO = new ProductCategoryVO();
        BeanUtils.copyProperties(productCategory,productCategoryVO);
        return productCategoryVO;
    }

    /**
     * 转voList
     * @param productCategories
     * @return
     */
    public static List<ProductCategoryVO> converterToVOList(List<ProductCategory> productCategories) {
        List<ProductCategoryVO> productCategoryVOS=new ArrayList<>();
        if(!CollectionUtils.isEmpty(productCategories)){
            for (ProductCategory productCategory : productCategories) {
                ProductCategoryVO productCategoryVO = new ProductCategoryVO();
                BeanUtils.copyProperties(productCategory,productCategoryVO);
                productCategoryVOS.add(productCategoryVO);
            }
        }
        return productCategoryVOS;
    }

    /**
     * 转树节点
     * @param productCategoryVOList
     * @return
     */
    public static List<ProductCategoryTreeNodeVO> converterToTreeNodeVO(List<ProductCategoryVO> productCategoryVOList) {
        List<ProductCategoryTreeNodeVO> nodes=new ArrayList<>();
        if(!CollectionUtils.isEmpty(productCategoryVOList)){
            for (ProductCategoryVO productCategoryVO : productCategoryVOList) {
                ProductCategoryTreeNodeVO productCategoryTreeNodeVO = new ProductCategoryTreeNodeVO();
                BeanUtils.copyProperties(productCategoryVO,productCategoryTreeNodeVO);
                nodes.add(productCategoryTreeNodeVO);
            }
        }
        return nodes;
    }
}
