package com.coderman.api.system.enums;

/**
 * 业务用户类型
 * @Author zhangyukang
 * @Date 2020/3/15 18:37
 * @Version 1.0
 **/
public enum  BizUserTypeEnum {

    TEACHER("老师"),
    STUDENT("学生"),
    DEAN("系主任");
    private String val;

    BizUserTypeEnum(String val) {
        this.val = val;
    }

    public String getVal() {
        return val;
    }

    public void setVal(String val) {
        this.val = val;
    }
}
