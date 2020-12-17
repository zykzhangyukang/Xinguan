package com.coderman.common.error;

import lombok.Data;

/**
 * 业务异常
 * @Author zhangyukang
 * @Date 2020/3/1 14:47
 * @Version 1.0
 **/
@Data
public class BusinessException  extends Exception implements BaseError{

    //所有实现了BaseError的ErrorEnum.
    private BaseError baseError;

    //直接构造错误消息的构造异常
    public BusinessException(BaseError baseError){
        super(baseError.getErrorMsg());
        this.baseError=baseError;
    }

    //自定义错误消息的构造异常
    public BusinessException(BaseError baseError,String customErrorMessage){
        super();
        this.baseError=baseError;
        this.baseError.setErrorMsg(customErrorMessage);
    }

    @Override
    public int getErrorCode() {
        return this.baseError.getErrorCode();
    }

    @Override
    public String getErrorMsg() {
        return this.baseError.getErrorMsg();
    }

    @Override
    public BaseError setErrorMsg(String message) {
        this.baseError.setErrorMsg(message);
        return this;
    }
}
