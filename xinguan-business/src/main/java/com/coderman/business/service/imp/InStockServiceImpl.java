package com.coderman.business.service.imp;

import com.coderman.business.converter.InStockConverter;
import com.coderman.business.mapper.*;
import com.coderman.business.service.InStockService;
import com.coderman.common.error.BusinessCodeEnum;
import com.coderman.common.error.BusinessException;
import com.coderman.common.model.business.*;
import com.coderman.common.response.ActiveUser;
import com.coderman.common.vo.business.InStockDetailVO;
import com.coderman.common.vo.business.InStockItemVO;
import com.coderman.common.vo.business.InStockVO;
import com.coderman.common.vo.business.SupplierVO;
import com.coderman.common.vo.system.PageVO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;
import tk.mybatis.mapper.entity.Example;

import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.UUID;

/**
 * @Author zhangyukang
 * @Date 2020/3/19 09:56
 * @Version 1.0
 **/
@Transactional
@Service
public class InStockServiceImpl implements InStockService {

    @Autowired
    private InStockMapper inStockMapper;

    @Autowired
    private InStockConverter inStockConverter;

    @Autowired
    private ProductMapper productMapper;

    @Autowired
    private InStockInfoMapper inStockInfoMapper;

    @Autowired
    private ProductStockMapper productStockMapper;

    @Autowired
    private SupplierMapper supplierMapper;

    /**
     * 入库单
     * @param pageNum
     * @param pageSize
     * @param inStockVO
     * @return
     */
    @Override
    public PageVO<InStockVO> findInStockList(Integer pageNum, Integer pageSize, InStockVO inStockVO) {
        PageHelper.startPage(pageNum,pageSize);
        Example o = new Example(InStock.class);
        Example.Criteria criteria = o.createCriteria();
        o.setOrderByClause("create_time desc");
        if(inStockVO.getInNum()!=null&&!"".equals(inStockVO.getInNum())){
            criteria.andLike("inNum","%"+inStockVO.getInNum()+"%");
        }
        if(inStockVO.getType()!=null){
            criteria.andEqualTo("type",inStockVO.getType());
        }
        if(inStockVO.getStatus()!=null){
            criteria.andEqualTo("status",inStockVO.getStatus());
        }
        if(inStockVO.getStartTime()!=null){
            criteria.andGreaterThanOrEqualTo("createTime",inStockVO.getStartTime());
        }
        if(inStockVO.getEndTime()!=null){
            criteria.andLessThanOrEqualTo("createTime",inStockVO.getEndTime());
        }
        List<InStock> inStocks = inStockMapper.selectByExample(o);
        List<InStockVO> inStockVOS=inStockConverter.converterToVOList(inStocks);
        PageInfo<InStock> inStockPageInfo = new PageInfo<>(inStocks);
        return new PageVO<>(inStockPageInfo.getTotal(),inStockVOS);
    }

