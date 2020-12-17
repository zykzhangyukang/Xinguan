<template>
    <div id="addStocks">
        <!-- 面包导航 -->
        <el-breadcrumb separator="/" style="padding-left:10px;padding-bottom:10px;font-size:12px;">
            <el-breadcrumb-item :to="{ path: '/home' }">首页</el-breadcrumb-item>
            <el-breadcrumb-item >业务管理</el-breadcrumb-item>
            <el-breadcrumb-item :to="{ path: '/business/product/in-stocks' }">物资入库</el-breadcrumb-item>
            <el-breadcrumb-item >添加入库</el-breadcrumb-item>
        </el-breadcrumb>
        <!-- 卡片区域 -->

        <el-row :gutter="20">
            <el-col :span="11">
                <div class="grid-content bg-purple">
                    <el-card>

                        <el-steps style="margin-bottom: 20px;" :active="1" simple>
                            <el-step title="填写" icon="el-icon-edit"></el-step>
                            <el-step title="审核" icon="el-icon-postcard"></el-step>
                            <el-step title="入库" icon="el-icon-set-up"></el-step>
                        </el-steps>
                        <el-form
                                size="mini"
                                ref="addRuleFormRef"
                                :rules="addRules"
                                :model="addRuleForm"
                                label-width="80px"
                        >
                            <el-form-item label="添加方式" >
                                <el-col :span="24"><div class="grid-content bg-purple">
                                    <el-radio border size="mini"  @change="existenceChange(existence)" v-model="existence"  :label="0">新增来源</el-radio>
                                    <el-radio border size="mini" @change="existenceChange(existence)"  v-model="existence" :label="1">已知来源</el-radio>
                                </div></el-col>
                            </el-form-item>

                            <el-form-item v-if="existence==1" label="物资来源" prop="supplierId">

                                <el-col :span="12">
                                    <div class="grid-content bg-purple">

                                        <el-select
                                                v-if="existence==1"
                                                style="width:100%;"
                                                filterable
                                                @change="supplerSelectChange(addRuleForm.supplierId)"
                                                v-model="addRuleForm.supplierId"
                                                placeholder="选择已存在来源"
                                        >
                                            <el-option
                                                    v-for="item in suppliers"
                                                    :key="item.id"
                                                    :label="item.name"
                                                    :value="item.id"
                                            ></el-option>
                                        </el-select>
                                    </div>
                                </el-col>
                            </el-form-item>


                            <el-form-item label="入库类型" prop="type">
                                <el-radio-group v-model="addRuleForm.type">
                                    <el-radio  :size="'mini'" :label="1">捐赠</el-radio>
                                    <el-radio  :size="'mini'" :label="2">下拨</el-radio>
                                    <el-radio  :size="'mini'" :label="3">采购</el-radio>
                                    <el-radio  :size="'mini'" :label="4">借用</el-radio>
                                </el-radio-group>
                            </el-form-item>

                            <div v-if="existence==0">
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
                                <el-form-item label="具体来源" prop="name">
                                    <el-input placeholder="请输入具体来源" v-model="addRuleForm.name"></el-input>
                                </el-form-item>
                                <el-form-item label="联系人" prop="contact">
                                    <el-input placeholder="请输入联系人名称" v-model="addRuleForm.contact"></el-input>
                                </el-form-item>


                                <el-form-item label="邮箱" prop="email">
                                    <el-input  placeholder="请输入邮箱地址" v-model="addRuleForm.email"></el-input>
                                </el-form-item>
                                <el-form-item label="电话" prop="phone">
                                    <el-input placeholder="请输入电话号码" v-model="addRuleForm.phone"></el-input>
                                </el-form-item>
                                <el-form-item label="排序" prop="sort">
                                    <el-input-number v-model="addRuleForm.sort" :min="1" :max="10" label="排序"></el-input-number>
                                </el-form-item>
                            </div>

                            <div v-if="existence==1">
                                <el-card class="box-card" style="margin-bottom: 30px;">
                                    <div  class="text item" style="font-size: 12px;padding: 5px;">
                                        物资名称: <span style="margin-left: 200px;color: #999">
                    <el-tag size="mini" type="info">{{supplierInfo.name}}</el-tag>
                  </span>
                                    </div>
                                    <div  class="text item" style="font-size: 12px;padding: 5px;">
                                        物资地址: <span style="margin-left: 200px;color: #999">
                    <el-tag size="mini" type="info">{{supplierInfo.address}}
                    </el-tag></span>
                                    </div>
                                    <div  class="text item" style="font-size: 12px;padding: 5px;">
                                        联系方式: <span style="margin-left: 200px;color: #999">
                    <el-tag size="mini" type="info">{{supplierInfo.phone}}
                    </el-tag></span>
                                    </div>
                                    <div  class="text item" style="font-size: 12px;padding: 5px;">
                                        电子邮件: <span style="margin-left: 200px;color: #999">
                    <el-tag size="mini" type="info">{{supplierInfo.email}}
                    </el-tag></span>
                                    </div>
                                    <div  class="text item" style="font-size: 12px;padding: 5px;">
                                        联系人员:  <span style="margin-left: 200px;color: #999">
                    <el-tag size="mini" type="info">{{supplierInfo.contact}}
                    </el-tag></span>
                                    </div>
                                </el-card>
                            </div>

                            <el-row>
                                <el-col :span="12">
                                    <div class="grid-content bg-purple">
                                        <el-form-item label="物资明细">
                                            <el-button size="mini" plain  icon="el-icon-search" @click="drawer = true">入库明细</el-button>
                                        </el-form-item>
                                    </div>
                                </el-col>

                                <el-col :span="12">
                                    <div class="grid-content bg-purple"><el-form-item label="物资总类">
                                        <el-input-number v-model="itemNum" :disabled="true"></el-input-number>
                                    </el-form-item>
                                    </div>
                                </el-col>
                            </el-row>

                            <el-form-item label="描述信息" prop="remark">
                                <el-input type="textarea" :rows="2" v-model="addRuleForm.remark"></el-input>
                            </el-form-item>
                            <el-form-item>
                                <el-button type="primary" @click="add">立即创建</el-button>

                                <el-button @click="reset">重置</el-button>
                            </el-form-item>
                        </el-form>

                    </el-card>
                </div>
            </el-col>

            <el-col :span="13">
                <div class="grid-content bg-purple-light">
                    <el-card>
                        <!-- 查询搜索 -->
                        <el-form :inline="true" :model="queryMap" class="demo-form-inline">
                            <el-form-item label="分类">
                                <el-cascader
                                        :change-on-select="true"
                                        @change="selectChange"
                                        v-model="categorykeys"
                                        :props="selectProps"
                                        :options="catetorys"
                                        clearable
                                ></el-cascader>
                            </el-form-item>
                            <el-form-item>
                                <el-form-item label="名称">
                                    <el-input clearable v-model="queryMap.name" placeholder="名称" @clear="search"></el-input>
                                </el-form-item>
                                <el-button type="primary" @click="search">查询</el-button>
                            </el-form-item>
                        </el-form>
                        <el-alert
                                title="勾选先下方物资后,在左侧表单的明细中添加其入库数量"
                                type="info"
                                show-icon style="margin-bottom:20px;">
                        </el-alert>
                        <!-- 入库预选表格 -->
                        <el-table
                                style="height:430px;"
                                :data="tableData"
                                :row-key="getRowKey"
                                ref="dataTable"
                                @selection-change="handleSelectionChange"
                                border
                        >
                            <el-table-column type="selection" :reserve-selection="true"></el-table-column>
                            <el-table-column prop="imageUrl" label="图片" align="center" width="150px" padding="0px">
                                <!--            <template slot-scope="scope">-->
                                <!--              <img-->
                                <!--                slot="error"-->
                                <!--                :src="'https://www.zykhome.club/'+scope.row.imageUrl"-->
                                <!--                alt-->
                                <!--                style="width: 55px;height:55px"-->
                                <!--              />-->
                                <!--            </template>-->
                                <template slot-scope="scope">
                                    <el-popover placement="right"  trigger="hover">
                                        <img :src="'https://www.zykhome.club/'+scope.row.imageUrl"  style="height: 200px;width: 200px"/>
                                        <img  slot="reference" :src="'https://www.zykhome.club/'+scope.row.imageUrl" :alt="scope.row.imgUrl" style="height: 32px;width: 32px;cursor: pointer">
                                    </el-popover>
                                </template>
                            </el-table-column>
                            <el-table-column prop="name" label="名称"></el-table-column>
                            <el-table-column prop="pnum" label="商品编号" :show-overflow-tooltip='true'></el-table-column>

                            <el-table-column prop="model" label="型号"></el-table-column>
                            <el-table-column prop="unit" label="单位"></el-table-column>
                        </el-table>
                        <!-- 表格分页 -->
                        <el-pagination
                                background
                                style="margin-top:10px;"
                                @size-change="handleSizeChange"
                                @current-change="handleCurrentChange"
                                :current-page="queryMap.pageNum"
                                :page-sizes="[6, 8, 16, 20]"
                                :page-size="queryMap.pageSize"
                                layout="total, sizes, prev, pager, next"
                                :total="total"
                        ></el-pagination>
                        <!-- 抽屉 -->
                        <el-drawer size="49%" title="入库明细" :visible.sync="drawer" :with-header="false">
              <span>
                  <el-button size="mini" style="float: right;margin: 10px;"  type="primary" icon="el-icon-remove" :disabled="products.length==0" @click="removeAllItem" >
                      清空
                  </el-button>
                <el-table height="700" :data="products" border>
                  <el-table-column prop="name" label="名称" width="120px;"></el-table-column>
                  <el-table-column
                          prop="imageUrl"
                          label="图片"
                          align="center"
                          width="150px"
                          padding="0px"
                  >
                    <template slot-scope="scope">
                      <img
                              :src="'https://www.zykhome.club/'+scope.row.imageUrl"
                              alt
                              style="width: 50px;height:30px"
                      />
                    </template>
                  </el-table-column>
                  <el-table-column prop="model" label="型号" width="100px;"></el-table-column>

                  <el-table-column label="数量" width="160">
                    <template slot-scope="scope">
                      <el-input-number
                              size="mini"
                              v-model="scope.row.number"
                              :min="0"
                              :max="10"
                              label="描述文字"
                      ></el-input-number>
                    </template>
                  </el-table-column>
                  <el-table-column prop="unit" label="单位" width="80px;"></el-table-column>
                  <el-table-column label="操作" width="100px;" fixed="right">
                    <template slot-scope="scope">
                      <el-button
                              type="danger"
                              size="mini"
                              plain
                              icon="el-icon-remove"
                              @click="removeItem(scope.row.id)"
                      >移除</el-button>
                    </template>
                  </el-table-column>
                </el-table>
              </span>
                        </el-drawer>
                    </el-card>
                </div>
            </el-col>
        </el-row>
    </div>
