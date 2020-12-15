package com.coderman.common.model.business;

import lombok.Data;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Data
@Table(name = "biz_product")
public class Product {

    @Id
    private Long id;

    private String pNum;

    private String name;

    private String model;

    private String unit;

    private String remark;

    private Integer sort;

    private Date createTime;

    private Date modifiedTime;

    private Long oneCategoryId;

    private Long twoCategoryId;

    private Long threeCategoryId;

    private String imageUrl;

    private Integer status;

}
