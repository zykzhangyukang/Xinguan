package com.coderman.common.response;

import com.coderman.common.model.system.Menu;
import com.coderman.common.model.system.Role;
import com.coderman.common.model.system.User;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
import java.util.Set;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ActiveUser {

    /**
     * 当前用户对象
     */
    private User user;
    /**
     * 当前用户具有的角色
     */
    private List<Role> roles;
    /**
     * 当前用户具有的url
     */
    private Set<String> urls;

    /**
     * 包括url+permission
     */
    private List<Menu> menus;
    /**
     * 当前用户具有的权限API:例如[user:add],[user:delete]...
     */
    private Set<String> permissions;

    /**
     * session id
     */
    private String id;
    /**
     * 用户 id
     */
    private String userId;
    /**
     * 用户名称
     */
    private String username;
    /**
     * 用户主机地址
     */
    private String host;
    /**
     * 用户登录时系统 IP
     */
    private String systemHost;
    /**
     * 状态
     */
    private String status;
    /**
     * session 创建时间
     */
    private String startTimestamp;
    /**
     * session 最后访问时间
     */
    private String lastAccessTime;
    /**
     * 超时时间
     */
    private Long timeout;
    /**
     * 所在地
     */
    private String location;
    /**
     * 是否为当前登录用户
     */
    private Boolean current;
}
