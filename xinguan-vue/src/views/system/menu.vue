<template>
    <div id="roles" v-loading="loading">
        <!-- 面包导航 -->
        <el-breadcrumb separator="/" style="padding-left:10px;padding-bottom:10px;font-size:12px;">
            <el-breadcrumb-item :to="{ path: '/home' }">首页</el-breadcrumb-item>
            <el-breadcrumb-item>系统管理</el-breadcrumb-item>
            <el-breadcrumb-item>菜单管理</el-breadcrumb-item>
        </el-breadcrumb>
        <!-- 卡片主体 -->
        <el-card class="box-card">
            <div class="block">
                <!-- 节点过滤 -->
                <el-row>
                    <el-col :span="16">
                        <div class="grid-content bg-purple">
                            <el-input placeholder="输入关键字进行过滤" v-model="filterText" clearable></el-input>
                        </div>
                    </el-col>
                    <el-col :span="2">
                        <div class="grid-content bg-purple-light">
                            <el-button
                                    type="primary"
                                    icon="el-icon-plus"
                                    style="margin-left:20px;"
                                    @click="openParentAdd"
                            >父级</el-button>
                        </div>
                    </el-col>
                    <el-col :span="2">
                        <el-button
                                v-hasPermission="'menu:export'"
                                style="margin-left:20px;"
                                icon="el-icon-download"
                                @click="downExcel"
                        >导出</el-button>
                    </el-col>

                </el-row>

                <p>菜单权限树</p>
                <el-tree
                        :data="data"
                        accordion
                        :auto-expand-parent="false"
                        node-key="id"
                        show-checkbox
                        :default-expanded-keys="open"
                        :expand-on-click-node="false"
                        :render-content="renderContent"
                        :props="defaultProps"
                        highlight-current
                        :filter-node-method="filterNode"
                        ref="tree"
                ></el-tree>
            </div>
        </el-card>
        <!-- 节点新增弹出框 -->
        <el-dialog :title="addTitle" :visible.sync="addDialogVisible" @close="addClose" width="50%">
      <span>
        <el-form
                size="mini"
                ref="addFormRef"
                :model="addForm"
                label-width="80px"
                :rules="addFormRules"
        >
          <el-form-item label="节点名称" prop="menuName">
            <el-input v-model="addForm.menuName"></el-input>
          </el-form-item>
          <el-form-item label="URL">
            <el-input v-model="addForm.url"></el-input>
          </el-form-item>
          <el-form-item label="权限编码">
            <el-input v-model="addForm.perms"></el-input>
          </el-form-item>
          <el-form-item label="图标">
            <el-input v-model="addForm.icon"></el-input>
          </el-form-item>
          <el-form-item label="是否可用" prop="disabled">
            <template>
              <el-radio v-model="addForm.disabled" label="false">可用</el-radio>
              <el-radio v-model="addForm.disabled" label="true">禁用</el-radio>
            </template>
          </el-form-item>
          <el-form-item label="是否展开" prop="open">
            <template>
              <el-radio v-model="addForm.open" label="1">展开</el-radio>
              <el-radio v-model="addForm.open" label="0">关闭</el-radio>
            </template>
          </el-form-item>
          <el-form-item label="排序" prop="orderNum">
            <el-input-number v-model="addForm.orderNum" :min="1" :max="10" label="描述文字"></el-input-number>
          </el-form-item>
          <el-form-item label="类型" prop="type">
            <template>
              <el-radio v-model="addForm.type" label="0">菜单</el-radio>
              <el-radio v-model="addForm.type" label="1">按钮</el-radio>
            </template>
          </el-form-item>
        </el-form>
      </span>
            <span slot="footer" class="dialog-footer">
        <el-button @click="addDialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="addNode" :loading="btnLoading" :disabled="btnDisabled">确 定</el-button>
      </span>
        </el-dialog>
        <!-- 编辑节点弹出框 -->
        <el-dialog :title="editTitle" :visible.sync="editlogVisible" width="50%" @close="editClose">
      <span>
        <el-form
                size="mini"
                ref="editFormRef"
                :model="editForm"
                label-width="80px"
                :rules="addFormRules"
        >
          <el-form-item label="节点名称" prop="menuName">
            <el-input v-model="editForm.menuName"></el-input>
          </el-form-item>
          <el-form-item label="URL">
            <el-input v-model="editForm.url"></el-input>
          </el-form-item>
          <el-form-item label="权限编码">
            <el-input v-model="editForm.perms"></el-input>
          </el-form-item>
          <el-form-item label="图标">
            <el-input v-model="editForm.icon"></el-input>
          </el-form-item>
          <el-form-item label="是否可用" prop="disabled">
            <template>
              <el-radio v-model="editForm.disabled" :label="false">可用</el-radio>
              <el-radio v-model="editForm.disabled" :label="true">禁用</el-radio>
            </template>
          </el-form-item>
          <el-form-item label="是否展开" prop="open">
            <template>
              <el-radio v-model="editForm.open" :label="1">展开</el-radio>
              <el-radio v-model="editForm.open" :label="0">关闭</el-radio>
            </template>
          </el-form-item>
          <el-form-item label="排序" prop="orderNum">
            <el-input-number v-model="editForm.orderNum" :min="1" :max="10" label="描述文字"></el-input-number>
          </el-form-item>
          <el-form-item label="类型" prop="type">
            <template>
              <el-radio v-model="editForm.type" :label="0">菜单</el-radio>
              <el-radio v-model="editForm.type" :label="1">按钮</el-radio>
            </template>
          </el-form-item>
        </el-form>
      </span>
            <span slot="footer" class="dialog-footer">
        <el-button @click="editlogVisible = false">取 消</el-button>
        <el-button
                type="primary"
                @click="updateMenu"
                :loading="btnLoading"
                :disabled="btnDisabled"
        >确 定</el-button>
      </span>
        </el-dialog>
    </div>
