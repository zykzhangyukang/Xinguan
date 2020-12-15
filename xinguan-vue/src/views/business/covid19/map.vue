<template>
  <div class="hello">
    <el-breadcrumb separator="/" style="padding-left:10px;padding-bottom:10px;font-size:12px;">
      <el-breadcrumb-item :to="{ path: '/home' }">首页</el-breadcrumb-item>
      <el-breadcrumb-item>健康报备</el-breadcrumb-item>
      <el-breadcrumb-item>全国疫情</el-breadcrumb-item>
    </el-breadcrumb>
    <!--    初始化echarts需要个有宽高的盒子-->
    <el-row :gutter="10">
      <el-col :span="12">
        <div class="grid-content bg-purple">
            <el-tabs type="border-card">
              <el-tab-pane label="疫情概览">
                <el-table  v-loading="loading" border :data="info" style="width: 100%" height="495">
                  <el-table-column prop="name" label="名称" width="150"></el-table-column>
                  <el-table-column prop="value" label="数量" >
                    <template slot-scope="scope">
                      <el-tag effect="plain" size="mini">{{scope.row.value}}人</el-tag>
                    </template>
                  </el-table-column>
                  <el-table-column prop="yesterday" label="较昨日" width="100">
                    <template slot-scope="scope">
                      <el-tag effect="plain" size="mini" v-if="scope.row.yesterday>0" type="danger">{{scope.row.yesterday}} 人</el-tag>
                      <el-tag effect="plain" size="mini" v-else type="success">{{scope.row.yesterday}}人</el-tag>
                    </template>
                  </el-table-column>
                  <el-table-column prop="name" label="时间"> <span style="font-size: 11px;">{{times}}</span></el-table-column>
                </el-table>
              </el-tab-pane>
              <el-tab-pane label="TOP10城市" >
                <el-table

                        height="495"
                        border
                    :data="top10"
                    style="width: 100%;font-size: 10px;">

              <el-table-column

                      prop="name"
                      label="城市名称"
                      width="180">
              </el-table-column>
              <el-table-column

                      prop="ename"
                      label="English">
              </el-table-column>
                  <el-table-column
                          prop="jwsrNum"
                          label="确诊人数"
                          width="180">
                    <template slot-scope="scope">
                      <el-tag v-text="scope.row.jwsrNum+'人'" size="mini" type="danger" effect="plain"></el-tag>
                    </template>
                  </el-table-column>
                </el-table>
              </el-tab-pane>

            </el-tabs>



        </div>
      </el-col>
      <el-col :span="12">
        <div class="grid-content bg-purple-light">
          <el-card>
            <div ref="mapbox" style="height:520px;"></div>
          </el-card>
        </div>
      </el-col>
    </el-row>
    <el-row :gutter="10" style="margin-top:10px;">
      <el-col :span="24">
        <div class="grid-content bg-purple">
          <el-card>
            <el-table  stripe  :data="tableData" style="width: 100%;">
              <el-table-column type="expand">
                <template slot-scope="scope">
                  <el-table  :data="scope.row.city" style="width: 100%">
                    <el-table-column prop="name" label="城市/区" width="200"></el-table-column>

                    <el-table-column sortable label="现存确诊" prop="econNum"></el-table-column>
                    <el-table-column sortable label="累计确诊" prop="cureNum"></el-table-column>
                    <el-table-column sortable label="疑似" prop="susNum"></el-table-column>
                    <el-table-column sortable label="死亡" prop="deathNum"></el-table-column>
                    <el-table-column sortable label="现存无症状" prop="asymptomNum"></el-table-column>
                  </el-table>
                </template>
              </el-table-column>
              <el-table-column sortable label="省份" prop="name"></el-table-column>
              <el-table-column sortable label="现存确诊" prop="econNum"></el-table-column>
              <el-table-column sortable label="累计确诊" prop="value"></el-table-column>
              <el-table-column sortable label="疑似" prop="susNum"></el-table-column>
              <el-table-column sortable label="死亡" prop="deathNum"></el-table-column>
              <el-table-column sortable label="现存无症状" prop="asymptomNum"></el-table-column>
            </el-table>
          </el-card>
        </div>
      </el-col>
    </el-row>
  </div>
