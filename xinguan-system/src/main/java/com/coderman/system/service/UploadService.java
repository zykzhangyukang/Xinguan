package com.coderman.system.service;

import com.coderman.common.error.SystemException;
import com.coderman.common.model.system.ImageAttachment;
import com.coderman.common.vo.system.ImageAttachmentVO;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

/**
 * @Author zhangyukang
 * @Date 2020/8/19 14:57
 * @Version 1.0
 **/
public interface UploadService {
    String uploadImage(MultipartFile file) throws IOException, SystemException; //图片上传
    List<ImageAttachment> findImageList(ImageAttachmentVO imageAttachmentVO); //图片列表
    void delete(Long id) throws SystemException; //删除图片
}
