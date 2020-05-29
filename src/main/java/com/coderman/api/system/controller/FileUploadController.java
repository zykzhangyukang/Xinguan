package com.coderman.api.system.controller;

import com.coderman.api.common.utils.CommonFileUtil;
import com.coderman.api.system.bean.ResponseBean;
import com.coderman.api.system.mapper.ImageAttachmentMapper;
import com.coderman.api.common.pojo.system.ImageAttachment;
import com.coderman.api.system.vo.ImageAttachmentVO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import tk.mybatis.mapper.entity.Example;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Date;
import java.util.List;

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

    @Autowired
    private ImageAttachmentMapper imageAttachmentMapper;

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
        if(!fileSuffix.equalsIgnoreCase(".gif")
                &&!fileSuffix.equalsIgnoreCase(".jpg")
                && !fileSuffix.equalsIgnoreCase(".png")
                && !fileSuffix.equalsIgnoreCase(".webp")){
            log.info("文件格式不正确");
            return ResponseBean.error("文件格式不正确");
        }
        try {
            String url = commonFileUtil.uploadFile(file);
            ImageAttachment t = new ImageAttachment();
            t.setPath(url);
            t.setCreateTime(new Date());
            t.setMediaType(file.getContentType());
            t.setSuffix(fileSuffix);
            t.setSize(file.getSize());
            BufferedImage bufferedImage = ImageIO.read(file.getInputStream()); // 通过临时文件获取图片流
            if(bufferedImage!=null){
                int width = bufferedImage.getWidth();
                int height = bufferedImage.getHeight();
                t.setHeight(height);
                t.setWidth(width);
            }
            imageAttachmentMapper.insert(t);
            log.info("[上传文件]=>{}",url);
            return ResponseBean.success(url);
        } catch (IOException e) {
            e.printStackTrace();
            return ResponseBean.error("上传文件错误");
        }
    }


    /**
     * 附件列表(图片)
     *
     * @return
     */
    @ApiOperation(value = "附件列表", notes = "模糊查询附件列表")
    @GetMapping("/findImageList")
    public ResponseBean findImageList(@RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
                                     @RequestParam(value = "pageSize", defaultValue = "8") Integer pageSize,
                                      ImageAttachmentVO imageAttachmentVO) {
        PageHelper.startPage(pageNum,pageSize);
        Example o = new Example(ImageAttachment.class);
        Example.Criteria criteria = o.createCriteria();
        o.setOrderByClause("create_time desc");
        if(imageAttachmentVO!=null){
            if(imageAttachmentVO.getMediaType()!=null&&!"".equalsIgnoreCase(imageAttachmentVO.getMediaType())){
                criteria.andEqualTo("mediaType",imageAttachmentVO.getMediaType());
            }
            if(imageAttachmentVO.getPath()!=null&&!"".equalsIgnoreCase(imageAttachmentVO.getPath())){
                criteria.andLike("path","%"+imageAttachmentVO.getPath()+"%");
            }
            if(imageAttachmentVO.getSuffix()!=null&&!"".equalsIgnoreCase(imageAttachmentVO.getSuffix())){
                criteria.andEqualTo("suffix",imageAttachmentVO.getSuffix());
            }
        }
        List<ImageAttachment> imageAttachments = imageAttachmentMapper.selectByExample(o);
        PageInfo<ImageAttachment> imageAttachmentPageInfo = new PageInfo<>(imageAttachments);
        return ResponseBean.success(imageAttachmentPageInfo);
    }

    /**
     * 删除图片
     * @param id
     * @return
     */
    @ApiOperation(value = "删除图片", notes = "删除数据库记录,删除图片服务器上的图片")
    @RequiresPermissions("image:delete")
    @DeleteMapping("/delete/{id}")
    public ResponseBean delete(@PathVariable Long id){
        ImageAttachment imageAttachment = imageAttachmentMapper.selectByPrimaryKey(id);
        imageAttachmentMapper.deleteByPrimaryKey(id);
        commonFileUtil.deleteFile(imageAttachment.getPath());
        return ResponseBean.success();
    }

}
