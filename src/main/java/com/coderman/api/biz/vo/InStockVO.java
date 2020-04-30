package com.coderman.api.biz.vo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * @Author zhangyukang
 * @Date 2020/3/19 09:52
 * @Version 1.0
 **/
@Data
public class InStockVO {

    private Long id;

    private String inNum;

    @NotNull(message = "入库单类型不能为空")
    private Integer type;

    private String operator;

    private Long supplierId;

    private String supplierName;

    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    private Date modified;

    /** 该入库单的总数**/
    private Integer productNumber;

    private String phone;

    @NotBlank(message = "入库备注不能为空")
    private String remark;

    private List<Object>products=new ArrayList<>();

    private Integer status;

}
