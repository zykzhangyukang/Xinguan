package com.coderman.business.service.imp;

import com.coderman.business.converter.ProductCategoryConverter;
import com.coderman.business.mapper.ProductCategoryMapper;
import com.coderman.business.mapper.ProductMapper;
import com.coderman.business.service.ProductCategoryService;
import com.coderman.common.error.BusinessCodeEnum;
import com.coderman.common.error.BusinessException;
import com.coderman.common.model.business.Product;
import com.coderman.common.model.business.ProductCategory;
import com.coderman.common.utils.CategoryTreeBuilder;
import com.coderman.common.utils.ListPageUtils;
import com.coderman.common.vo.business.ProductCategoryTreeNodeVO;
import com.coderman.common.vo.business.ProductCategoryVO;
import com.coderman.common.vo.system.PageVO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.Date;
import java.util.List;

/**
 * @Author zhangyukang
 * @Date 2020/3/16 17:19
 * @Version 1.0
 **/
@Service
public class ProductCategoryServiceImpl implements ProductCategoryService {


    @Autowired
    private ProductCategoryMapper productCategoryMapper;

    @Autowired
    private ProductMapper productMapper;

    /**
     * 商品类别列表
     * @param pageNum
     * @param pageSize
     * @param ProductCategoryVO
     * @return
     */
    @Override
    public PageVO<ProductCategoryVO> findProductCategoryList(Integer pageNum, Integer pageSize, ProductCategoryVO ProductCategoryVO) {
        PageHelper.startPage(pageNum, pageSize);
        Example o = new Example(ProductCategory.class);
        Example.Criteria criteria = o.createCriteria();
        o.setOrderByClause("sort asc");
        if (ProductCategoryVO.getName() != null && !"".equals(ProductCategoryVO.getName())) {
            criteria.andLike("name", "%" + ProductCategoryVO.getName() + "%");
        }
        List<ProductCategory> productCategories = productCategoryMapper.selectByExample(o);
        List<ProductCategoryVO> categoryVOS= ProductCategoryConverter.converterToVOList(productCategories);
        PageInfo<ProductCategory> info = new PageInfo<>(productCategories);

        return new PageVO<>(info.getTotal(), categoryVOS);
    }


    /**
     * 添加商品类别
     * @param ProductCategoryVO
     */
    @Override
    public void add(ProductCategoryVO ProductCategoryVO) {
        ProductCategory productCategory = new ProductCategory();
        BeanUtils.copyProperties(ProductCategoryVO,productCategory);
        productCategory.setCreateTime(new Date());
        productCategory.setModifiedTime(new Date());
        productCategoryMapper.insert(productCategory);
    }

    /**
     * 编辑商品类别
     * @param id
     * @return
     */
    @Override
    public ProductCategoryVO edit(Long id) {
        ProductCategory productCategory = productCategoryMapper.selectByPrimaryKey(id);
        return  ProductCategoryConverter.converterToProductCategoryVO(productCategory);
    }

    /**
     * 更新商品类别
     * @param id
     * @param ProductCategoryVO
     */
    @Override
    public void update(Long id, ProductCategoryVO ProductCategoryVO) {
        ProductCategory productCategory = new ProductCategory();
        BeanUtils.copyProperties(ProductCategoryVO,productCategory);
        productCategory.setModifiedTime(new Date());
        productCategoryMapper.updateByPrimaryKeySelective(productCategory);
    }

    /**
     * 删除商品类别
     * @param id
     */
    @Override
    public void delete(Long id) throws BusinessException {
        ProductCategory category = productCategoryMapper.selectByPrimaryKey(id);
        if(null==category){
            throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"该分类不存在");
        }else {
            //检查是否存在子分类
            Example o = new Example(ProductCategory.class);
            o.createCriteria().andEqualTo("pid",id);
            int childCount=productCategoryMapper.selectCountByExample(o);
            if(childCount!=0){
                throw  new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"存在子节点,无法直接删除");
            }
            //检查该分类是否有物资引用
            Example o1 = new Example(Product.class);
            o1.createCriteria().andEqualTo("oneCategoryId",id)
                    .orEqualTo("twoCategoryId",id)
                    .orEqualTo("threeCategoryId",id);
           if(productMapper.selectCountByExample(o1)!=0){
               throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"该分类存在物资引用,无法直接删除");
           }
            productCategoryMapper.deleteByPrimaryKey(id);
        }
    }

    /**
     * 所有商品类别
     * @return
     */
    @Override
    public List<ProductCategoryVO> findAll() {
        List<ProductCategory> productCategories = productCategoryMapper.selectAll();
        return ProductCategoryConverter.converterToVOList(productCategories);
    }

    /**
     * 分类树形结构
     * @return
     */
    @Override
    public PageVO<ProductCategoryTreeNodeVO> categoryTree(Integer pageNum, Integer pageSize) {
        List<ProductCategoryVO> productCategoryVOList = findAll();
        List<ProductCategoryTreeNodeVO> nodeVOS=ProductCategoryConverter.converterToTreeNodeVO(productCategoryVOList);
        List<ProductCategoryTreeNodeVO> tree = CategoryTreeBuilder.build(nodeVOS);
        List<ProductCategoryTreeNodeVO> page;
        if(pageSize!=null&&pageNum!=null){
            page= ListPageUtils.page(tree, pageSize, pageNum);
            return new PageVO<>(tree.size(),page);
        }else {
            return new PageVO<>(tree.size(), tree);
        }
    }

    /**
     * 获取父级分类（2级树）
     * @return
     */
    @Override
    public List<ProductCategoryTreeNodeVO> getParentCategoryTree() {
        List<ProductCategoryVO> productCategoryVOList = findAll();
        List<ProductCategoryTreeNodeVO> nodeVOS=ProductCategoryConverter.converterToTreeNodeVO(productCategoryVOList);
        return  CategoryTreeBuilder.buildParent(nodeVOS);
    }

}
