package com.coderman.business.service;


import com.coderman.common.model.business.Supplier;
import com.coderman.common.vo.business.SupplierVO;
import com.coderman.common.vo.system.PageVO;

import java.util.List;

/**
 * @Author zhangyukang
 * @Date 2020/3/16 17:18
 * @Version 1.0
 **/
public interface SupplierService {

    /**
     * 添加供应商
     * @param supplierVO
     */
    Supplier add(SupplierVO supplierVO);


    /**
     * 供应商列表
     * @param pageNum
     * @param pageSize
     * @param supplierVO
     * @return
     */
    PageVO<SupplierVO> findSupplierList(Integer pageNum, Integer pageSize, SupplierVO supplierVO);


    /**
     * 编辑供应商
     * @param id
     * @return
     */
    SupplierVO edit(Long id);

    /**
     * 更新供应商
     * @param id
     * @param supplierVO
     */
    void update(Long id, SupplierVO supplierVO);

    /**
     * 删除供应商
     * @param id
     */
    void delete(Long id);

    /**
     * 查询所有供应商
     * @return
     */
    List<SupplierVO> findAll();

}
