<template>
  <div id="productCategroys">
    <!-- 面包导航 -->
    <el-breadcrumb separator="/" style="padding-left:10px;padding-bottom:10px;font-size:12px;">
      <el-breadcrumb-item :to="{ path: '/home' }">首页</el-breadcrumb-item>
      <el-breadcrumb-item>物资流向</el-breadcrumb-item>
      <el-breadcrumb-item>物资去处</el-breadcrumb-item>
    </el-breadcrumb>
    <!-- 右侧卡片区域 -->
    <!-- 用户列表卡片区 -->
    <el-card class="box-card">
      <el-form size="mini" :inline="true" :model="queryMap" class="demo-form-inline">
        <el-form-item label="省市区县">
          <el-input v-model="queryMap.address" clearable @clear="search" placeholder="省市区县"></el-input>
        </el-form-item>
        <el-form-item label="联系人">
          <el-input v-model="queryMap.contact" clearable @clear="search" placeholder="联系人"></el-input>
        </el-form-item>
        <el-form-item label="具体地点">
          <el-input
            clearable
            v-model="queryMap.name"
            placeholder="请具体地点查询"
            @clear="search"
            class="input-with-el-select"
          ></el-input>
        </el-form-item>
        <el-form-item>
          <el-button type="primary" icon="el-icon-search" @click="search">查询</el-button>
          <el-button type="success" icon="el-icon-circle-plus-outline" v-hasPermission="'consumer:add'" @click="openAdd">添加</el-button>
        </el-form-item>
      </el-form>

      <!-- 表格区域 -->
      <template>
        <el-table
          border
          size="mini"
          v-loading="loading"
          stripe
          :data="consumerData"
          style="width: 100%;"
          height="460"
        >
          <el-table-column prop="id" type="index" label="ID" width="50"></el-table-column>
          <el-table-column label="物资去向地址">
            <el-table-column
                    prop="address"
                    label="省份"
                    width="120">
              <template slot-scope="scope">
                <span v-text="scope.row.address.split('/')[0]"></span>
              </template>
            </el-table-column>
            <el-table-column
                    prop="address"
                    label="市"
                    width="120">
              <template slot-scope="scope">
                <span v-text="scope.row.address.split('/')[1]"></span>
              </template>
            </el-table-column>
            <el-table-column
                    prop="address"
                    label="区县"
                    width="100">
              <template slot-scope="scope">
                <span v-text="scope.row.address.split('/')[2]"></span>
              </template>
            </el-table-column>
            <el-table-column
                    prop="name"
                    label="地址"
                    width="200">
            </el-table-column>
          </el-table-column>

          <el-table-column prop="createTime" label="创建时间" width="190"></el-table-column>
          <el-table-column prop="contact" label="联系人" width="140"></el-table-column>
          <el-table-column prop="phone" label="电话" width="140"></el-table-column>
          <el-table-column prop="sort" label="排序" width="100"></el-table-column>
          <el-table-column label="操作" fixed="right" width="150">
            <template slot-scope="scope">
              <el-button v-hasPermission="'consumer:edit'" type="text" size="mini" icon="el-icon-edit" @click="edit(scope.row.id)">编辑</el-button>

              <el-button v-hasPermission="'consumer:delete'" type="text" size="mini" icon="el-icon-delete" @click="del(scope.row.id)">删除</el-button>
            </template>
          </el-table-column>
        </el-table>
      </template>
      <!-- 分页 -->
      <el-pagination
        style="margin-top:10px;"
        background
        @size-change="handleSizeChange"
        @current-change="handleCurrentChange"
        :current-page="this.queryMap.pageNum"
        :page-sizes="[ 10, 15, 20]"
        :page-size="this.queryMap.pageSize"
        layout="total, sizes, prev, pager, next, jumper"
        :total="total"
      ></el-pagination>
      <!-- 系别添加弹出框 -->
      <el-dialog
        title="添加物资去处"
        :visible.sync="addDialogVisible"
        width="50%"
        @close="closeAddDialog"
      >
        <span>
          <el-form
            :model="addRuleForm"
            :rules="addRules"
            ref="addRuleFormRef"
            label-width="100px"
            class="demo-ruleForm"
          >
            <el-row>
              <el-col :span="8">
                <div class="grid-content bg-purple"></div>
                <el-form-item label="省份" prop="valueProvince">
                  <el-select
                    v-model="addRuleForm.valueProvince"
                    placeholder="请选择省"
                    @change="changeProvince"
                  >
                    <el-option
                      v-for="item in provinceList"
                      :key="item.value"
                      :label="item.label"
                      :value="item.value"
                    ></el-option>
                  </el-select>
                </el-form-item>
              </el-col>
              <el-col :span="8">
                <div class="grid-content bg-purple-light">
                  <el-form-item label="城市" prop="valueCity">
                    <el-select
                      v-model="addRuleForm.valueCity"
                      placeholder="请选择市"
                      @change="changeCity"
                    >
                      <el-option
                        v-for="item in cityOptions"
                        :key="item.value"
                        :label="item.label"
                        :value="item.value"
                      ></el-option>
                    </el-select>
                  </el-form-item>
                </div>
              </el-col>
              <el-col :span="8">
                <div class="grid-content bg-purple">
                  <el-form-item label="区县" prop="valueOrigin">
                    <el-select
                      v-model="addRuleForm.valueOrigin"
                      placeholder="请选择区"
                      @change="changeOrigin"
                    >
                      <el-option
                        v-for="item in originOptions"
                        :key="item.label"
                        :label="item.label"
                        :value="item.value"
                      ></el-option>
                    </el-select>
                  </el-form-item>
                </div>
              </el-col>
            </el-row>
            <el-form-item label="联系人" prop="contact">
              <el-input v-model="addRuleForm.contact"></el-input>
            </el-form-item>

            <el-form-item label="详细去处" prop="name">
              <el-input type="textarea" v-model="addRuleForm.name"></el-input>
            </el-form-item>

            <el-form-item label="电话" prop="phone">
              <el-input v-model="addRuleForm.phone"></el-input>
            </el-form-item>

            <el-form-item label="排序" prop="sort">
              <el-input-number v-model="addRuleForm.sort" :min="1" :max="10" label="排序"></el-input-number>
            </el-form-item>
          </el-form>
        </span>
        <span slot="footer" class="dialog-footer">
          <el-button @click="addDialogVisible = false">取 消</el-button>
          <el-button type="primary" @click="add">确 定</el-button>
        </span>
      </el-dialog>

      <!-- 系别编辑弹出框 -->
      <el-dialog
        title="更新物资去处"
        :visible.sync="editDialogVisible"
        width="50%"
        @close="closeEditDialog"
      >
        <span>
          <el-form
            :model="editRuleForm"
            :rules="addRules"
            ref="editRuleFormRef"
            label-width="100px"
            class="demo-ruleForm"
          >
            <el-form-item label="省市区县" prop="address">
              <el-input v-model="editRuleForm.address" disabled></el-input>
            </el-form-item>
            <el-form-item label="详细去处" prop="name">
              <el-input type="textarea" v-model="editRuleForm.name"></el-input>
            </el-form-item>

            <el-form-item label="电话" prop="phone">
              <el-input v-model="editRuleForm.phone"></el-input>
            </el-form-item>
            <el-form-item label="联系人" prop="contact">
              <el-input v-model="editRuleForm.contact"></el-input>
            </el-form-item>

            <el-form-item label="排序" prop="sort">
              <el-input-number v-model="editRuleForm.sort" :min="1" :max="10" label="排序"></el-input-number>
            </el-form-item>
          </el-form>
        </span>
        <span slot="footer" class="dialog-footer">
          <el-button @click="editDialogVisible = false">取 消</el-button>
          <el-button type="primary" @click="update">确 定</el-button>
        </span>
      </el-dialog>
    </el-card>
  </div>
