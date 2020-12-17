package com.coderman.common.error;

/**
 * @Author zhangyukang
 * @Date 2020/12/16 13:00
 * @Version 1.0
 **/
public enum SystemCodeEnum  implements BaseError {
    PARAMETER_ERROR(50000,"参数不合法"),
    TOKEN_ERROR(50001,"用户未认证")
    ;

    /** 错误码 */
    private int errorCode;

    /** 错误描述 */
    private String errorMsg;

    SystemCodeEnum(int errorCode, String errorMsg) {
        this.errorCode = errorCode;
        this.errorMsg = errorMsg;
    }

    @Override
    public int getErrorCode() {
        return this.errorCode;
    }

    @Override
    public String getErrorMsg() {
        return this.errorMsg;
    }

    @Override
    public BaseError setErrorMsg(String errorMsg) {
        this.errorMsg=errorMsg;
        return this;
    }
}
