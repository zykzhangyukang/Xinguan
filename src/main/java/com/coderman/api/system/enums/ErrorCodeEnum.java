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
    //用户相关：10000**
    USER_ACCOUNT_NOT_FOUND(10001, "账号不存在!"),
    DELETE_ERROR(10002,"删除失败"),
    UPDATE_ERROR(10003,"更新失败"),
    ADD_ERROR(10004,"添加失败"),
    //业务异常
    PRODUCT_IS_REMOVE(30001,"物资已移入回收站"),
    PRODUCT_NOT_FOUND(30002,"物资找不到"),
    PRODUCT_WAIT_PASS(30003,"物资等待审核"),
    PRODUCT_STATUS_ERROR(30004,"物资状态错误"),
    ;



    /** 错误码 */
    private int resultCode;

    /** 错误描述 */
    private String resultMsg;

    ErrorCodeEnum(int resultCode, String resultMsg) {
        this.resultCode = resultCode;
        this.resultMsg = resultMsg;
    }

}
