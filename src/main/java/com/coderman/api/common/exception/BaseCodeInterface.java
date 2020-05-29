package com.coderman.api.common.exception;

/**
 * 自定义的错误描述枚举类需实现该接口
 * @Author zhangyukang
 * @Date 2020/3/1 14:49
 * @Version 1.0
 **/
public interface BaseCodeInterface {

    /** 错误码*/
    int getResultCode();

    /** 错误描述*/
    String getResultMsg();

}
