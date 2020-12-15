package com.coderman.common.enums.system;

/**
 * @Author zhangyukang
 * @Date 2020/5/29 16:52
 * @Version 1.0
 **/


public enum  RoleStatusEnum {
    DISABLE(0),
    AVAILABLE(1);

    private int statusCode;

    RoleStatusEnum(int statusCode) {
        this.statusCode = statusCode;
    }

    public int getStatusCode() {
        return statusCode;
    }

    public void setStatusCode(int statusCode) {
        this.statusCode = statusCode;
    }
}
