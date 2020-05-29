package com.coderman.api.system.service.impl;

import com.coderman.api.common.exception.ServiceException;
import com.coderman.api.common.pojo.system.Menu;
import com.coderman.api.common.pojo.system.Role;
import com.coderman.api.common.pojo.system.RoleMenu;
import com.coderman.api.system.converter.RoleConverter;
import com.coderman.api.system.enums.RoleStatusEnum;
import com.coderman.api.system.mapper.MenuMapper;
import com.coderman.api.system.mapper.RoleMapper;
import com.coderman.api.system.mapper.RoleMenuMapper;
import com.coderman.api.system.service.RoleService;
import com.coderman.api.system.vo.PageVO;
import com.coderman.api.system.vo.RoleVO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;
import tk.mybatis.mapper.entity.Example;

import javax.validation.constraints.NotBlank;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @Author zhangyukang
 * @Date 2020/3/9 16:23
 * @Version 1.0
 **/
@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleMapper roleMapper;

    @Autowired
    private RoleMenuMapper roleMenuMapper;


    @Autowired
    private MenuMapper menuMapper;

    /**
     * 角色列表
     * @param pageNum
     * @param pageSize
     * @param roleVO
     * @return
     */
    @Override
    public PageVO<RoleVO> findRoleList(Integer pageNum, Integer pageSize, RoleVO roleVO) {
        PageHelper.startPage(pageNum,pageSize);
        Example o = new Example(Role.class);
        String roleName = roleVO.getRoleName();
        if (roleName!=null&&!"".equals(roleName)){
            o.createCriteria().andLike("roleName","%"+roleName+"%");
        }
        List<Role> roles = roleMapper.selectByExample(o);
        List<RoleVO> roleVOS=RoleConverter.converterToRoleVOList(roles);
        PageInfo<Role> info=new PageInfo<>(roles);
        return new PageVO<>(info.getTotal(),roleVOS);
    }

    /**
     * 添加角色
     * @param roleVO
     */
    @Override
    public void add(RoleVO roleVO) {
        @NotBlank(message = "角色名必填") String roleName = roleVO.getRoleName();
        Example o = new Example(Role.class);
        o.createCriteria().andEqualTo("roleName",roleName);
        int i = roleMapper.selectCountByExample(o);
        if(i!=0){
            throw new ServiceException("该角色名已被占用");
        }
        Role role = new Role();
        BeanUtils.copyProperties(roleVO,role);
        role.setCreateTime(new Date());
        role.setModifiedTime(new Date());
        role.setStatus(RoleStatusEnum.AVAILABLE.getStatusCode());//默认启用添加的角色
        roleMapper.insert(role);
    }

    /**
     * 删除角色
     * @param id
     */
    @Transactional
    @Override
    public void deleteById(Long id) {
        Role role = roleMapper.selectByPrimaryKey(id);
        if(role==null){
            throw new ServiceException("要删除的角色不存在");
        }
        roleMapper.deleteByPrimaryKey(id);
        //删除对应的[角色-菜单]记录
        Example o = new Example(RoleMenu.class);
        o.createCriteria().andEqualTo("roleId",id);
        roleMenuMapper.deleteByExample(o);
    }

    /**
     * 编辑角色信息
     * @param id
     * @return
     */
    @Override
    public RoleVO edit(Long id) {
        Role role = roleMapper.selectByPrimaryKey(id);
        if(role==null){
            throw new ServiceException("编辑的角色不存在");
        }
        RoleVO roleVO = new RoleVO();
        BeanUtils.copyProperties(role,roleVO);
        return roleVO;
    }

    /**
     * 更新角色信息
     * @param id
     * @param roleVO
     */
    @Override
    public void update(Long id, RoleVO roleVO) {
        @NotBlank(message = "角色名必填") String roleName = roleVO.getRoleName();
        Role dbRole = roleMapper.selectByPrimaryKey(id);
        if(dbRole==null){
            throw new ServiceException("要更新的角色不存在");
        }
        Example o = new Example(Role.class);
        o.createCriteria().andEqualTo("roleName",roleName);
        List<Role> roles = roleMapper.selectByExample(o);
        if(!CollectionUtils.isEmpty(roles)){
            Role role = roles.get(0);
            if(!role.getId().equals(id)){
                throw new ServiceException("该角色名已被占用");
            }
        }
        Role role = new Role();
        BeanUtils.copyProperties(roleVO,role);
        role.setModifiedTime(new Date());
        roleMapper.updateByPrimaryKeySelective(role);
    }

    /**
     * 角色状态
     * @param id
     * @param status
     */
    @Override
    public void updateStatus(Long id, Boolean status) {
        Role role = roleMapper.selectByPrimaryKey(id);
        if(role==null){
            throw new ServiceException("角色不存在");
        }
        Role t = new Role();
        t.setId(id);
        t.setStatus(status?RoleStatusEnum.DISABLE.getStatusCode():
                RoleStatusEnum.AVAILABLE.getStatusCode());
        roleMapper.updateByPrimaryKeySelective(t);
    }

    @Override
    public List<Role> findAll() {
        return roleMapper.selectAll();
    }

    /**
     * 获取角色已有权限id
     * @param id
     * @return
     */
    @Override
    public List<Long> findMenuIdsByRoleId(Long id) {
        Role role = roleMapper.selectByPrimaryKey(id);
        if(role==null){
            throw new ServiceException("该角色已不存在");
        }
        List<Long> ids=new ArrayList<>();
        Example o = new Example(RoleMenu.class);
        o.createCriteria().andEqualTo("roleId",id);
        List<RoleMenu> roleMenus = roleMenuMapper.selectByExample(o);
        if(!CollectionUtils.isEmpty(roleMenus)){
            for (RoleMenu roleMenu : roleMenus) {
                ids.add(roleMenu.getMenuId());
            }
        }
        return ids;
    }

    /**
     * 角色授权
     * @param id
     * @param mids
     */
    @Transactional
    @Override
    public void authority(Long id,Long[] mids) {
        Role role = roleMapper.selectByPrimaryKey(id);
        if(role==null){
            throw new ServiceException("该角色不存在");
        }
        //先删除原来的权限
        Example o = new Example(RoleMenu.class);
        o.createCriteria().andEqualTo("roleId",id);
        roleMenuMapper.deleteByExample(o);
        //增加现在分配的角色
        if(mids.length>0){
            for (Long mid : mids) {
                Menu menu = menuMapper.selectByPrimaryKey(mid);
                if(menu==null){
                    throw new ServiceException("menuId="+mid+",菜单权限不存在");
                }else {
                    RoleMenu roleMenu = new RoleMenu();
                    roleMenu.setRoleId(id);
                    roleMenu.setMenuId(mid);
                    roleMenuMapper.insertSelective(roleMenu);
                }
            }
        }
    }

}
