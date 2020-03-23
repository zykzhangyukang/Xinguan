package com.coderman.api.system.vo;

import com.coderman.api.system.pojo.Menu;
import com.coderman.api.system.pojo.Role;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author zhangyukang
 * @Date 2020/3/7 17:02
 * @Version 1.0
 **/
@Data
public class UserInfoVO {

    private String username;

    private String avatar;

    private List<Menu> menus=new ArrayList<>();

    private List<Role> roles=new ArrayList<>();
}
