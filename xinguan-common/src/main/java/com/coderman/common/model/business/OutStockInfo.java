package com.coderman.common.model.business;

import lombok.Data;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Data
@Table(name = "biz_out_stock_info")
public class OutStockInfo {

    @Id
    private Long id;

    private String outNum;

    private String pNum;

    private Integer productNumber;

    private Date createTime;

    private Date modifiedTime;

}
