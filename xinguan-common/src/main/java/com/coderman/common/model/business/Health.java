package com.coderman.common.model.business;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Data
@Table(name = "biz_health")
public class Health {

    @Id
    private Long id;

    private String address;

    private Long userId;

    private Integer situation;

    private Integer touch;

    private Integer passby;

    private Integer reception;

    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

}
