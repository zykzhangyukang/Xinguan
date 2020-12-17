<template>
    <div id="departments">
        <!-- 面包导航 -->
        <el-breadcrumb separator="/" style="padding-left:10px;padding-bottom:10px;font-size:12px;">
            <el-breadcrumb-item :to="{ path: '/home' }">首页</el-breadcrumb-item>
            <el-breadcrumb-item>系统管理</el-breadcrumb-item>
            <el-breadcrumb-item>部门管理</el-breadcrumb-item>
        </el-breadcrumb>
        <!-- 右侧卡片区域 -->
        <!-- 用户列表卡片区 -->
        <el-card class="box-card">
            <el-row :gutter="20">
                <el-col :span="8">
                    <el-input
                            size="small"
                            clearable
                            v-model="queryMap.name"
                            placeholder="请输入部门查询"
                            @clear="search"
                            class="input-with-select"
                    >
                        <el-button slot="append" icon="el-icon-search" @click="search"></el-button>
                    </el-input>
                </el-col>
                <el-col :span="2">
                    <el-button
                            size="small"
                            v-hasPermission="'department:add'"
                            type="success"
                            icon="el-icon-circle-plus-outline"
                            @click="addDialogVisible=true"
                    >添加</el-button>
                </el-col>
                <el-col :span="2">
                    <el-button
                            size="small"
                            icon="el-icon-download"
                            v-hasPermission="'department:export'"
                            @click="downExcel"
                    >导出</el-button>
                </el-col>
            </el-row>
            <!-- 表格区域 -->
            <template>
                <el-table
                        border
                        size="small"
                        v-loading="loading"
                        stripe
                        :data="departmentData"
                        style="width: 100%;margin-top:20px;"
                        height="460"
                >
                    <el-table-column prop="id" type="index" label="ID" width="50"></el-table-column>
                    <el-table-column prop="phone" label="办公电话" width="180"></el-table-column>
                    <el-table-column prop="name" label="部门名" width="120"></el-table-column>
                    <el-table-column prop="total" label="人数" sortable width="100">
                        <template slot-scope="scope">
                            <el-tag effect="plain" v-text="scope.row.total+'人'" size="small">
                            </el-tag>
                        </template>
                    </el-table-column>
                    <el-table-column prop="createTime" label="创建时间" sortable></el-table-column>
                    <el-table-column prop="modifiedTime" label="修改时间" sortable></el-table-column>
                    <el-table-column prop="address" label="地址"></el-table-column>
                    <el-table-column label="操作">
                        <template slot-scope="scope">
                            <el-button
                                    v-hasPermission="'department:edit'"
                                    type="text"
                                    size="small"
                                    icon="el-icon-edit"
                                    @click="edit(scope.row.id)"
                            >编辑</el-button>

                            <el-button
                                    v-hasPermission="'department:delete'"
                                    type="text"
                                    size="small"
                                    icon="el-icon-delete"
                                    @click="del(scope.row.id)"
                            >删除</el-button>
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
                    :page-sizes="[7, 10, 15, 20]"
                    :page-size="this.queryMap.pageSize"
                    layout="total, sizes, prev, pager, next, jumper"
                    :total="total"
            ></el-pagination>
            <!-- 部门别添加弹出框 -->
            <el-dialog title="添加部门" :visible.sync="addDialogVisible" width="50%" @close="closeAddDialog">
        <span>
          <el-form
                  :model="addRuleForm"
                  :rules="addRules"
                  ref="addRuleFormRef"
                  label-width="100px"
                  class="demo-ruleForm"
          >
            <el-form-item label="部门名称" prop="name">
              <el-input v-model="addRuleForm.name"></el-input>
            </el-form-item>
            <el-form-item label="办公电话" prop="phone">
              <el-input v-model="addRuleForm.phone"></el-input>
            </el-form-item>
            <el-form-item label="办公地址" prop="address">
              <el-input type="textarea" v-model="addRuleForm.address"></el-input>
            </el-form-item>
          </el-form>
        </span>
                <span slot="footer" class="dialog-footer">
          <el-button @click="addDialogVisible = false">取 消</el-button>
          <el-button type="primary" @click="add" :disabled="btnDisabled" :loading="btnLoading">确 定</el-button>
        </span>
            </el-dialog>

            <!-- 部门别编辑弹出框 -->
            <el-dialog
                    title="更新部门"
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
            <el-form-item label="部门名称" prop="name">
              <el-input v-model="editRuleForm.name"></el-input>
            </el-form-item>
            <el-form-item label="办公电话" prop="phone">
              <el-input v-model="editRuleForm.phone"></el-input>
            </el-form-item>
            <el-form-item label="办公地址" prop="address">
              <el-input type="textarea" v-model="editRuleForm.address"></el-input>
            </el-form-item>
          </el-form>
        </span>
                <span slot="footer" class="dialog-footer">
          <el-button @click="editDialogVisible = false">取 消</el-button>
          <el-button
                  type="primary"
                  @click="update"
                  :disabled="btnDisabled"
                  :loading="btnLoading"
          >确 定</el-button>
        </span>
            </el-dialog>
        </el-card>
    </div>
</template>

