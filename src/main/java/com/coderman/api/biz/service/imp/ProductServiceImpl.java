package com.coderman.api.biz.service.imp;

import com.coderman.api.biz.converter.ProductConverter;
import com.coderman.api.biz.mapper.ProductMapper;
import com.coderman.api.biz.pojo.Product;
import com.coderman.api.biz.service.ProductService;
import com.coderman.api.biz.vo.ProductVO;
import com.coderman.api.system.vo.PageVO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * @Author zhangyukang
 * @Date 2020/3/16 17:19
 * @Version 1.0
 **/
@Service
public class ProductServiceImpl implements ProductService {


    @Autowired
    private ProductMapper productMapper;

    @Autowired
    private ProductConverter productConverter;

    /**
     * 商品列表
     * @param pageNum
     * @param pageSize
     * @param productVO
     * @return
     */
    @Override
    public PageVO<ProductVO> findProductList(Integer pageNum, Integer pageSize, ProductVO productVO) {
        PageHelper.startPage(pageNum, pageSize);
        List<Product> products;
        Example o = new Example(Product.class);
        o.setOrderByClause("sort asc");

        if (productVO.getName() != null && !"".equals(productVO.getName())) {
            o.createCriteria().andLike("name", "%" + productVO.getName() + "%");
        }
        if(productVO.getThreeCategoryId()!=null){
            o.createCriteria().andEqualTo("oneCategoryId",productVO.getOneCategoryId())
                    .andEqualTo("twoCategoryId",productVO.getTwoCategoryId())
                    .andEqualTo("threeCategoryId",productVO.getThreeCategoryId());
            products = productMapper.selectByExample(o);
            List<ProductVO> categoryVOS=productConverter.converterToVOList(products);
            PageInfo<Product> info = new PageInfo<>(products);
            return new PageVO<>(info.getTotal(), categoryVOS);
        }
        if(productVO.getTwoCategoryId()!=null){
            o.createCriteria().andEqualTo("oneCategoryId",productVO.getOneCategoryId())
                    .andEqualTo("twoCategoryId",productVO.getTwoCategoryId());
            products = productMapper.selectByExample(o);
            List<ProductVO> categoryVOS=productConverter.converterToVOList(products);
            PageInfo<Product> info = new PageInfo<>(products);
            return new PageVO<>(info.getTotal(), categoryVOS);
        }
        if(productVO.getOneCategoryId()!=null){
            o.createCriteria().andEqualTo("oneCategoryId",productVO.getOneCategoryId());
            products = productMapper.selectByExample(o);
            List<ProductVO> categoryVOS=productConverter.converterToVOList(products);
            PageInfo<Product> info = new PageInfo<>(products);
            return new PageVO<>(info.getTotal(), categoryVOS);
        }
        products = productMapper.selectByExample(o);
        List<ProductVO> categoryVOS=productConverter.converterToVOList(products);
        PageInfo<Product> info = new PageInfo<>(products);
        return new PageVO<>(info.getTotal(), categoryVOS);
    }



    /**
     * 添加商品
     * @param ProductVO
     */
    @Override
    public void add(ProductVO ProductVO) {
        Product product = new Product();
        BeanUtils.copyProperties(ProductVO,product);
        product.setCreateTime(new Date());
        product.setModifiedTime(new Date());
        @NotNull(message = "分类不能为空") Long[] categoryKeys = ProductVO.getCategoryKeys();
        if(categoryKeys.length==3){
            product.setOneCategoryId(categoryKeys[0]);
            product.setTwoCategoryId(categoryKeys[1]);
            product.setThreeCategoryId(categoryKeys[2]);
        }
        product.setPNum(UUID.randomUUID().toString().substring(0,32));
        productMapper.insert(product);
    }

    /**
     * 编辑商品
     * @param id
     * @return
     */
    @Override
    public ProductVO edit(Long id) {
        Product product = productMapper.selectByPrimaryKey(id);
        ProductVO productVO = productConverter.converterToProductVO(product);
        return productVO;
    }

    /**
     * 更新商品
     * @param id
     * @param ProductVO
     */
    @Override
    public void update(Long id, ProductVO ProductVO) {
        Product product = new Product();
        BeanUtils.copyProperties(ProductVO,product);
        product.setModifiedTime(new Date());
        @NotNull(message = "分类不能为空") Long[] categoryKeys = ProductVO.getCategoryKeys();
        if(categoryKeys.length==3){
            product.setOneCategoryId(categoryKeys[0]);
            product.setTwoCategoryId(categoryKeys[1]);
            product.setThreeCategoryId(categoryKeys[2]);
        }
        productMapper.updateByPrimaryKey(product);
    }

    /**
     * 删除商品
     * @param id
     */
    @Override
    public void delete(Long id) {
        productMapper.deleteByPrimaryKey(id);
    }

}
