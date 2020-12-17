package com.coderman.system.service.impl;

import com.coderman.common.error.SystemCodeEnum;
import com.coderman.common.error.SystemException;
import com.coderman.common.model.system.ImageAttachment;
import com.coderman.common.utils.FdfsUtil;
import com.coderman.common.vo.system.ImageAttachmentVO;
import com.coderman.system.mapper.ImageAttachmentMapper;
import com.coderman.system.service.UploadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import tk.mybatis.mapper.entity.Example;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.List;

/**
 * @Author zhangyukang
 * @Date 2020/8/19 14:59
 * @Version 1.0
 **/
@Service
public class UploadServiceImpl implements UploadService {

    @Autowired
    private ImageAttachmentMapper attachmentMapper;

//    @Autowired
//    private FdfsConfig config;

    @Autowired
    private FdfsUtil fdfsUtil;

    @Override
    public String uploadImage(MultipartFile file) throws IOException, SystemException {
        if (file.isEmpty()) {
            throw new SystemException(SystemCodeEnum.PARAMETER_ERROR,"上传的文件不能为空");
        }
        InputStream inputStream = file.getInputStream();
        //文件的原名称
        long size = file.getSize();
        String originalFilename = file.getOriginalFilename();
        String fileExtName = originalFilename.substring(originalFilename.lastIndexOf(".") + 1);
        String path = fdfsUtil.upfileImage(inputStream, size, fileExtName.toUpperCase(), null);
        //保存图片信息到数据库
        BufferedImage image = ImageIO.read(file.getInputStream());
        if (image != null) {//如果image=null 表示上传的不是图片格式
            ImageAttachment imageAttachment = new ImageAttachment();
            imageAttachment.setCreateTime(new Date());
            imageAttachment.setHeight(image.getHeight());
            imageAttachment.setWidth(image.getWidth());
            imageAttachment.setMediaType(fileExtName);
            imageAttachment.setMediaType(file.getContentType());
            imageAttachment.setPath(path);
            attachmentMapper.insert(imageAttachment);
        }
        //TODO
        return  path;
    }

    @Override
    public List<ImageAttachment> findImageList(ImageAttachmentVO imageAttachmentVO) {
        Example o = new Example(ImageAttachment.class);
        Example.Criteria criteria = o.createCriteria();
        o.setOrderByClause("create_time desc");
        if (imageAttachmentVO.getMediaType() != null && !"".equals(imageAttachmentVO.getMediaType())) {
            criteria.andEqualTo("mediaType", imageAttachmentVO.getMediaType());
        }
        if (imageAttachmentVO.getPath() != null && !"".equals(imageAttachmentVO.getPath())) {
            criteria.andLike("path", "%" + imageAttachmentVO.getPath() + "%");
        }
        //拼装图片真实路径
        //        for (ImageAttachment attachment : attachments) {
//            attachment.setPath(config.getResHost()+attachment.getPath());
//        }
        return attachmentMapper.selectByExample(o);
    }

    @Override
    @Transactional
    public void delete(Long id) throws SystemException {
        ImageAttachment image = attachmentMapper.selectByPrimaryKey(id);
        if(image==null){
            throw new SystemException(SystemCodeEnum.PARAMETER_ERROR,"图片不存在");
        }else {
            attachmentMapper.deleteByPrimaryKey(id);
//            fdfsUtil.deleteFile(image.getPath());
        }
    }
}
