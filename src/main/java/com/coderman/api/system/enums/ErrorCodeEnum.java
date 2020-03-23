package com.coderman.api.system.enums;

import lombok.Getter;

/**
 * 业务错误码：返回结果的状态码
 * @Author zhangyukang
 * @Date 2020/3/1 14:51
 * @Version 1.0
 **/
@Getter
public enum  ErrorCodeEnum implements BaseCodeInterface {

    // 数据操作错误定义
    BODY_NOT_MATCH(400,"请求的数据格式不符!"),
    SIGNATURE_NOT_MATCH(401,"请求的数字签名不匹配!"),
    NOT_FOUND(404, "未找到该资源!"),
    INTERNAL_SERVER_ERROR(500, "服务器内部错误!"),
    SERVER_BUSY(503,"服务器正忙，请稍后再试!"),
    //系统异常2000**
    DATA_LOAD_ERROR(20001,"数据加载异常"),
    //用户相关：10000**
    PASSWORD_OR_USERNAME_ERROR(10001, "用户名或密码错误!"),
    DELETE_ERROR(10002,"删除失败"),
    UPDATE_ERROR(10003,"更新失败"),
    ADD_ERROR(10004,"添加失败");


    /** 错误码 */
    private int resultCode;

    /** 错误描述 */
    private String resultMsg;

    ErrorCodeEnum(int resultCode, String resultMsg) {
        this.resultCode = resultCode;
        this.resultMsg = resultMsg;
    }

}