<script>
    import axios from "axios";
    export default {
        data() {
            const checkPhone = (rule, value, callback) => {
                const phoneReg = /^1[34578]\d{9}$$/;
                if (!value) {
                    return callback(new Error("电话号码不能为空"));
                }
                setTimeout(() => {
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
                btnLoading: false,
                btnDisabled: false,
                loading: true,
                editDialogVisible: false,
                addDialogVisible: false, //添加弹框是否显示
                total: 0, //总共多少条数据
                departmentData: [], //表格数据
                queryMap: { pageNum: 1, pageSize: 7, name: "" }, //查询对象
                addRuleForm: {}, //添加表单数据
                editRuleForm: {}, //修改表单数据
                addRules: {
                    name: [
                        { required: true, message: "请输入部门名称", trigger: "blur" },
                        { min: 3, max: 10, message: "长度在 3 到 10 个字符", trigger: "blur" }
                    ],
                    address: [
                        { required: true, message: "请输入办公地址", trigger: "blur" },
                        { min: 4, max: 12, message: "长度在 4 到 12 个字符", trigger: "blur" }
                    ],
                    phone: [
                        {
                            required: true,
                            message: "请输入联部门方式",
                            validator: checkPhone,
                            trigger: "blur"
                        }
                    ]
                } //添加验证
            };
        },
        methods: {
            /**
             * 加载部门表格
             */
            downExcel() {
                const $this = this;
                const res = axios
                    .request({
                        url: "system/department/excel",
                        method: "post",
                        responseType: "blob"
                    })
                    .then(res => {
                        if (res.headers["content-type"] === "application/json") {
                            return $this.$message.error(
                                "Subject does not have permission [department:export]"
                            );
                        }
                        const data = res.data;
                        let url = window.URL.createObjectURL(data); // 将二进制文件转化为可访问的url
                        var a = document.createElement("a");
                        document.body.appendChild(a);
                        a.href = url;
                        a.download = "部门列表.xls";
                        a.click();
                        window.URL.revokeObjectURL(url);
                    });
            },
            /**
             * 搜索部门
             */
            search() {
                this.queryMap.pageNum = 1;
                this.getDepartmentList();
            },
            /**
             * 删除部门
             */
            del: async function (id) {
                let res = await this.$confirm(
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
                if ("confirm" === res) {
                    const {data: res} = await this.$http.delete(
                        "system/department/delete/" + id
                    );
                    if (res.success) {
                        this.$message.success("部门删除成功");
                        await this.getDepartmentList();
                    } else {
                        this.$message.error(res.data.errorMsg);
                    }
                }
            },
            /**
             * 更新用户
             */
            update: async function () {
                this.$refs.editRuleFormRef.validate(async valid => {
                    if (!valid) {
                        return;
                    } else {
                        (this.btnLoading = true), (this.btnDisabled = true);
                        const {data: res} = await this.$http.put(
                            "system/department/update/" + this.editRuleForm.id,
                            this.editRuleForm
                        );
                        if (res.code === 200) {
                            this.$notify({
                                title: "成功",
                                message: "部门信息更新",
                                type: "success"
                            });
                            await this.getDepartmentList();
                        } else {
                            this.$message.error("部门信息更新失败:" + res.data.errorMsg);
                        }
                        this.editRuleForm = {};
                        this.btnDisabled = false;
                        this.btnLoading = false;
                        this.editDialogVisible = false;
                    }
                });
            },
            /**
             * 编辑
             * @param {Object} id
             */
            edit: async function (id) {
                const {data: res} = await this.$http.get("system/department/edit/" + id);
                if (res.success) {
                    this.editRuleForm = res.data;
                } else {
                    return this.$message.error("部门信息编辑失败" + res.data.errorMsg);
                }
                this.editDialogVisible = true;
            },
            //添加
            add: function () {
                this.$refs.addRuleFormRef.validate(async valid => {
                    if (!valid) {
                        return;
                    } else {
                        (this.btnLoading = true), (this.btnDisabled = true);
                        const {data: res} = await this.$http.post(
                            "system/department/add",
                            this.addRuleForm
                        );
                        if (res.success) {
                            this.$message.success("部门添加成功");
                            this.addRuleForm = {};
                            await this.getDepartmentList();
                        } else {
                            return this.$message.error("部门添加失败:" + res.data.errorMsg);
                        }
                        this.addDialogVisible = false;
                        (this.btnLoading = false), (this.btnDisabled = false);
                    }
                });
            },
            //加载部门别列表
            async getDepartmentList() {
                const { data: res } = await this.$http.get(
                    "system/department/findDepartmentList",
                    {
                        params: this.queryMap
                    }
                );
                if (!res.success) {
                    return this.$message.error("获取用户列表失败:"+res.data.errorMsg);
                } else {
                    this.total = res.data.total;
                    this.departmentData = res.data.rows;
                }
            },
            //改变页码
            handleSizeChange(newSize) {
                this.queryMap.pageSize = newSize;
                this.getDepartmentList();
            },
            //翻页
            handleCurrentChange(current) {
                this.queryMap.pageNum = current;
                this.getDepartmentList();
            },
            //关闭弹出框
            closeAddDialog() {
                this.$refs.addRuleFormRef.clearValidate();
                this.addRuleForm = {};
            },
            //关闭弹出框
            closeEditDialog() {
                this.$refs.editRuleFormRef.clearValidate();
                this.editRuleForm = {};
            }
        },
        created() {
            this.getDepartmentList();
            setTimeout(() => {
                this.loading = false;
            }, 500);
        }
    };
</script>
