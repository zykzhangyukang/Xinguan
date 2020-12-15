package com.coderman.common.vo.system;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import javax.persistence.Id;
import java.util.Date;

/**
 * Created by zhangyukang on 2019/11/15 17:29
 */
@Data
public class LogVO {
    @Id
    private Long id;

    private String username;

    private Long time;

    private String ip;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    private String location;

    private String operation;

    private String method;

    private String params;
}
