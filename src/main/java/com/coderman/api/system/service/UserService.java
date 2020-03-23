package com.coderman.api.system.service;

import com.coderman.api.system.pojo.Menu;
import com.coderman.api.system.pojo.Role;
import com.coderman.api.system.pojo.User;
import com.coderman.api.system.vo.MenuNodeVO;
import com.coderman.api.system.vo.PageVO;
import com.coderman.api.system.vo.UserEditVO;
import com.coderman.api.system.vo.UserVO;

import java.util.List;

/**
 * @Author zhangyukang
 * @Date 2020/3/7 15:43
 * @Version 1.0
 **/
public interface UserService {

    /**
     *  查询用户
     * @param name 用户名
     * @return
     */
     User findUserByName(String name);

    /**
     * 查询用户角色
     * @param id 用户ID
     * @return
     */
     List<Role> findRolesById(Long id);

    /**
     * 查询用户的权限(permissionCode)
     * @param roles 用户的角色
     * @return
     */
    List<Menu> findMenuById(List<Role> roles);

    /**
     * 加载用户菜单
     * @return
     */
    List<MenuNodeVO> findMenu();

    /**
     * 用户列表
     * @param userVO
     * @return
     */
    PageVO<UserVO> findUserList(Integer pageNum,Integer pageSize,UserVO userVO);

    /**
     * 删除
     * @param id
     */
    void deleteById(Long id);

    /**
     * 更新用户状态
     * @param id
     * @param status
     */
    void updateStatus(Long id, Boolean status);

    /**
     * 添加用户
     * @param userVO
     */
    void add(UserVO userVO);

    /**
     * 更新用户信息
     * @param id
     * @param userVO
     */
    void update(Long id,UserEditVO userVO);

    /**
     * 编辑用户
     * @param id
     * @return
     */
    UserEditVO edit(Long id);

    /**
     * 用户拥有的角色ID
     * @param id 用户id
     * @return
     */
    List<Long> roles(Long id);

    /**
     * 分配角色
     * @param id
     * @param rids
     */
    void assignRoles(Long id, Long[] rids);
}
