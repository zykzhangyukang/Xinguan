package com.coderman.api.biz.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.coderman.api.biz.vo.MusicVO;
import com.coderman.api.common.bean.ResponseBean;
import io.swagger.annotations.Api;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

/**
 * 调用第三方的接口
 * @Author zhangyukang
 * @Date 2020/5/1 11:23
 * @Version 1.0
 **/
@Api(tags = "第三方API接口")
@RestController
public class OtherAPIController {

    private String rumorListUrl="https://wuliang.art/ncov/rumor/getRumorList?page=";

    private String rumorDetailUrl="https://wuliang.art/ncov/rumor/getRumorDetail?id=";

    private final String prefixUrl = "http://music.163.com/api/playlist/detail?id=";

    private final String playUrl = "http://music.163.com/song/media/outer/url?id=";

    @GetMapping("/music/getPlayList")
    public List<MusicVO> getPlayList(String listId) throws IOException {
        //拼接完整的url
        String lastUrl = prefixUrl + listId;
        //发起http请求获取歌单信息
        URL url = new URL(lastUrl);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        String result = getMusicResponse(conn);
        JSONObject rest = JSON.parseObject(result).getJSONObject("result");
        if(null!=rest){
            JSONArray arr = rest.getJSONArray("tracks");
            return getAllMusic(arr);
        }
        return new ArrayList<>();
    }

    public String getMusicResponse(HttpURLConnection conn) throws IOException {
        //设置属性
        conn.setDoOutput(true);
        conn.setDoInput(true);
        conn.setRequestMethod("GET");
        conn.setRequestProperty("User-Agent", "Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Maxthon;)");
        conn.setRequestProperty("cookie", "appver=1.5.0.75771");
        conn.setRequestProperty("referer", "http://music.163.com/");
        //开启连接
        conn.connect();
        //获取响应
        BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        String line;
        StringBuffer sb = new StringBuffer();
        while ((line = br.readLine()) != null) {
            sb.append(line);
        }
        //关闭流
        br.close();
        //关闭连接
        conn.disconnect();
        return sb.toString();
    }

    public List<MusicVO> getAllMusic(JSONArray arr) {
        List<MusicVO> list = new ArrayList<>();
        for (int i = 0; i < arr.size(); i++) {
            JSONObject obj = arr.getJSONObject(i);
            MusicVO music = new MusicVO();
            music.setName(obj.getString("name"));
            music.setUrl(playUrl + obj.getString("id") + ".mp3");
            music.setArtist(obj.getJSONArray("artists").getJSONObject(0).getString("name"));
            music.setCover(obj.getJSONObject("album").getString("blurPicUrl"));
            music.setLrc("");
            list.add(music);
        }
        return list;
    }


    /**
     * 谣言列表
     * @param page
     * @return
     */
    @GetMapping("/rumor/list/{page}")
    public ResponseBean list(@PathVariable Long page) throws IOException {
        //拼接完整的url
        String lastUrl = rumorListUrl+page;
        //发起http请求获取歌单信息
        URL url = new URL(lastUrl);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        String result = getResponse(conn);
        JSONArray arr = JSON.parseObject(result).getJSONArray("data");
        List<JSONObject> list = getAllRumors(arr);
        return ResponseBean.success(list);
    }

    /**
     * 谣言详情
     * @param id
     * @return
     * @throws IOException
     */
    @GetMapping("/rumor/detail/{id}")
    public ResponseBean detail(@PathVariable String id) throws IOException {
        //拼接完整的url
        String lastUrl = rumorDetailUrl+id;
        //发起http请求获取信息
        URL url = new URL(lastUrl);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        String result = getResponse(conn);
        JSONObject jsonObject = JSON.parseObject(result).getJSONObject("data");
        return ResponseBean.success(jsonObject);
    }

    public String getResponse(HttpURLConnection conn) throws IOException {
        //设置属性
        conn.setDoOutput(true);
        conn.setDoInput(true);
        conn.setRequestMethod("GET");
        conn.setRequestProperty("User-Agent", "Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Maxthon;)");
        conn.setRequestProperty("cookie", "appver=1.5.0.75771");
        conn.setRequestProperty("referer", "https://wuliang.art/");
        //开启连接
        conn.connect();
        //获取响应
        BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        String line;
        StringBuffer sb = new StringBuffer();
        while ((line = br.readLine()) != null) {
            sb.append(line);
        }
        //关闭流
        br.close();
        //关闭连接
        conn.disconnect();
        return sb.toString();
    }

    /**
     * 处理JSON
     * @param arr
     * @return
     */
    public List<JSONObject> getAllRumors(JSONArray arr) {
        List<JSONObject> list = new ArrayList<>();
        for (int i = 0; i < arr.size(); i++) {
            JSONObject obj = arr.getJSONObject(i);
            list.add(obj);
        }
        return list;
    }

}