</template>
<script>
    export default {
        data() {
            var checkEmail = (rule, value, callback) => {
                const mailReg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
                if (!value) {
                    return callback(new Error("邮箱不能为空"));
                }
                setTimeout(() => {
                    if (mailReg.test(value)) {
                        callback();
                    } else {
                        callback(new Error("请输入正确的邮箱格式"));
                    }
                }, 100);
            };
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
            }
            return {

                supplierInfo:{name:"选择后显示具体信息",address:"选择后显示地址信息",contact:"选择后显示联系人信息",
                    phone:"选择后显示联系方式",email:"选择后显示邮箱信息"},//卡片展示
                provinceList: [], // 省列表
                cityList: [], // 市列表
                originList: [], // 区列表
                cityOptions: [], // 市下拉框数据
                originOptions: [], // 区下拉框数据,
                existence:0,
                addRules: {
                    supplierId: [
                        { required: true, message: "请选中物资来源", trigger: "blur" }
                    ],
                    type: [{ required: true, message: "请选中入库类型", trigger: "blur" }],
                    remark: [
                        { required: true, message: "请输入商品说明备注", trigger: "blur" },
                        { min: 5, max: 20, message: "长度在 5 到 20 个字符", trigger: "blur" }
                    ],
                    name: [
                        { required: true, message: "请输入来源名称", trigger: "blur" },
                        { min: 2, max: 50, message: "长度在 2 到 50 个字符", trigger: "blur" }
                    ],
                    address: [
                        { required: true, message: "请输入地址信息", trigger: "blur" },
                        { min: 2, max: 12, message: "长度在 2 到 12 个字符", trigger: "blur" }
                    ],
                    email: [{ required: true, validator: checkEmail, trigger: "blur" }],
                    valueProvince: [
                        { required: true, message: "请输入省份", trigger: "blur" }
                    ],
                    valueCity: [{ required: true, message: "请输入城市", trigger: "blur" }],
                    valueOrigin: [
                        { required: true, message: "请输入区县", trigger: "blur" }
                    ],
                    sort: [
                        { required: true, message: "请输入排序号", trigger: "blur" }
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
                }, //添加验证
                itemNum: 0,
                addRuleForm: {type:1},
                suppliers: [],
                categorykeys: [],
                selectProps: {
                    expandTrigger: "hover",
                    value: "id",
                    label: "name",
                    children: "children"
                }, //级联选择器配置项
                catetorys: [],
                drawer: false,
                total: 0,
                queryMap: {
                    pageNum: 1,
                    pageSize: 6,
                    status:0,
                },
                tableData: [],
                products: [],
            };
        },
        methods: {
            //重置信息
            reset(){
                this.addRuleForm={type: 1};
                this.$refs.addRuleFormRef.clearValidate();
                this.supplierInfo={name:"选择后显示具体信息",address:"选择后显示地址信息",contact:"选择后显示联系人信息",
                    phone:"选择后显示联系方式",email:"选择后显示邮箱信息"};
            },
            //改变来源选择
            supplerSelectChange(supplierId){
                const obj = this.suppliers.find(function (x) {
                    return x.id === supplierId;
                });
                this.supplierInfo=obj;
            },
            /**
             * 改变来源
             */
            existenceChange(existence){
                //选择已经存在的来源
                if(existence===1){
                }else if(existence===0){
                    this.addRuleForm.supplierId='';
                }
                this.$refs.addRuleFormRef.clearValidate();
                this.supplierInfo={name:"选择后显示具体信息",address:"选择后显示地址信息",contact:"选择后显示联系人信息",
                    phone:"选择后显示联系方式",email:"选择后显示邮箱信息"};
            },
            /**
             * 创建入库单
             */
            //添加
            add() {
                this.$refs.addRuleFormRef.validate(async valid => {
                    if (!valid) {
                        return;
                    } else {
                        this.addRuleForm.address =
                            this.addRuleForm.province +
                            "/" +
                            this.addRuleForm.city +
                            "/" +
                            this.addRuleForm.origin;
                        const car = [];
                        this.products.forEach(row => {
                            if (row.number !== undefined) {
                                const item = {productId: row.id, productNumber: row.number};
                                car.push(item);
                            }
                        });
                        if (car.length > 0) {
                            this.addRuleForm.products = car;
                        } else {
                            return this.$message.warning(
                                "入库商品的数量不能为空，请勾选物资后在明细中添加数量"
                            );
                        }
                        const res = await this.$confirm("此操作将提交入库单, 是否继续?", "提示", {
                            confirmButtonText: "确定",
                            cancelButtonText: "取消",
                            type: "warning"
                        }).catch(() => {
                            this.$message({
                                type: "info",
                                message: "已取消删除"
                            });
                        });
                        if (res === "confirm") {
                            const { data: res } = await this.$http.post(
                                "business/inStock/addIntoStock",
                                this.addRuleForm
                            );
                            if (res.success) {
                                this.$message.warning("物资入库进入审核状态");
                                await this.$router.push("/business/product/in-stocks");
                            } else {
                                return this.$message.error("商品入库失败:" + res.data.errorMsg);
                            }
                        }

                        this.addDialogVisible = false;
                    }
                });
            },
            /**
             * 加载商品列表(可入库)
             */
            async loadTableData() {
                const { data: res } = await this.$http.get("business/product/findProducts", {
                    params: this.queryMap
                });
                if (!res.success) {
                    return this.$message.error("获取商品列表失败");
                } else {
                    this.total = res.data.total;
                    this.tableData = res.data.rows;
                }
            },
            /**
             * 分类搜索改变时
             */
            selectChange() {
                let str = "";
                for (let i = 0; i < this.categorykeys.length; i++) {
                    str += this.categorykeys[i] + ",";
                }
                str = str.substring(0, str.length - 1);
                this.queryMap.categorys = str;
            },
            /**
             * 加载商品类别
             */
            async getCatetorys() {
                const { data: res } = await this.$http.get(
                    "business/productCategory/categoryTree"
                );
                if (!res.success) {
                    return this.$message.error("获取商品类别失败");
                } else {
                    this.catetorys = res.data.rows;
                }
            },
            /**加载来源数据
             */
            async getSuppliers() {
                const { data: res } = await this.$http.get("business/supplier/findAll");
                if (!res.success) {
                    return this.$message.error("获取来源数据失败:"+res.data.errorMsg);
                } else {
                    this.suppliers = res.data;
                }
            },

            /**
             * 搜索
             */
            search() {
                this.queryMap.pageNum = 1;
                this.loadTableData();
            },
            /**
             *  指定一个key标识这一行的数据
             */
            getRowKey(row) {
                return row.id;
            },
            /**
             * val表示选中的表格行数据
             */
            handleSelectionChange(val) {
                this.products = val;
                this.itemNum = val.length;
            },
            /**
             * 改变页码
             */
            handleSizeChange(newSize) {
                this.queryMap.pageSize = newSize;
                this.loadTableData();
            },
            /**
             * 点击分页
             */
            handleCurrentChange(current) {
                this.queryMap.pageNum = current;
                this.loadTableData();
            },
            /**
             * 清空所有
             */
            removeAllItem(){
                this.products.forEach(row => {
                    this.$refs.dataTable.toggleRowSelection(row, false);
                });
                this.products=[];
            },

            /**
             * 移除item从抽屉中
             */
            removeItem(val) {
                this.products.forEach(row => {
                    if (row.id === val) {
                        this.$refs.dataTable.toggleRowSelection(row, false);
                    }
                });
                this.products = this.products.filter(item => item.id !== val);
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
            this.loadTableData();
            this.getCatetorys();
            this.getSuppliers();
        }
    };
</script>
