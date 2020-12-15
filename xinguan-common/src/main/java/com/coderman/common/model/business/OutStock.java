package com.coderman.common.model.business;

import lombok.Data;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Data
@Table(name = "biz_out_stock")
public class OutStock {

    @Id
    private Long id;

    private String outNum;

    private Integer type;

    private String operator;

    private Date createTime;

    private Integer productNumber;

    private Long consumerId;

    private String remark;

    private Integer status;

    private Integer priority;

}
