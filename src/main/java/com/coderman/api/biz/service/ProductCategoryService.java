package com.coderman.api.biz.service;

import com.coderman.api.biz.vo.ProductCategoryTreeNodeVO;
import com.coderman.api.biz.vo.ProductCategoryVO;
import com.coderman.api.system.vo.PageVO;

import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.List;

/**
 * @Author zhangyukang
 * @Date 2020/3/16 17:18
 * @Version 1.0
 **/
public interface ProductCategoryService {

    /**
     * 添加物资类别
     * @param ProductCategoryVO
     */
    void add(ProductCategoryVO ProductCategoryVO);


    /**
     * 部门列表
     * @param pageNum
     * @param pageSize
     * @param ProductCategoryVO
     * @return
     */
    PageVO<ProductCategoryVO> findProductCategoryList(Integer pageNum, Integer pageSize, ProductCategoryVO ProductCategoryVO);


    /**
     * 编辑物资类别
     * @param id
     * @return
     */
    ProductCategoryVO edit(Long id);

    /**
     * 更新物资类别
     * @param id
     * @param ProductCategoryVO
     */
    void update(Long id, ProductCategoryVO ProductCategoryVO);

    /**
     * 删除物资类别
     * @param id
     */
    void delete(Long id);

    /**
     * 查询所物资类别
     * @return
     */
    List<ProductCategoryVO> findAll();

    /**
     * 分类树形
     * @return
     */
    PageVO<ProductCategoryTreeNodeVO> categoryTree(Integer pageNum,Integer pageSize);

    /**
     * 获取父级分类（2级树）
     * @return
     */
    List<ProductCategoryTreeNodeVO> getParentCategoryTree();

}
