package com.coderman.common.model.business;

import lombok.Data;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Data
@Table(name = "biz_product_category")
public class ProductCategory {
    @Id
    private Long id;

    private String name;

    private String remark;

    private Integer sort;

    private Date createTime;

    private Date modifiedTime;

    private Long pid;

}
