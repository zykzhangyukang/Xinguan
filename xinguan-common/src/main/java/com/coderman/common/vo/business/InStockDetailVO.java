package com.coderman.common.vo.business;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author zhangyukang
 * @Date 2020/3/20 16:51
 * @Version 1.0
 **/
@Data
public class InStockDetailVO {

    private String inNum;

    private Integer status;

    private Integer type;

    private String operator;

    private SupplierVO supplierVO;

    private long total;/** 总数**/

    private List<InStockItemVO> itemVOS=new ArrayList<>();

}


