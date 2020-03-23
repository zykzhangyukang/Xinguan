package com.coderman.api.system.realm;

import com.coderman.api.system.bean.ActiveUser;
import com.coderman.api.system.config.JWTToken;
import com.coderman.api.system.pojo.Menu;
import com.coderman.api.system.pojo.Role;
import com.coderman.api.system.pojo.User;
import com.coderman.api.system.service.UserService;
import com.coderman.api.system.util.JWTUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.List;

@Service
public class MyRealm extends AuthorizingRealm {

    @Autowired
    private UserService userService;

    /**
     * 大坑！，必须重写此方法，不然Shiro会报错
     */
    @Override
    public boolean supports(AuthenticationToken token) {
        return token instanceof JWTToken;
    }

    /**
     * 只有当需要检测用户权限的时候才会调用此方法，例如checkRole,checkPermission之类的
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {

        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
        ActiveUser activeUser = (ActiveUser) SecurityUtils.getSubject().getPrincipal();

        if(activeUser.getUser().getType()==0){
            authorizationInfo.addStringPermission("*:*");
        }else {
            List<Menu> menuList = activeUser.getMenus();
            List<Role> roleList = activeUser.getRoles();
            //授权角色
            if (!CollectionUtils.isEmpty(roleList)) {
                for (Role role : roleList) {
                    authorizationInfo.addRole(role.getRoleName());
                }
            }
            //授权权限
            if (!CollectionUtils.isEmpty(menuList)) {
                for (Menu menu : menuList) {
                    if (menu.getPerms() != null && !"".equals(menu.getPerms())) {
                        authorizationInfo.addStringPermission(menu.getPerms());
                    }
                }
            }
        }
        return authorizationInfo;
    }

    /**
     * 默认使用此方法进行用户名正确与否验证，错误抛出异常即可。
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken auth) throws AuthenticationException {
        String token = (String) auth.getCredentials();
        // 解密获得username，用于和数据库进行对比
        String username = JWTUtils.getUsername(token);
        if (username == null) {
            throw new AuthenticationException(" token失效，请重新登入！");
        }

        User userBean = userService.findUserByName(username);

        if (userBean == null) {
            throw new AuthenticationException("用户不存在!");
        }

        if (! JWTUtils.verify(token, username, userBean.getPassword())) {
            throw new AuthenticationException("用户名或密码错误!");
        }

        if(userBean.getStatus()==0){
            throw new AuthenticationException("该用户已被锁定!");
        }

        //如果验证通过，获取用户的角色
        List<Role> roles= userService.findRolesById(userBean.getId());
        //查询用户的所有菜单
        List<Menu> menus=userService.findMenuById(roles);

        ActiveUser activeUser = new ActiveUser();
        activeUser.setRoles(roles);
        activeUser.setMenus(menus);
        activeUser.setUser(userBean);

        return new SimpleAuthenticationInfo(activeUser, token, getName());
    }
}