</template>

<script>
    import axios from "axios";
    let id = 1000;

    export default {
        watch: {
            filterText(val) {
                this.$refs.tree.filter(val);
            }
        },

        data() {
            const data = [];

            return {
                btnLoading: false,
                btnDisabled: false,
                loading: true,
                open: [], //展开节点
                filterText: "", //节点过滤文本
                addDialogVisible: false, //新增节点弹出框
                editlogVisible: false, //编辑节点弹出框
                addTitle: "",
                editTitle: "",
                addForm: {
                    parentId: "",
                    menuName: "",
                    url: "",
                    type: "",
                    orderNum: "",
                    disabled: "",
                    open: "",
                    perms: ""
                }, //添加请求表单数据
                editForm: {}, //编辑节点表单数据
                addFormRules: {
                    menuName: [
                        { required: true, message: "节点名称不能为空", trigger: "blur" },
                        { min: 3, max: 10, message: "长度在 3 到 10 个字符", trigger: "blur" }
                    ],
                    disabled: [
                        { required: true, message: "节点状态不能为空", trigger: "blur" }
                    ],

                    orderNum: [
                        { required: true, message: "排序不能为空", trigger: "blur" }
                    ],
                    type: [{ required: true, message: "类型不能为空", trigger: "blur" }],
                    open: [{ required: true, message: "是否展开不能为空", trigger: "blur" }]
                }, //添加表单验证规则
                pNode: {}, //父节点
                data: JSON.parse(JSON.stringify(data)),

                defaultProps: {
                    children: "children",
                    label: "menuName"
                }
            };
        },
        created() {
            this.getMenuTree();
            setTimeout(() => {
                this.loading = false;
            }, 500);
        },
        methods: {

            /**
             * 加载菜单表格
             */
            downExcel() {
                var $this = this;
                const res = axios.request({
                    url: "/menu/excel",
                    method: "post",
                    responseType: "blob"
                })
                    .then(res => {
                        if(res.headers['content-type']==='application/json'){
                            return $this.$message.error("Subject does not have permission [menu:export]");
                        }
                        const data = res.data;
                        let url = window.URL.createObjectURL(data); // 将二进制文件转化为可访问的url
                        const a = document.createElement("a");
                        document.body.appendChild(a);
                        a.href = url;
                        a.download = "菜单列表.xls";
                        a.click();
                        window.URL.revokeObjectURL(url);
                    });
            },


            //更新菜单
            async updateMenu() {
                this.$refs.editFormRef.validate(async valid => {
                    if (!valid) {
                        return;
                    } else {
                        this.btnLoading = true;
                        this.btnDisabled = true;
                        const { data: res } = await this.$http.put(
                            "system/menu/update/" + this.editForm.id,
                            this.editForm
                        );
                        if (res.success) {
                            this.$message({
                                title: "成功",
                                message: "节点信息更新",
                                type: "success"
                            });
                            this.editForm = {};
                            this.editlogVisible = false;
                            await this.getMenuTree();
                        } else {
                            this.btnLoading = false;
                            this.btnDisabled = false;
                            return this.$message.error("更新菜单失败"+res.data.errorMsg);
                        }
                    }
                });
            },
            //点击编辑节点
            async edit(data) {
                this.editTitle = "编辑：【" + data.menuName + "】";
                const { data: res } = await this.$http.get("system/menu/edit/" + data.id);
                if (res.success) {
                    this.editForm = res.data;
                    this.editlogVisible = true;
                } else {
                    return this.$message.error("节点编辑失败:" + res.data.errorMsg);
                }
            },
            //过滤节点
            filterNode(value, data) {
                if (!value) return true;
                return data.menuName.indexOf(value) !== -1;
            },
            //关闭添加
            addClose() {
                this.$refs.addFormRef.clearValidate();
                this.addForm = {};
            },
            editClose() {
                this.$refs.editFormRef.clearValidate();
                this.editForm = {};
            },
            //加载菜单树
            async getMenuTree() {
                const { data: res } = await this.$http.get("system/menu/tree");
                if (res.success) {
                    this.data = res.data.tree;
                    this.open = res.data.open;
                }
            },
            //打开添加框
            openAdd(data) {
                this.addTitle = "添加节点 ：当前【" + data.menuName + "】";
                this.addDialogVisible = true;
                this.addForm.parentId = data.id;
                this.pNode = data;
            },
            //添加最高父级节点
            openParentAdd(data) {
                this.addTitle = "添加第一父级";
                this.addDialogVisible = true;
                this.addForm.parentId = 0;
            },
            //点击删除按钮
            async delNode(node, data) {
                const res = await this.$confirm(
                    "此操作将永久删除该节点, 是否继续?",
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
                    console.log(node);
                    const { data: res } = await this.$http.delete(
                        "system/menu/delete/" + node.data.id
                    );
                    if (res.success) {
                        this.$message.success("节点删除成功");
                        await this.getMenuTree();
                    } else {
                        this.$message.error("节点删除失败:" + res.data.errorMsg);
                    }
                }
            },
            //发送添加节点请求
            async addNode() {
                this.$refs.addFormRef.validate(async valid => {
                    if (!valid) {
                        return;
                    } else {
                        this.btnLoading = true;
                        this.btnDisabled = true;
                        const { data: res } = await this.$http.post("system/menu/add", this.addForm);
                        if (res.success) {
                            this.$message.success("节点添加成功");
                            this.addDialogVisible = false;
                            await this.getMenuTree();
                        } else {
                            this.$message.error("节点添加失败:"+res.data.errorMsg);
                        }
                        this.btnLoading=false;
                        this.btnDisabled = false;
                    }
                });
            },
            //前端添加节点
            append(data, newChild) {
                //   var newChild = { id: 1231, label: "qqqqq", children: [] };
                if (!data.children) {
                    this.$set(data, "children", []);
                }
                data.children.push(newChild);
            },

            remove(node, data) {
                const parent = node.parent;
                const children = parent.data.children || parent.data;
                const index = children.findIndex(d => d.id === data.id);
                children.splice(index, 1);
            },

            renderContent(h, { node, data, store }) {
                return (
                    <span class="custom-tree-node">
                    <span>
                    <i class={data.icon}></i>&nbsp;&nbsp;&nbsp;{node.label}
                {node.data.type == 0 ?  <el-tag style='margin-left:20px;'  effect='plain' size='mini'>菜单</el-tag>:
                    <el-tag style='margin-left:20px;' type='warning' effect='plain' size='mini'>权限  [{node.data.perms}]</el-tag>

                }
            </span>
                <span>
                <el-button
                size="mini"
                type="text"
                on-click={() => {
                    this.edit(data);
                    return false;
                }}
            >
            <i class="el-icon-edit"></i>&nbsp;编辑
                    </el-button>
                    <el-button
                size="mini"
                type="text"
                on-click={() => {
                    this.openAdd(data);
                }}
            >
            <i class="el-icon-plus"></i>&nbsp;增加
                    </el-button>

                    <el-button
                size="mini"
                type="text"
                on-click={() => this.delNode(node, data)}
            >
            <i class="el-icon-delete"></i>&nbsp;删除
                    </el-button>
                    </span>
                    </span>
            );
            }
        }
    };
</script>

<style>
    .custom-tree-node {
        flex: 1;
        display: flex;
        align-items: center;
        justify-content: space-between;
        font-size: 14px;
        padding-right: 8px;
    }
</style>
