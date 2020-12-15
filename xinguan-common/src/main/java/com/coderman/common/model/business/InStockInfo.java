package com.coderman.common.model.business;

import lombok.Data;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Data
@Table(name = "biz_in_stock_info")
public class InStockInfo {

    @Id
    private Long id;

    private String inNum;

    private String pNum;

    private Integer productNumber;

    private Date createTime;

    private Date modifiedTime;

}