    /**
     * 入库单明细
     * @param id
     * @return
     */
    @Override
    public InStockDetailVO detail(Long id, int pageNum, int pageSize) throws BusinessException {
        InStockDetailVO inStockDetailVO = new InStockDetailVO();
        InStock inStock = inStockMapper.selectByPrimaryKey(id);
        if(inStock==null){
            throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"入库单不存在");
        }
        BeanUtils.copyProperties(inStock,inStockDetailVO);
        Supplier supplier = supplierMapper.selectByPrimaryKey(inStock.getSupplierId());
        if(supplier==null){
            throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"提供物资方不存在,或已被删除");
        }
        SupplierVO supplierVO = new SupplierVO();
        BeanUtils.copyProperties(supplier,supplierVO);
        inStockDetailVO.setSupplierVO(supplierVO);
        String inNum = inStock.getInNum();//入库单号
        //查询该单所有的物资
        Example o = new Example(InStockInfo.class);
        PageHelper.startPage(pageNum,pageSize);
        o.createCriteria().andEqualTo("inNum",inNum);
        List<InStockInfo> inStockInfoList = inStockInfoMapper.selectByExample(o);
        inStockDetailVO.setTotal(new PageInfo<>(inStockInfoList).getTotal());
        if(!CollectionUtils.isEmpty(inStockInfoList)){
            for (InStockInfo inStockInfo : inStockInfoList) {
                String pNum = inStockInfo.getPNum();
                //查出物资
                Example o1 = new Example(Product.class);
                o1.createCriteria().andEqualTo("pNum",pNum);
                List<Product> products = productMapper.selectByExample(o1);
                if(!CollectionUtils.isEmpty(products)){
                    Product product = products.get(0);
                    InStockItemVO inStockItemVO = new InStockItemVO();
                    BeanUtils.copyProperties(product,inStockItemVO);
                    inStockItemVO.setCount(inStockInfo.getProductNumber());
                    inStockDetailVO.getItemVOS().add(inStockItemVO);
                }else {
                    throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"编号为:["+pNum+"]的物资找不到,或已被删除");
                }
            }
        }else {
            throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"入库编号为:["+inNum+"]的明细找不到,或已被删除");
        }
        return inStockDetailVO;
    }


    @Override
    public void delete(Long id) throws BusinessException {
        InStock in = new InStock();
        in.setId(id);
        InStock inStock = inStockMapper.selectByPrimaryKey(in);
        //只有处于回收站,或者待审核的情况下可删除
        if(inStock==null){
            throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"入库单不存在");
        }else if(inStock.getStatus()!=1&&inStock.getStatus()!=2){
           throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"入库单状态错误,无法删除");
        }else {
            inStockMapper.deleteByPrimaryKey(id);
        }
        String inNum = inStock.getInNum();//单号
        Example o = new Example(InStockInfo.class);
        o.createCriteria().andEqualTo("inNum",inNum);
        inStockInfoMapper.deleteByExample(o);
    }

    /**
     * 物资入库
     * @param inStockVO
     */
    @Transactional
    @Override
    public  void addIntoStock(InStockVO inStockVO) throws BusinessException {
        //随机生成入库单号
        String IN_STOCK_NUM = UUID.randomUUID().toString().substring(0, 32).replace("-","");
        int itemNumber=0;//记录该单的总数
        //获取商品的明细
        List<Object> products = inStockVO.getProducts();
        if(!CollectionUtils.isEmpty(products)) {
            for (Object product : products) {
                LinkedHashMap item = (LinkedHashMap) product;
                //入库数量
                int productNumber = (int) item.get("productNumber");
                //物资编号
                Integer productId = (Integer) item.get("productId");
                Product dbProduct = productMapper.selectByPrimaryKey(productId);
                if (dbProduct == null) {
                    throw new BusinessException(BusinessCodeEnum.PRODUCT_NOT_FOUND);
                }else if(dbProduct.getStatus()==1) {
                    throw new BusinessException(BusinessCodeEnum.PRODUCT_IS_REMOVE, dbProduct.getName() + "物资已被回收,无法入库");
                } else if(dbProduct.getStatus()==2){
                    throw new BusinessException(BusinessCodeEnum.PRODUCT_WAIT_PASS, dbProduct.getName() + "物资待审核,无法入库");
                }else if(productNumber<=0){
                    throw new BusinessException(BusinessCodeEnum.PRODUCT_IN_STOCK_NUMBER_ERROR,dbProduct.getName()+"入库数量不合法,无法入库");
                } else {
                    itemNumber += productNumber;
                    //插入入库单明细
                    InStockInfo inStockInfo = new InStockInfo();
                    inStockInfo.setCreateTime(new Date());
                    inStockInfo.setModifiedTime(new Date());
                    inStockInfo.setProductNumber(productNumber);
                    inStockInfo.setPNum(dbProduct.getPNum());
                    inStockInfo.setInNum(IN_STOCK_NUM);
                    inStockInfoMapper.insert(inStockInfo);
                }
            }

            InStock inStock = new InStock();
            BeanUtils.copyProperties(inStockVO,inStock);
            inStock.setCreateTime(new Date());
            inStock.setModified(new Date());
            inStock.setProductNumber(itemNumber);
            ActiveUser activeUser = (ActiveUser) SecurityUtils.getSubject().getPrincipal();
            inStock.setOperator(activeUser.getUser().getUsername());
            //生成入库单
            inStock.setInNum(IN_STOCK_NUM);
            //设置为待审核
            inStock.setStatus(2);
            inStockMapper.insert(inStock);
        }else {
            throw new BusinessException(BusinessCodeEnum.PRODUCT_IN_STOCK_EMPTY);
        }
    }

    /**
     * 移入回收站
     * @param id
     */
    @Override
    public void remove(Long id) throws BusinessException {
        InStock inStock = inStockMapper.selectByPrimaryKey(id);
        if(inStock==null){
            throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"入库单不存在");
        }
        Integer status = inStock.getStatus();
        //只有status=0,正常的情况下,才可移入回收站
        if(status!=0){
            throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"入库单状态不正确");
        }else {
            InStock in = new InStock();
            in.setStatus(1);
            in.setId(id);
            inStockMapper.updateByPrimaryKeySelective(in);
        }
    }

    /**
     * 从回收站恢复数据
     * @param id
     */
    @Override
    public void back(Long id) throws BusinessException {
        InStock t = new InStock();
        t.setId(id);
        InStock inStock = inStockMapper.selectByPrimaryKey(t);
        if(inStock.getStatus()!=1){
            throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"入库单状态不正确");
        }else {
            t.setStatus(0);
            inStockMapper.updateByPrimaryKeySelective(t);
        }
    }

    /**
     * 物资入库审核
     * @param id
     */
    @Override
    public void publish(Long id) throws BusinessException {
        InStock inStock = inStockMapper.selectByPrimaryKey(id);
        Supplier supplier = supplierMapper.selectByPrimaryKey(inStock.getSupplierId());
        if(inStock==null){
            throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"入库单不存在");
        }
        if(inStock.getStatus()!=2){
            throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"入库单状态错误");
        }
        if(supplier==null){
            throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"入库来源信息错误");
        }
        String inNum = inStock.getInNum();//单号
        Example o = new Example(InStockInfo.class);
        o.createCriteria().andEqualTo("inNum",inNum);
        List<InStockInfo> infoList = inStockInfoMapper.selectByExample(o);
        if(!CollectionUtils.isEmpty(infoList)){
            for (InStockInfo inStockInfo : infoList) {
                String pNum = inStockInfo.getPNum();//物资编号
                Integer productNumber = inStockInfo.getProductNumber();//入库物资数
                Example o1 = new Example(Product.class);
                o1.createCriteria().andEqualTo("pNum",pNum);
                List<Product> products = productMapper.selectByExample(o1);
                if(products.size()>0){
                    Product product = products.get(0);
                    //入库如果存在，就增加数量，否则插入
                    Example o2 = new Example(ProductStock.class);
                    o2.createCriteria().andEqualTo("pNum",product.getPNum());
                    List<ProductStock> productStocks = productStockMapper.selectByExample(o2);
                    if(!CollectionUtils.isEmpty(productStocks)){
                        //更新数量
                        ProductStock productStock = productStocks.get(0);
                        productStock.setStock(productStock.getStock()+productNumber);
                        productStockMapper.updateByPrimaryKey(productStock);
                    }else {
                        //插入
                        ProductStock productStock = new ProductStock();
                        productStock.setPNum(product.getPNum());
                        productStock.setStock((long) productNumber);
                        productStockMapper.insert(productStock);
                    }
                    //修改入库单状态.
                    inStock.setCreateTime(new Date());
                    inStock.setStatus(0);
                    inStockMapper.updateByPrimaryKeySelective(inStock);
                }else {
                    throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"物资编号为:["+pNum+"]的物资不存在");
                }
            }
        }else {
            throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"入库的明细不能为空");
        }
    }
}
