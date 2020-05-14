package com.coderman.api.biz.vo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

/**
 * @Author zhangyukang
 * @Date 2020/5/10 14:24
 * @Version 1.0
 **/
@Data
public class OutStockVO {

    private Long id;

    private String outNum;

    private Integer type;

    private String operator;

    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    private Integer productNumber;

    private Long consumerId;

    private String remark;

    private Integer status;

    private String consumerName;

    private String phone;

    private Integer priority;
}