</template>

<script>
import echarts from "echarts";
import "echarts/map/js/china";
import jsonp from "jsonp";

const option = {
  title: {
    text: "疫情地图",
    link: "https://baidu.com",
    subtext: "疫情地图",
    sublink: "https://baidu.com"
  },
  series: [
    {
      name: "确诊人数",
      type: "map", //告诉echarts要去渲染一个地图
      map: "china",
      label: {
        show: true, // 控制对应地区的汉字
        color: "#333",
        fontSize: 10
      },
      roam: true, //控制地图放大缩小
      zoom: 1.2, //控制地图的放大缩小
      data: [], //用来展示后台给的数据  {name:xx,value:xxx}
      /*      控制地图板块的颜色和边框*/
      itemStyle: {
        areaColor: "#83b5e7",
        borderColor: "yellow" //边框颜色
      },
      /*     控制鼠标滑过之后的背景色和字体颜色*/
      emphasis: {
        label: {
          color: "#fff",
          fontsize: 12
        },
        itemStyle: {
          areaColor: "#83b5e7"
        }
      }
    }
  ],
  visualMap: [
    {
      type: "piecewise",
      show: true,
      pieces: [
        //分段
        { min: 10000 },
        { min: 1000, max: 9990 },
        { min: 100, max: 999 },
        { min: 10, max: 99 },
        { min: 1, max: 9 }
      ],
      inRange: {
        symbol: "rect",
        color: ["#ffc0b1", "#e70520"]
      },
      itemWidth: 20,
      itemHeight: 10
    }
  ],
  tooltip: {
    trigger: "item" //鼠标移入后显示人数
  }
};
export default {
  name: "HelloWorld",
  data() {
    return {
      times:'',
      loading:true,
      info: [],
      tableData: [],
      top10:[],
    };
  },
  mounted() {
    //template挂载到页面时调用
    this.getData(); //执行getData方法

    this.mychart = echarts.init(this.$refs.mapbox);
    this.mychart.setOption(option);
  },
  methods: {
    getData() {
      jsonp(
        "https://interface.sina.cn/news/wap/fymap2020_data.d.json?_=1580892522427", //接口
        {},
        (err, data) => {
          if (!err) {
            //代表请求数据成功
            let list = data.data.list.map(item => ({
              name: item.name,
              value: item.value
            })); //从接口获取到数据后，使用map()函数，进行接口数据映射
            option.series[0].data = list;
            this.tableData = data.data.list;

            this.mychart.setOption(option);
            //这行代码能执行的前提是DOM已经渲染完成，只有DOM已渲染完成才能echarts初始化
            this.buildTable(data); //构建表格数据
          }
        }
      );
    },
    /**
     * 构建表格数据:每日新增....
     */
    buildTable(data) {
      var data = data.data;
      let data1 = {
        name: "现存确诊",
        value: data.econNum,
        yesterday: data.add_daily["addecon_new"]
      };
      let data2 = {
        name: "累计境外输入",
        value: data.jwsrNum,
        yesterday: data.add_daily["addjwsr"]
      };
      let data3 = {
        name: "现无症状",
        value: data.asymptomNum,
        yesterday: data.add_daily["addasymptom"]
      };
      let data4 = {
        name: "现存确诊重症",
        value: data.heconNum,
        yesterday: data.add_daily["addhecon_new"]
      };
      let data5 = {
        name: "累计确诊",
        value: data.gntotal,
        yesterday: data.add_daily["addcon_new"]
      };
      let data6 = {
        name: "累计死亡",
        value: data.deathtotal,
        yesterday: data.add_daily["adddeath_new"]
      };
      let data7 = {
        name: "累计治愈",
        value: data.curetotal,
        yesterday: data.add_daily["addcure_new"]
      };
      let data8 = {
        name: "现存疑似",
        value: data.sustotal,
        yesterday: data.add_daily["wjw_addsus_new"]
      };
      this.times=data.times;
      this.top10=data.jwsrTop;

      this.info.push(data1);
      this.info.push(data2);
      this.info.push(data3);
      this.info.push(data4);
      this.info.push(data5);
      this.info.push(data6);
      this.info.push(data7);
      this.info.push(data8);
      this.loading=false;
    }
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>

