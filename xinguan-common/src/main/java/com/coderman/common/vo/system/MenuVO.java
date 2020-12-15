package com.coderman.common.vo.system;

import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.Date;

/**
 * @Author zhangyukang
 * @Date 2020/3/10 11:52
 * @Version 1.0
 **/
@Data
public class MenuVO {

    private Long id;

    @NotNull(message = "父级ID必须")
    private Long parentId;

    @NotBlank(message = "菜单名称不能为空")
    private String menuName;

    private String url;

    private String icon;

    @NotNull(message = "菜单类型不为空")
    private Integer type;

    @NotNull(message = "排序数不能为空")
    private Long orderNum;

    private Date createTime;

    private Date modifiedTime;

    @NotNull(message = "菜单状态不能为空")
    private boolean disabled;

    private Integer open;

    private String perms;
}
