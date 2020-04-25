package com.coderman.api.biz.vo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

/**
 * @Author zhangyukang
 * @Date 2020/4/5 09:53
 * @Version 1.0
 **/
@Data
public class ConsumerVO {


    private Long id;

    private String name;

    private String address;

    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    private Date modifiedTime;

    private String phone;

    private  Integer sort;

    private String contact;

}
