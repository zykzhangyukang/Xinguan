package com.coderman.controller.system;


import com.coderman.common.error.SystemException;
import com.coderman.common.model.system.ImageAttachment;
import com.coderman.common.response.ResponseBean;
import com.coderman.common.vo.system.ImageAttachmentVO;
import com.coderman.system.service.UploadService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

/**
 * 文件上传
 * @Author zhangyukang
 * @Date 2020/3/18 10:29
 * @Version 1.0
 **/
@Slf4j
@Api(tags = "系统模块-文件上传相关接口")
@RestController
@RequestMapping("/system/upload")
public class UploadController {



    @Autowired
    private UploadService uploadService;

    /**
     * 上传图片文件
     * @param file
     * @return
     */
    @ApiOperation(value = "上传文件")
    @RequiresPermissions({"upload:image"})
    @PostMapping("/image")
    public ResponseBean<String> uploadImage(MultipartFile file) throws IOException, SystemException {
        String realPath=uploadService.uploadImage(file);
        return ResponseBean.success(realPath);
    }


    /**
     * 附件列表(图片)
     *
     * @return
     */
    @ApiOperation(value = "附件列表", notes = "模糊查询附件列表")
    @GetMapping("/findImageList")
    public ResponseBean<PageInfo<ImageAttachment>> findImageList(@RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
                                     @RequestParam(value = "pageSize", defaultValue = "8") Integer pageSize,
                                      ImageAttachmentVO imageAttachmentVO) {
        PageHelper.startPage(pageNum,pageSize);
        List<ImageAttachment> imageAttachmentVOList=uploadService.findImageList(imageAttachmentVO);
        PageInfo<ImageAttachment> pageInfo = new PageInfo<>(imageAttachmentVOList);
        return ResponseBean.success(pageInfo);
    }

    /**
     * 删除图片
     * @param id
     * @return
     */
    @ApiOperation(value = "删除图片", notes = "删除数据库记录,删除图片服务器上的图片")
    @RequiresPermissions("attachment:delete")
    @DeleteMapping("/delete/{id}")
    public ResponseBean delete(@PathVariable Long id) throws SystemException {
        uploadService.delete(id);
        return ResponseBean.success();
    }

}
