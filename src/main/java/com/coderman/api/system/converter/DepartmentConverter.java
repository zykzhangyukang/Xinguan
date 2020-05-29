package com.coderman.api.system.converter;

import com.coderman.api.common.pojo.system.Department;
import com.coderman.api.system.vo.DepartmentVO;
import org.springframework.beans.BeanUtils;

/**
 * @Author zhangyukang
 * @Date 2020/3/7 19:56
 * @Version 1.0
 **/
public class DepartmentConverter {


    /**
     * 转vo
     * @return
     */
    public static DepartmentVO converterToDepartmentVO(Department department){
        DepartmentVO departmentVO = new DepartmentVO();
        BeanUtils.copyProperties(department,departmentVO);
        return departmentVO;
    }
}
