package com.coderman.api.system.pojo;

import lombok.Data;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Data
@Table(name = "tb_menu")
public class Menu {
    @Id
    @GeneratedValue(generator = "JDBC")
    private Long id;

    private Long parentId;

    private String menuName;

    private String url;

    private String icon;

    private Integer open;

    private Integer type;

    private Long orderNum;

    private Date createTime;

    private Date modifiedTime;

    private Integer available;

    private String perms;
}