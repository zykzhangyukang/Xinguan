package com.coderman.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

/**
 * @Author zhangyukang
 * @Date 2020/8/9 11:48
 * @Version 1.0
 **/
@Component
public class FdfsConfig {

    @Value("${fdfs.resHost}")
    private String resHost;

    @Value("${fdfs.storagePort}")
    private String storagePort;

    public String getResHost() {
        return resHost;
    }

    public void setResHost(String resHost) {
        this.resHost = resHost;
    }

    public String getStoragePort() {
        return storagePort;
    }

    public void setStoragePort(String storagePort) {
        this.storagePort = storagePort;
    }

}
