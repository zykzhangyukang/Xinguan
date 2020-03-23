package com.coderman.api.biz.test;

import com.coderman.api.biz.mapper.ProductCategoryMapper;
import com.coderman.api.biz.pojo.ProductCategory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

/**
 * @Author zhangyukang
 * @Date 2020/3/16 18:25
 * @Version 1.0
 **/
@SpringBootTest
@RunWith(SpringRunner.class)
public class ProductCategoryMapperTest {

    @Autowired
    private ProductCategoryMapper productCategoryMapper;

    @Test
    public void getProductCategoryMapper(){
        List<ProductCategory> productCategories = productCategoryMapper.selectAll();
        System.out.println(productCategories);
    }
}
