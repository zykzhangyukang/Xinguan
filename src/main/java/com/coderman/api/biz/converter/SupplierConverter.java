package com.coderman.api.biz.converter;

import com.coderman.api.common.pojo.biz.Supplier;
import com.coderman.api.biz.vo.SupplierVO;
import org.springframework.beans.BeanUtils;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author zhangyukang
 * @Date 2020/3/16 20:27
 * @Version 1.0
 **/
public class SupplierConverter {

    /**
     * 转voList
     * @param suppliers
     * @return
     */
    public static List<SupplierVO> converterToVOList(List<Supplier> suppliers) {
        List<SupplierVO> supplierVOS=new ArrayList<>();
        if(!CollectionUtils.isEmpty(suppliers)){
            for (Supplier supplier : suppliers) {
                SupplierVO supplierVO = converterToSupplierVO(supplier);
                supplierVOS.add(supplierVO);
            }
        }
        return supplierVOS;
    }


    /***
     * 转VO
     * @param supplier
     * @return
     */
    public static SupplierVO converterToSupplierVO(Supplier supplier) {
        SupplierVO supplierVO = new SupplierVO();
        BeanUtils.copyProperties(supplier,supplierVO);
        return supplierVO;
    }
}
