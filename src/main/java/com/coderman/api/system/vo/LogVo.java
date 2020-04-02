package com.coderman.api.system.vo;

import com.coderman.api.system.pojo.Log;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import javax.persistence.Id;
import java.util.Date;

/**
 * Created by zhangyukang on 2019/11/15 17:29
 */
@Data
public class LogVo extends Log {
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
