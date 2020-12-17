package com.coderman.controller.business;

import com.coderman.business.service.InStockService;
import com.coderman.business.service.SupplierService;
import com.coderman.common.annotation.ControllerEndpoint;
import com.coderman.common.error.BusinessCodeEnum;
import com.coderman.common.error.BusinessException;
import com.coderman.common.model.business.Supplier;
import com.coderman.common.response.ResponseBean;
import com.coderman.common.vo.business.InStockDetailVO;
import com.coderman.common.vo.business.InStockVO;
import com.coderman.common.vo.business.SupplierVO;
import com.coderman.common.vo.system.PageVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

/**
 * @Author zhangyukang
 * @Date 2020/3/19 09:53
 * @Version 1.0
 **/
@Api(tags = "业务模块-物资入库相关接口")
@RestController
@RequestMapping("/business/inStock")
public class InStockController {

    @Autowired
    private InStockService inStockService;

    @Autowired
    private SupplierService supplierService;

    /**
     * 入库单列表
     *
     * @param pageNum
     * @param pageSize
     * @param inStockVO
     * @return
     */
    @ApiOperation(value = "入库单列表")
    @GetMapping("/findInStockList")
    public ResponseBean findInStockList(
            @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
            @RequestParam(value = "pageSize") Integer pageSize,
            InStockVO inStockVO) {
        PageVO<InStockVO> inStockList = inStockService.findInStockList(pageNum, pageSize, inStockVO);
        return ResponseBean.success(inStockList);
    }


    /**
     * 物资入库
     * @param inStockVO
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "入库单申请失败", operation = "入库单申请")
    @ApiOperation(value = "物资入库")
    @PostMapping("/addIntoStock")
    @RequiresPermissions({"inStock:in"})
    public ResponseBean addIntoStock(@RequestBody @Validated InStockVO inStockVO) throws BusinessException {
        if(inStockVO.getSupplierId()==null){
            //说明现在添加物资来源
            SupplierVO supplierVO = new SupplierVO();
            BeanUtils.copyProperties(inStockVO,supplierVO);
            if("".equals(supplierVO.getName())||supplierVO.getName()==null){
                throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"物资提供方名不能为空");
            }
            if("".equals(supplierVO.getEmail())||supplierVO.getEmail()==null){
                throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"邮箱不能为空");
            }
            if("".equals(supplierVO.getContact())||supplierVO.getContact()==null){
                throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"联系人不能为空");
            }
            if("".equals(supplierVO.getAddress())||supplierVO.getAddress()==null){
                throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"地址不能为空");
            }
            if("".equals(supplierVO.getPhone())||supplierVO.getPhone()==null){
                throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"联系方式不能为空");
            }
            if(supplierVO.getSort()==null){
                throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"排序不能为空");
            }
            Supplier supplier = supplierService.add(supplierVO);
            inStockVO.setSupplierId(supplier.getId());
        }
        inStockService.addIntoStock(inStockVO);
        return ResponseBean.success();
    }
    /**
     * 入库审核
     * @param id
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "入库单审核失败", operation = "入库单审核")
    @ApiOperation(value = "入库审核")
    @PutMapping("/publish/{id}")
    @RequiresPermissions({"inStock:publish"})
    public ResponseBean publish(@PathVariable Long id) throws BusinessException {
        inStockService.publish(id);
        return ResponseBean.success();
    }

    /**
     * 物资入库单详细
     *
     * @param id
     * @return
     */
    @RequiresPermissions({"inStock:detail"})
    @ApiOperation(value = "入库单明细")
    @GetMapping("/detail/{id}")
    public ResponseBean detail(@PathVariable Long id,
                               @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
                               @RequestParam(value = "pageSize",defaultValue = "3") Integer pageSize) throws BusinessException {
        InStockDetailVO detail = inStockService.detail(id,pageNum,pageSize);
        return ResponseBean.success(detail);
    }
    /**
     * 删除物资入库单
     * @param id
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "入库单删除失败", operation = "入库单删除")
    @RequiresPermissions({"inStock:delete"})
    @ApiOperation(value = "删除物资入库单")
    @GetMapping("/delete/{id}")
    public ResponseBean delete(@PathVariable Long id) throws BusinessException {
        inStockService.delete(id);
        return ResponseBean.success();
    }

    /**
     * 移入回收站
     * @param id
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "入库单回收失败", operation = "入库单回收")
    @ApiOperation(value = "移入回收站", notes = "移入回收站")
    @RequiresPermissions({"inStock:remove"})
    @PutMapping("/remove/{id}")
    public ResponseBean remove(@PathVariable Long id) throws BusinessException {
        inStockService.remove(id);
        return ResponseBean.success();
    }

    /**
     * 恢复数据从回收站
     * @param id
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "入库单恢复失败", operation = "入库单恢复")
    @ApiOperation(value = "恢复数据", notes = "从回收站中恢复入库单")
    @RequiresPermissions({"inStock:back"})
    @PutMapping("/back/{id}")
    public ResponseBean back(@PathVariable Long id) throws BusinessException {
        inStockService.back(id);
        return ResponseBean.success();
    }
}
