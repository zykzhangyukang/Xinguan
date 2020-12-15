package com.coderman.business.service.imp;

import com.coderman.business.converter.SupplierConverter;
import com.coderman.business.mapper.SupplierMapper;
import com.coderman.business.service.SupplierService;
import com.coderman.common.model.business.Supplier;
import com.coderman.common.vo.business.SupplierVO;
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
public class SupplierServiceImpl implements SupplierService {


    @Autowired
    private SupplierMapper supplierMapper;

    /**
     * 供应商列表
     * @param pageNum
     * @param pageSize
     * @param supplierVO
     * @return
     */
    @Override
    public PageVO<SupplierVO> findSupplierList(Integer pageNum, Integer pageSize, SupplierVO supplierVO) {
        PageHelper.startPage(pageNum, pageSize);
        Example o = new Example(Supplier.class);
        Example.Criteria criteria = o.createCriteria();
        o.setOrderByClause("sort asc");
        if (supplierVO.getName() != null && !"".equals(supplierVO.getName())) {
            criteria.andLike("name", "%" + supplierVO.getName() + "%");
        }
        if (supplierVO.getContact() != null && !"".equals(supplierVO.getContact())) {
            criteria.andLike("contact", "%" + supplierVO.getContact() + "%");
        }
        if (supplierVO.getAddress() != null && !"".equals(supplierVO.getAddress())) {
            criteria.andLike("address", "%" + supplierVO.getAddress() + "%");
        }
        List<Supplier> suppliers = supplierMapper.selectByExample(o);
        List<SupplierVO> categoryVOS= SupplierConverter.converterToVOList(suppliers);
        PageInfo<Supplier> info = new PageInfo<>(suppliers);
        return new PageVO<>(info.getTotal(), categoryVOS);
    }



    /**
     * 添加供应商
     * @param SupplierVO
     */
    @Override
    public Supplier add(SupplierVO SupplierVO) {
        Supplier supplier = new Supplier();
        BeanUtils.copyProperties(SupplierVO,supplier);
        supplier.setCreateTime(new Date());
        supplier.setModifiedTime(new Date());
        supplierMapper.insert(supplier);
        return supplier;
    }

    /**
     * 编辑供应商
     * @param id
     * @return
     */
    @Override
    public SupplierVO edit(Long id) {
        Supplier supplier = supplierMapper.selectByPrimaryKey(id);
        return SupplierConverter.converterToSupplierVO(supplier);
    }

    /**
     * 更新供应商
     * @param id
     * @param SupplierVO
     */
    @Override
    public void update(Long id, SupplierVO SupplierVO) {
        Supplier supplier = new Supplier();
        BeanUtils.copyProperties(SupplierVO,supplier);
        supplier.setModifiedTime(new Date());
        supplierMapper.updateByPrimaryKeySelective(supplier);
    }

    /**
     * 删除供应商
     * @param id
     */
    @Override
    public void delete(Long id) {
        supplierMapper.deleteByPrimaryKey(id);
    }

    /**
     * 查询所有
     * @return
     */
    @Override
    public List<SupplierVO> findAll() {
        List<Supplier> suppliers = supplierMapper.selectAll();
        return SupplierConverter.converterToVOList(suppliers);
    }

}
