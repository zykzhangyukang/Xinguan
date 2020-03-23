package com.coderman.api.system.pojo;

import lombok.Data;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Data
@Table(name = "tb_department")
public class Department {
    @Id
    private Long id;

    private String name;

    private String phone;

    private String address;

    private Date createTime;

    private Date modifiedTime;

    private Long mgrId;
}