</template>

<script>
export default {
  data() {
    var checkPhone = (rule, value, callback) => {
      const phoneReg = /^1[34578]\d{9}$$/;
      if (!value) {
        return callback(new Error("电话号码不能为空"));
      }
      setTimeout(() => {
        // Number.isInteger是es6验证数字是否为整数的方法,实际输入的数字总是识别成字符串
        // 所以在前面加了一个+实现隐式转换

        if (!Number.isInteger(+value)) {
          callback(new Error("请输入数字值"));
        } else {
          if (phoneReg.test(value)) {
            callback();
          } else {
            callback(new Error("电话号码格式不正确"));
          }
        }
      }, 100);
    };
    return {
      loading: true,
      editDialogVisible: false,
      addDialogVisible: false, //添加弹框是否显示
      total: 0, //总共多少条数据
      consumerData: [], //表格数据
      queryMap: { pageNum: 1, pageSize: 10, name: "" }, //查询对象
      addRuleForm: {}, //添加表单数据
      editRuleForm: {}, //修改表单数据
      deans: [], //所有系主任
      addRules: {
        name: [
          { required: true, message: "请输入物资去处名称", trigger: "blur" },
          { min: 2, max: 10, message: "长度在 2 到 10 个字符", trigger: "blur" }
        ],
        address: [
          { required: true, message: "请输入地址信息", trigger: "blur" },
          { min: 2, max: 12, message: "长度在 2 到 12 个字符", trigger: "blur" }
        ],
        sort: [{ required: true, message: "请输入排序号", trigger: "blur" }],
        valueProvince: [
          { required: true, message: "请输入省份", trigger: "blur" }
        ],
        valueCity: [{ required: true, message: "请输入城市", trigger: "blur" }],
        valueOrigin: [
          { required: true, message: "请输入区县", trigger: "blur" }
        ],
        contact: [{ required: true, message: "请输入联系人", trigger: "blur" }],
        phone: [
          {
            required: true,
            message: "请输入联系方式",
            validator: checkPhone,
            trigger: "blur"
          }
        ]
      },
      provinceList: [], // 省列表
      cityList: [], // 市列表
      originList: [], // 区列表
      cityOptions: [], // 市下拉框数据
      originOptions: [] // 区下拉框数据
    };
  },
  methods: {
    /**
     * 打开添加弹出框
     */
    openAdd() {
      this.addDialogVisible = true;
      this._getJsonData();
    },
    //搜索
    search() {
      this.queryMap.pageNum = 1;
      this.getConsumerList();
    },
    //删除物资去处
    async del(id) {
      var res = await this.$confirm(
        "此操作将永久删除该用户, 是否继续?",
        "提示",
        {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }
      ).catch(() => {
        this.$message({
          type: "info",
          message: "已取消删除"
        });
      });
      if (res == "confirm") {
        const { data: res } = await this.$http.delete("consumer/delete/" + id);
        if (res.code == 200) {
          this.$message.success("物资去处删除成功");
          this.getConsumerList();
        } else {
          this.$message.error(res.msg);
        }
      }
    },
    //更新用户
    async update() {
      this.$refs.editRuleFormRef.validate(async valid => {
        if (!valid) {
          return;
        } else {
          const { data: res } = await this.$http.put(
            "consumer/update/" + this.editRuleForm.id,
            this.editRuleForm
          );
          if (res.code == 200) {
            this.$notify({
              title: "成功",
              message: "物资去处更新",
              type: "success"
            });
            this.editRuleForm = {};
            this.getConsumerList();
          } else {
            this.$message.error("物资去处更新失败:" + res.msg);
          }

          this.editDialogVisible = false;
        }
      });
    },
    /**
     * 编辑
     */
    async edit(id) {
      this._getJsonData();
      const { data: res } = await this.$http.get("consumer/edit/" + id);
      if (res.code == 200) {
        this.editRuleForm = res.data;
      } else {
        return this.$message.error("物资去处编辑失败" + res.msg);
      }
      this.editDialogVisible = true;
    },
    //添加
    add() {
      this.$refs.addRuleFormRef.validate(async valid => {
        if (!valid) {
          console.log(this.addRuleForm);
          return;
        } else {
          this.addRuleForm.address =
            this.addRuleForm.province +
            "/" +
            this.addRuleForm.city +
            "/" +
            this.addRuleForm.origin;
          const { data: res } = await this.$http.post(
            "consumer/add",
            this.addRuleForm
          );
          if (res.code == 200) {
            this.$message.success("物资去处添加成功");
            this.addRuleForm = {};
            this.getConsumerList();
          } else {
            return this.$message.error("物资去处添加失败:" + res.msg);
          }
          this.addDialogVisible = false;
        }
      });
    },
    /**
     * 加载物资去处列表
     */
    async getConsumerList() {
      const { data: res } = await this.$http.get("consumer/findConsumerList", {
        params: this.queryMap
      });
      if (res.code !== 200) {
        return this.$message.error("获取用户列表失败");
      } else {
        this.total = res.data.total;
        this.consumerData = res.data.rows;
      }
    },

    //改变页码
    handleSizeChange(newSize) {
      this.queryMap.pageSize = newSize;
      this.getConsumerList();
    },
    //翻页
    handleCurrentChange(current) {
      this.queryMap.pageNum = current;
      this.getConsumerList();
    },
    //关闭弹出框
    closeAddDialog() {
      this.$refs.addRuleFormRef.clearValidate();

      this.valueProvince = "";
      this.valueCity = "";
      this.valueOrigin = "";

      //  this.cityOptions=[];
      // this.originOptions=[];

      this.addRuleForm = {};
    },
    //关闭弹出框
    closeEditDialog() {
      this.$refs.editRuleFormRef.clearValidate();
      this.editRuleForm = {};
    },
    // 选择省
    changeProvince(val) {
      this.provinceList.forEach((province, index) => {
        if (val.toString() === this.provinceList[index].value) {
          this.cityOptions = this.provinceList[index].children;
          this.addRuleForm.valueCity = this.provinceList[
            index
          ].children[0].value; //设置市的值
          this.addRuleForm.city = this.provinceList[index].children[0].label;

          this.addRuleForm.valueOrigin = this.provinceList[
            index
          ].children[0].children[0].value; //设置县的值
          this.addRuleForm.origin = this.provinceList[
            index
          ].children[0].children[0].label;

          this.originOptions = this.provinceList[index].children[0].children;
          //set value
          this.addRuleForm.province = this.provinceList[index].label;
        }
      });
    },
    // 选择市
    changeCity(val) {
      this.cityList.forEach((city, index) => {
        if (val.toString() === this.cityList[index].value) {
          this.originOptions = this.cityList[index].children;
          this.addRuleForm.valueOrigin = this.cityList[index].children[0].value; //设置县的值;
          //set value
          this.addRuleForm.city = this.cityList[index].label;
        }
      });
    },
    // 选择区
    changeOrigin(val) {
      this.addRuleForm.valueOrigin = val;

      this.originList.forEach((origin, index) => {
        if (val.toString() === this.originList[index].value) {
          //set value
          this.addRuleForm.origin = this.originList[index].label;
        }
      });
      //添加this.$forceUpdate();进行强制渲染，效果实现。搜索资料得出结果：因为数据层次太多，render函数没有自动更新，需手动强制刷新。
      this.$forceUpdate();
    },

    _getJsonData() {
      this.$http.get("/json/provinces.json").then(res => {
        this.provinceList = [];
        this.cityList = [];
        this.originList = [];
        res.data.forEach(item => {
          if (item.value.match(/0000$/)) {
            this.provinceList.push({
              value: item.value,
              label: item.name,
              children: []
            });
          } else if (item.value.match(/00$/)) {
            this.cityList.push({
              value: item.value,
              label: item.name,
              children: []
            });
          } else {
            this.originList.push({
              value: item.value,
              label: item.name
            });
          }
        });
        for (let index in this.provinceList) {
          for (let index1 in this.cityList) {
            if (
              this.provinceList[index].value.slice(0, 2) ===
              this.cityList[index1].value.slice(0, 2)
            ) {
              this.provinceList[index].children.push(this.cityList[index1]);
            }
          }
        }
        for (let item1 in this.cityList) {
          for (let item2 in this.originList) {
            if (
              this.originList[item2].value.slice(0, 4) ===
              this.cityList[item1].value.slice(0, 4)
            ) {
              this.cityList[item1].children.push(this.originList[item2]);
            }
          }
        }
      });
    }
  },
  created() {
    this._getJsonData();
    this.getConsumerList();
    setTimeout(() => {
      this.loading = false;
    }, 500);
  }
};
</script>
