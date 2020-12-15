package com.coderman.common.model.system;

import lombok.Data;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Data
@Table(name = "tb_login_log")
public class LoginLog {
    @Id
    private Long id;

    private String username;

    private Date loginTime;

    private String location;

    private String ip;

    private String userSystem;

    private String userBrowser;

}
