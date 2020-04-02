package com.coderman.api.system.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Data
@Table(name = "tb_log")
public class Log {

    @Id
    private Long id;

    private String username;

    private Long time;

    private String ip;

    @JsonFormat(pattern = "yyyy年MM月dd日 HH时mm分ss秒")
    private Date createTime;

    private String location;

    private String operation;

    private String method;

    private String params;
}