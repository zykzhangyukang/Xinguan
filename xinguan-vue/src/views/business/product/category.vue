<template>
    <div id="category">
        <!-- 面包导航 -->
        <el-breadcrumb separator="/" style="padding-left:10px;padding-bottom:10px;font-size:12px;">
            <el-breadcrumb-item :to="{ path: '/home' }">首页</el-breadcrumb-item>
            <el-breadcrumb-item>物资管理</el-breadcrumb-item>
            <el-breadcrumb-item>物资分类</el-breadcrumb-item>
        </el-breadcrumb>
        <el-card class="box-card">
            <el-row :gutter="20">
                <el-col :span="8">
                    <el-button type="warning"  icon="el-icon-circle-plus-outline" @click="openAdd" v-hasPermission="'productCategory:add'">添加</el-button>
                </el-col>
            </el-row>
            <!-- 表格部分 -->
            <zk-table
                    v-loading="loading"
                    style="margin-top:10px;"
                    ref="table"
                    show-index
                    :expand-type="false"
                    :selection-type="false"
                    sum-text="sum"
                    index-text="#"
                    :data="categorys"
                    :columns="columns"
            >
                <!-- 层级 -->
                <template slot="lev" slot-scope="scope">
                    <el-tag v-if="scope.row.lev===1">一级分类</el-tag>
                    <el-tag type="success" v-else-if="scope.row.lev===2">二级分类</el-tag>
                    <el-tag type="danger" v-else>三级分类</el-tag>
                </template>
                <!-- 操作 -->
                <template slot="caozuo" slot-scope="scope">
                    <el-button  v-hasPermission="'productCategory:edit'" type="primary" size="mini" icon="el-icon-edit" @click="edit(scope.row.id)"></el-button>
                    <el-button v-hasPermission="'productCategory:delete'" type="danger" size="mini" icon="el-icon-delete" @click="del(scope.row.id)"></el-button>
                </template>
            </zk-table>
            <!-- 分页 -->
            <el-pagination
                    style="margin-top:10px;"
                    background

                    :show-header="true"
                    @size-change="handleSizeChange"
                    @current-change="handleCurrentChange"
                    :current-page="this.queryMap.pageNum"
                    :page-sizes="[5,10, 15, 20, 25,30]"
                    :page-size="this.queryMap.pageSize"
                    layout="total, sizes, prev, pager, next, jumper"
                    :total="total"
            ></el-pagination>
            <!-- 添加弹出框 -->
            <el-dialog title="添加分类" :visible.sync="addDialogVisible" @close="addCloseDialog" width="50%">
        <span>
          <el-form  :model="addRuleForm" :rules="addRules" ref="addRuleFormRef" label-width="100px">
            <el-form-item label="分类名称" prop="name">
              <el-input v-model="addRuleForm.name"></el-input>
            </el-form-item>
            <el-form-item label="父分类" prop="pid">
              <el-cascader
                      @change="selectParentChange"
                      @clear="clearParent"
                      :change-on-select="true"
                      :options="parentCategorys"
                      clearable
                      filterable
                      style="width:100%"
                      :props="selectProps"
                      v-model="pKeys"
              ></el-cascader>
            </el-form-item>
            <el-form-item label="备注" prop="remark">
              <el-input type="textarea" v-model="addRuleForm.remark"></el-input>
            </el-form-item>
            <el-form-item label="排序" prop="sort">
              <el-input-number v-model="addRuleForm.sort" :min="1" :max="10" label="排序"></el-input-number>
            </el-form-item>
          </el-form>
        </span>
                <span slot="footer" class="dialog-footer">
          <el-button @click="addDialogVisible = false">取 消</el-button>
          <el-button type="primary" @click="add" :disabled="btnDisabled" :loading="btnLoading">确 定</el-button>
        </span>
            </el-dialog>
            <!-- 编辑弹出框 -->
            <el-dialog title="编辑分类" :visible.sync="editDialogVisible" @close="editCloseDialog" width="50%">
        <span>
          <el-form :model="editRuleForm" :rules="addRules" ref="editRuleFormRef" label-width="100px">
            <el-form-item label="分类名称" prop="name">
              <el-input v-model="editRuleForm.name"></el-input>
            </el-form-item>

            <el-form-item label="备注" prop="remark">
              <el-input type="textarea" v-model="editRuleForm.remark"></el-input>
            </el-form-item>
            <el-form-item label="排序" prop="sort">
              <el-input-number v-model="editRuleForm.sort" :min="1" :max="10" label="排序"></el-input-number>
            </el-form-item>
          </el-form>
        </span>
                <span slot="footer" class="dialog-footer">
          <el-button @click="editDialogVisible = false">取 消</el-button>
          <el-button type="primary" @click="update" :disabled="btnDisabled" :loading="btnLoading">确 定</el-button>
        </span>
            </el-dialog>
        </el-card>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                btnLoading: false,
                btnDisabled: false,
                loading:true,
                pKeys: [],
                addDialogVisible: false,
                editDialogVisible: false,
                editRuleForm:[],
                addRuleForm: { pid: "0", name: "", remark: "", sort: "" }, //添加表单
                addRules: {
                    name: [
                        { required: true, message: "请输入分类名", trigger: "blur" },
                        { min: 2, max: 10, message: "长度在 2 到 10 个字符", trigger: "blur" }
                    ],
                    remark: [
                        { required: true, message: "请输入备注信息", trigger: "blur" }
                    ],
                    sort: [{ required: true, message: "请输入排序号", trigger: "blur" }]
                },
                total: 0,
                queryMap: { pageNum: 1, pageSize: 5 },
                categorys: [],
                parentCategorys: [],
                selectProps: {
                    expandTrigger: "hover",
                    value: "id",
                    label: "name",
                    children: "children"
                }, //级联选择器配置项
                columns: [
                    {
                        label: "分类名称",
                        prop: "name"
                    },
                    {
                        label: "排序",
                        prop: "sort"
                    },
                    {
                        label: "创建时间",
                        prop: "createTime"
                    },
                    {
                        label: "修改时间",
                        prop: "modifiedTime"
                    },
                    {
                        label: "备注",
                        prop: "remark"
                    },
                    {
                        label: "层级",
                        prop: "lev",
                        type: "template",
                        template: "lev"
                    },
                    {
                        label: "操作",
                        type: "template",
                        template: "caozuo"
                    }
                ]
            };
        },
        methods: {
            update: async function () {
                this.$refs.editRuleFormRef.validate(async valid => {
                    if (!valid) {
                        return;
                    } else {
                        this.btnLoading = true;
                        this.btnDisabled = true;
                        const {data: res} = await this.$http.put(
                            "business/productCategory/update/" + this.editRuleForm.id,
                            this.editRuleForm
                        );
                        if (res.success) {
                            this.$notify({
                                title: "成功",
                                message: "分类信息更新",
                                type: "success"
                            });
                            await this.getCategoryList();
                        } else {
                            this.$message.error("分类信息更新失败:" + res.data.errorMsg);
                        }
                        this.btnLoading = false;
                        this.btnDisabled = false;
                        this.editDialogVisible = false;
                    }
                });
            },
            //修改
            async edit(id) {
                const { data: res } = await this.$http.get("business/productCategory/edit/" + id);
                if (res.success) {
                    this.editRuleForm = res.data;
                } else {
                    return this.$message.error("分类信息编辑失败"+res.data.errorMsg);
                }
                this.editDialogVisible = true;
            },
            //删除分类
            async del(id) {
                const res = await this.$confirm(
                    "此操作将永久删除该分类, 是否继续?",
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
                if (res === "confirm") {
                    const { data: res } = await this.$http.delete(
                        "business/productCategory/delete/" + id
                    );
                    console.log(res);
                    if (res.success) {
                        this.$message.success("分类删除成功");
                        await this.getCategoryList();
                    } else {
                        this.$message.error(res.data.errorMsg);
                    }
                }
            },

            //父级分类中改变
            selectParentChange() {
                const len = this.pKeys.length;
                if (len > 0) {
                    this.addRuleForm.pid = this.pKeys[len - 1];
                }else{
                    this.addRuleForm.pid=0;
                }
            },
            //加载分类数据
            async getCategoryList() {
                const { data: res } = await this.$http.get(
                    "business/productCategory/categoryTree",
                    {
                        params: this.queryMap
                    }
                );
                if (!res.success) return this.$message.error("分类列表失败");
                this.categorys = res.data.rows;
                this.total = res.data.total;
            },
            //加载父级分类数据
            async getParentCategoryList() {
                const { data: res } = await this.$http.get(
                    "business/productCategory/getParentCategoryTree"
                );
                if (!res.success) return this.$message.error("父级分类列表失败:"+res.data.errorMsg);
                this.parentCategorys = res.data;
            },
            //添加分类
            async add() {
                this.$refs.addRuleFormRef.validate(async valid => {
                    if (!valid) {
                        return;
                    } else {
                        this.btnLoading=true;
                        this.btnDisabled=true;
                        if(this.addRuleForm.pid == null){
                            this.addRuleForm.pid=0;
                        }
                        const { data: res } = await this.$http.post(
                            "business/productCategory/add",
                            this.addRuleForm
                        );
                        if (res.success) {
                            this.$message.success("分类添加成功");
                            await this.getCategoryList();
                        } else {
                            return this.$message.error("分类添加失败:" + res.data.errorMsg);
                        }
                        this.addDialogVisible = false;
                        this.btnLoading=false;
                        this.btnDisabled=false;
                    }
                });
            },
            //改变页码
            handleSizeChange(newSize) {
                this.queryMap.pageSize = newSize;
                this.getCategoryList();
            },
            //翻页
            handleCurrentChange(current) {
                this.queryMap.pageNum = current;
                this.getCategoryList();
            },
            //打开添加
            openAdd() {
                this.addDialogVisible = true;
                this.getParentCategoryList();
            },
            //关闭弹出框
            addCloseDialog() {
                this.$refs.addRuleFormRef.clearValidate();
                this.addRuleForm = {};
                this.pKeys = [];
            },
            editCloseDialog(){
                this.$refs.editRuleFormRef.clearValidate();
                this.editRuleForm = {};

            },
            clearParent(){
                this.addRuleForm.pid='';
            }

        },
        created() {
            this.getCategoryList();

            setTimeout(() => {
                this.loading = false;
            }, 500);
        }
    };
</script>
