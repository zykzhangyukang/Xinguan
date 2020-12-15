package com.coderman.system.converter;

import com.coderman.common.model.system.Menu;
import com.coderman.common.vo.system.MenuNodeVO;
import com.coderman.common.vo.system.MenuVO;
import org.springframework.beans.BeanUtils;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author zhangyukang
 * @Date 2020/3/7 17:22
 * @Version 1.0
 **/
public class MenuConverter {

    /**
     * 转成menuVO(只包含菜单)List
     * @param menus
     * @return
     */
    public static List<MenuNodeVO> converterToMenuNodeVO(List<Menu> menus){
        //先过滤出用户的菜单
        List<MenuNodeVO> menuNodeVOS=new ArrayList<>();
        if(!CollectionUtils.isEmpty(menus)){
            for (Menu menu : menus) {
                if(menu.getType()==0){
                    MenuNodeVO menuNodeVO = new MenuNodeVO();
                    BeanUtils.copyProperties(menu,menuNodeVO);
                    menuNodeVO.setDisabled(menu.getAvailable()==0);
                    menuNodeVOS.add(menuNodeVO);
                }
            }
        }
        return menuNodeVOS;
    }


    /**
     * 转成menuVO(菜单和按钮）
     * @param menus
     * @return
     */
    public static List<MenuNodeVO> converterToALLMenuNodeVO(List<Menu> menus){
        //先过滤出用户的菜单
        List<MenuNodeVO> menuNodeVOS=new ArrayList<>();
        if(!CollectionUtils.isEmpty(menus)){
            for (Menu menu : menus) {
                MenuNodeVO menuNodeVO = new MenuNodeVO();
                BeanUtils.copyProperties(menu,menuNodeVO);
                menuNodeVO.setDisabled(menu.getAvailable()==0);
                menuNodeVOS.add(menuNodeVO);
            }
        }
        return menuNodeVOS;
    }
    /**
     * 转成menuVO(菜单和按钮）
     * @param menu
     * @return
     */
    public static MenuVO converterToMenuVO(Menu menu){
        MenuVO menuVO = new MenuVO();
        if(menu!=null){
            BeanUtils.copyProperties(menu,menuVO);
            menuVO.setDisabled(menu.getAvailable()==0);
        }
        return menuVO;
    }

}
