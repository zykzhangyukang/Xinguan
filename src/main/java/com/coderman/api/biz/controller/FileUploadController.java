package com.coderman.api.biz.controller;

import com.coderman.api.biz.utils.CommonFileUtil;
import com.coderman.api.system.bean.ResponseBean;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

/**
 * 文件上传
 * @Author zhangyukang
 * @Date 2020/3/18 10:29
 * @Version 1.0
 **/
@Slf4j
@Api(tags = "文件上传接口")
@RestController
@RequestMapping("/upload")
public class FileUploadController {

    @Autowired
    private CommonFileUtil commonFileUtil;

    /**
     * 上传图片文件
     * @param file
     * @return
     */
    @ApiOperation(value = "上传图片")
    @RequiresPermissions({"upload:image"})
    @PostMapping("/image")
    public ResponseBean image(MultipartFile file){
        if(file.isEmpty()){
            return ResponseBean.error("文件为空");
        }
        String originalFilename = file.getOriginalFilename();
        assert originalFilename != null;
        String fileSuffix = originalFilename.substring(originalFilename.lastIndexOf("."));
        if(!fileSuffix.equalsIgnoreCase(".jpg") && !fileSuffix.equalsIgnoreCase(".png")){
            log.info("文件格式不正确");
            return ResponseBean.error("文件格式不正确");
        }
        try {
            String url = commonFileUtil.uploadFile(file);
            System.out.println(url);
            return ResponseBean.success(url);
        } catch (IOException e) {
            e.printStackTrace();
            return ResponseBean.error("上传文件错误");
        }
    }

}
