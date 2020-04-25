package com.coderman.api.biz.pojo;

import lombok.Data;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Data
@Table(name = "biz_supplier")
public class Supplier {

    @Id
    private Long id;

    private String name;

    private String address;

    private String email;

    private String phone;

    private Date createTime;

    private Date modifiedTime;

    private Integer sort;

    private String contact;

}