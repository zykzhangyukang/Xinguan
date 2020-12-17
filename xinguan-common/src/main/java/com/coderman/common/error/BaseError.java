package com.coderman.common.error;

/**
 * 自定义的错误描述枚举类需实现该接口
 * @Author zhangyukang
 * @Date 2020/3/1 14:49
 * @Version 1.0
 **/
public interface BaseError {

    /**
     * 获取错误码
     * @return
     */
    int getErrorCode();

    /**
     * 获取错误信息
     * @return
     */
    String getErrorMsg();


    /**
     * 设置错误信息
     * @param message
     * @return
     */
    BaseError setErrorMsg(String message);
}
