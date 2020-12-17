package com.coderman.common.vo.system;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.List;
import java.util.Set;

/**
 * @Author zhangyukang
 * @Date 2020/3/7 17:02
 * @Version 1.0
 **/
@Data
@ApiModel(value = "用户登入信息")
public class UserInfoVO {

    @ApiModelProperty(value = "用户名")
    private String username;

    @ApiModelProperty(value = "昵称")
    private String nickname;

    @ApiModelProperty(value = "头像")
    private String avatar;

    @ApiModelProperty(value = "菜单")
    private Set<String> url;

    @ApiModelProperty(value = "权限")
    private Set<String> perms;

    @ApiModelProperty(value = "角色集合")
    private List<String> roles;

    @ApiModelProperty(value = "所在部门")
    private String department;

    @ApiModelProperty(value = "是否是超管")
    private Boolean isAdmin=false;

}
