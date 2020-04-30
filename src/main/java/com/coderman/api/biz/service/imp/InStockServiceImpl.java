package com.coderman.api.biz.service.imp;

import com.coderman.api.biz.converter.InStockConverter;
import com.coderman.api.biz.mapper.*;
import com.coderman.api.biz.pojo.*;
import com.coderman.api.biz.service.InStockService;
import com.coderman.api.biz.vo.InStockDetailVO;
import com.coderman.api.biz.vo.InStockItemVO;
import com.coderman.api.biz.vo.InStockVO;
import com.coderman.api.biz.vo.SupplierVO;
import com.coderman.api.system.bean.ActiveUser;
import com.coderman.api.system.enums.ErrorCodeEnum;
import com.coderman.api.system.exception.BizException;
import com.coderman.api.system.vo.PageVO;
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

    @Override
    public void add(InStockVO inStockVO) {

    }

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
    public InStockDetailVO detail(Long id) {
        InStockDetailVO inStockDetailVO = new InStockDetailVO();
        InStock inStock = inStockMapper.selectByPrimaryKey(id);
        if(inStock==null){
            throw new BizException("入库单不存在");
        }
        BeanUtils.copyProperties(inStock,inStockDetailVO);
        Supplier supplier = supplierMapper.selectByPrimaryKey(inStock.getSupplierId());
        if(supplier==null){
            throw new BizException("提供物资方不存在,或已被删除");
        }
        SupplierVO supplierVO = new SupplierVO();
        BeanUtils.copyProperties(supplier,supplierVO);
        inStockDetailVO.setSupplierVO(supplierVO);
        String inNum = inStock.getInNum();//入库单号
        //查询该单所有的物资
        Example o = new Example(InStockInfo.class);
        o.createCriteria().andEqualTo("inNum",inNum);
        List<InStockInfo> inStockInfoList = inStockInfoMapper.selectByExample(o);
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
                    throw new BizException("编号为:["+pNum+"]的物资找不到,或已被删除");
                }
            }
        }else {
            throw new BizException("入库编号为:["+inNum+"]的明细找不到,或已被删除");
        }
        return inStockDetailVO;
    }

    @Override
    public void update(Long id, InStockVO inStockVO) {

    }

    @Override
    public void delete(Long id) {
        InStock in = new InStock();
        in.setId(id);
        InStock inStock = inStockMapper.selectByPrimaryKey(in);
        if(inStock==null){
            throw new BizException("入库单不存在");
        }else {
            int i = inStockMapper.deleteByPrimaryKey(id);
            System.out.println(i);
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
    public void addIntoStock(InStockVO inStockVO) {
        String IN_STOCK_NUM = UUID.randomUUID().toString().substring(0, 32);
        int itemNumber=0;//记录该单的总数
        InStock inStock = new InStock();
        BeanUtils.copyProperties(inStockVO,inStock);
        inStock.setCreateTime(new Date());
        inStock.setModified(new Date());

        //获取商品的明细
        List<Object> products = inStockVO.getProducts();
        if(!CollectionUtils.isEmpty(products)) {
            for (Object product : products) {
                LinkedHashMap item = (LinkedHashMap) product;
                Integer productId = (Integer) item.get("productId");
                int productNumber = (int) item.get("productNumber");
                Product dbProduct = productMapper.selectByPrimaryKey(productId);
                if (dbProduct == null) {
                    throw new BizException(ErrorCodeEnum.PRODUCT_NOT_FOUND);
                }else if(dbProduct.getStatus()==1) {
                    throw new BizException(ErrorCodeEnum.PRODUCT_IS_REMOVE, dbProduct.getName() + "物资已被回收,无法入库");
                } else if(dbProduct.getStatus()==2){
                    throw new BizException(ErrorCodeEnum.PRODUCT_WAIT_PASS, dbProduct.getName() + "物资待审核,无法入库");
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
            inStock.setProductNumber(itemNumber);
            ActiveUser activeUser = (ActiveUser) SecurityUtils.getSubject().getPrincipal();
            inStock.setOperator(activeUser.getUser().getUsername());
            //生成入库单
            inStock.setInNum(IN_STOCK_NUM);
            inStock.setStatus(2);
            inStockMapper.insert(inStock);
        }

    }

    /**
     * 移入回收站
     * @param id
     */
    @Override
    public void remove(Long id) {
        InStock inStock = inStockMapper.selectByPrimaryKey(id);
        if(inStock==null){
            throw new BizException("入库单不存在");
        }
        Integer status = inStock.getStatus();
        //只有status=0,正常的情况下,才可移入回收站
        if(status!=0){
            throw new BizException("入库单状态不正确");
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
    public void back(Long id) {
        InStock t = new InStock();
        t.setId(id);
        InStock inStock = inStockMapper.selectByPrimaryKey(t);
        if(inStock.getStatus()!=1){
            throw new BizException("入库单状态不正确");
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
    public void publish(Long id) {
        InStock inStock = inStockMapper.selectByPrimaryKey(id);
        if(inStock==null){
            throw new BizException("入库单不存在");
        }
        if(inStock.getStatus()!=2){
            throw new BizException("入库单状态错误");
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
                    inStock.setStatus(0);
                    inStockMapper.updateByPrimaryKeySelective(inStock);
                }else {
                    throw new BizException("物资编号为:["+pNum+"]的物资不存在");
                }
            }
        }else {
            throw new BizException("入库的明细不能为空");
        }
    }
}
