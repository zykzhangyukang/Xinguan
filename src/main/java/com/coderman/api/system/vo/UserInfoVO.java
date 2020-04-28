package com.coderman.api.system.vo;

import lombok.Data;

import java.util.List;
import java.util.Set;

/**
 * @Author zhangyukang
 * @Date 2020/3/7 17:02
 * @Version 1.0
 **/
@Data
public class UserInfoVO {

    private String username;

    private String nickname;

    private String avatar;

    private Set<String> url;

    private Set<String> perms;

    private List<String> roles;

    private String department;

    private Boolean isAdmin=false;

}
