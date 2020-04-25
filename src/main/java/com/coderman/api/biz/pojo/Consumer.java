package com.coderman.api.biz.pojo;

import lombok.Data;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Table(name = "biz_consumer")
@Data
public class Consumer {

    @Id
    private Long id;

    private String name;

    private String address;

    private Date createTime;

    private Date modifiedTime;

    private String phone;

    private  Integer sort;

    private String contact;
}