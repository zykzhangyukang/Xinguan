package com.coderman.common.model.business;

import lombok.Data;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Table(name = "biz_consumer")
@Data
public class Consumer {

    @Id
    @GeneratedValue(generator = "JDBC")
    private Long id;

    private String name;

    private String address;

    private Date createTime;

    private Date modifiedTime;

    private String phone;

    private  Integer sort;

    private String contact;
}
