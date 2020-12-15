package com.coderman.common.model.system;

import com.wuwenze.poi.annotation.Excel;
import com.wuwenze.poi.annotation.ExcelField;
import lombok.Data;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Data
@Excel("user")
@Table(name = "tb_user")
public class User {
    @Id
    @ExcelField(value = "编号", width = 50)
    private Long id;

    @ExcelField(value = "用户名", width = 100)
    private String username;

    @ExcelField(value = "昵称", width = 100)
    private String nickname;

    @ExcelField(value = "邮箱", width = 150)
    private String email;

    @ExcelField(value = "电话号码", width = 100)
    private String phoneNumber;

    private Integer status;

    @ExcelField(value = "创建时间", dateFormat = "yyyy年MM月dd日 HH:mm:ss", width = 180)
    private Date createTime;

    @ExcelField(value = "修改时间", dateFormat = "yyyy年MM月dd日 HH:mm:ss",width = 180)
    private Date modifiedTime;

    @ExcelField(//
            value = "性别",
            readConverterExp = "男=1,女=0",
            writeConverterExp = "1=男,0=女"
            ,width = 50
    )
    private Integer sex;

    @ExcelField(value = "密码盐值", width = 100)
    private String salt;

    @ExcelField(//
            value = "用户类型",
            readConverterExp = "超级管理员=0,普通用户=1",
            writeConverterExp = "0=超级管理员,1=普通用户"
            ,width = 80
    )
    private Integer type;

    @ExcelField(value = "用户密码", width = 100)
    private String password;

    @ExcelField(value = "出生日期", dateFormat = "yyyy/MM/dd",width = 100)
    private Date birth;

    private Long departmentId;

    @ExcelField(value = "头像url", width = 200)
    private String avatar;

}
