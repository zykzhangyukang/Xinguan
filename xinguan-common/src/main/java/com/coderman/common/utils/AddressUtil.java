package com.coderman.common.utils;

import org.apache.commons.io.IOUtils;
import org.lionsoul.ip2region.DataBlock;
import org.lionsoul.ip2region.DbConfig;
import org.lionsoul.ip2region.DbSearcher;
import org.lionsoul.ip2region.Util;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.ClassPathResource;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;

/**
 * @author zhangyukang
 */
public class AddressUtil {

    private static Logger log = LoggerFactory.getLogger(AddressUtil.class);

    @SuppressWarnings("all")
    public static String getCityInfo(String ip) {
        //db
        String dbPath = AddressUtil.class.getResource("/ip2region/ip2region.db").getPath();
        File file = new File(dbPath);

        if (!file.exists()) {
            log.info("地址库文件不存在,进行其他处理");
            String tmpDir = System.getProperties().getProperty("java.io.tmpdir");
            dbPath = tmpDir + File.separator + "ip2region.db";
            log.info("临时文件路径:{}", dbPath);
            file = new File(dbPath);
            if (!file.exists() || (System.currentTimeMillis() - file.lastModified() > 86400000L)) {
                log.info("文件不存在或者文件存在时间超过1天进入...");
                try {
                    InputStream inputStream = new ClassPathResource("ip2region/ip2region.db").getInputStream();
                    IOUtils.copy(inputStream, new FileOutputStream(file));
                } catch (IOException exception) {
                    exception.printStackTrace();
                }
            }
        }

        //查询算法
        int algorithm = DbSearcher.BTREE_ALGORITHM; //B-tree
        try {
            DbConfig config = new DbConfig();
            DbSearcher searcher = new DbSearcher(config, dbPath);
            //define the method
            Method method = null;
            switch (algorithm) {
                case DbSearcher.BTREE_ALGORITHM:
                    method = searcher.getClass().getMethod("btreeSearch", String.class);
                    break;
                case DbSearcher.BINARY_ALGORITHM:
                    method = searcher.getClass().getMethod("binarySearch", String.class);
                    break;
                case DbSearcher.MEMORY_ALGORITYM:
                    method = searcher.getClass().getMethod("memorySearch", String.class);
                    break;
            }
            DataBlock dataBlock = null;
            if (Util.isIpAddress(ip) == false) {
                log.error("Error: Invalid ip address");
            }
            dataBlock = (DataBlock) method.invoke(searcher, ip);
            return dataBlock.getRegion();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


}
