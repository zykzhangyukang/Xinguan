package com.coderman.api.system.service.impl;

import com.coderman.api.system.converter.MenuConverter;
import com.coderman.api.system.mapper.MenuMapper;
import com.coderman.api.system.mapper.RoleMenuMapper;
import com.coderman.api.system.pojo.Menu;
import com.coderman.api.system.pojo.RoleMenu;
import com.coderman.api.system.service.MenuService;
import com.coderman.api.system.util.MenuTreeBuilder;
import com.coderman.api.system.vo.MenuNodeVO;
import com.coderman.api.system.vo.MenuVO;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;
import tk.mybatis.mapper.entity.Example;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @Author zhangyukang
 * @Date 2020/3/10 11:56
 * @Version 1.0
 **/
@Service
public class MenuServiceImpl implements MenuService {

    @Autowired
    private MenuMapper menuMapper;


    @Autowired
    private RoleMenuMapper roleMenuMapper;

    /**
     * 加载菜单树（按钮和菜单）
     * @return
     */
    @Override
    public List<MenuNodeVO> findMenuTree() {
        List<Menu> menus = menuMapper.selectAll();
        List<MenuNodeVO> menuNodeVOS = MenuConverter.converterToALLMenuNodeVO(menus);
        return MenuTreeBuilder.build(menuNodeVOS);
    }

    /**
     * 添加菜单
     * @param menuVO
     */
    @Override
    public Menu add(MenuVO menuVO) {
        Menu menu = new Menu();
        BeanUtils.copyProperties(menuVO,menu);
        menu.setCreateTime(new Date());
        menu.setModifiedTime(new Date());
        menu.setAvailable(menuVO.isDisabled()?0:1);
        menuMapper.insert(menu);
        return menu;
    }

    @Override
    public void delete(Long id) {
        menuMapper.deleteByPrimaryKey(id);
    }

    @Override
    public MenuVO edit(Long id) {
        Menu menu = menuMapper.selectByPrimaryKey(id);
        MenuVO menuVO = MenuConverter.converterToMenuVO(menu);
        return menuVO;
    }

    @Override
    public void update(Long id, MenuVO menuVO) {
        Menu menu = new Menu();
        BeanUtils.copyProperties(menuVO,menu);
        menu.setId(id);
        menu.setAvailable(menuVO.isDisabled()?0:1);
        menu.setModifiedTime(new Date());
        menuMapper.updateByPrimaryKeySelective(menu);
    }

    @Override
    public List<Long> findOpenIds() {
        List<Long> ids=new ArrayList<>();
        List<Menu> menus = menuMapper.selectAll();
        if(!CollectionUtils.isEmpty(menus)){
            for (Menu menu : menus) {
                if(menu.getOpen()==1){
                    ids.add(menu.getId());
                }
            }
        }
        return ids;
    }

    @Transactional
    @Override
    public void authority(Long id,Long[] mids) {
        //先删除原来的权限
        Example o = new Example(RoleMenu.class);
        o.createCriteria().andEqualTo("roleId",id);
        roleMenuMapper.deleteByExample(o);

        if(mids.length>0){
            for (Long mid : mids) {
                RoleMenu roleMenu = new RoleMenu();
                roleMenu.setRoleId(id);
                roleMenu.setMenuId(mid);
                roleMenuMapper.insertSelective(roleMenu);
            }
        }
    }

    /**
     * 获取所有菜单
     * @return
     */
    @Override
    public List<Menu> findAll() {
        return menuMapper.selectAll();
    }


}
