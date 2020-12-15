package com.coderman.common.model.business;

import lombok.Data;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Data
@Table(name = "biz_in_stock")
public class InStock {

    @Id
    private Long id;

    private String inNum;

    private Integer type;

    private String operator;

    private Long supplierId;

    private Date createTime;

    private Date modified;

    private Integer productNumber;

    private String remark;

    private Integer status;
}
