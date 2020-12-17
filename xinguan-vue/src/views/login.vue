<template>
    <div id="login">
        <h1 style="position: absolute;color: #fff;left: 50%;transform: translateX(-50%); top: -110px;">新冠-物资管理系统</h1>
        <el-form
                :model="userLoginForm"
                :rules="loginRules"
                status-icon
                ref="userLoginFormRef"
                label-position="left"
                label-width="0px"
                class="demo-ruleForm login-page"
        >
            <h3 class="title">系统登录</h3>
            <el-form-item prop="username">
                <el-input
                        type="text"
                        @keyup.enter.native="handleSubmit"
                        v-model="userLoginForm.username"
                        auto-complete="off"
                        placeholder="用户名"
                        prefix-icon="iconfont el-icon-user"
                ></el-input>
            </el-form-item>
            <el-form-item prop="password">
                <el-input
                        @keyup.enter.native="handleSubmit"
                        type="password"
                        v-model="userLoginForm.password"
                        auto-complete="off"
                        placeholder="密码"
                        prefix-icon="el-icon-suitcase-1"
                ></el-input>
            </el-form-item>
            <div></div>

            <el-checkbox v-model="checked" class="rememberme">记住密码</el-checkbox>
            <el-form-item style="width:100%;">
                <div style="float:right;">
                    <el-button
                            type="primary"
                            class="el-icon-mobile-phone"
                            @click="handleSubmit"
                            :loading="loading"
                    >登录
                    </el-button>
                    <el-button class="el-icon-refresh" @click="resetForm">重置</el-button>
                </div>
            </el-form-item>
        </el-form>

        <!-- 验证码 -->
        <Vcode
                :show="isShow"
                @success="success"
                @close="close"
                :canvasWidth="500"
                :canvasHeight="350"
        />
    </div>
</template>

<script>
    import Vcode from "vue-puzzle-vcode";

    export default {
        data() {
            return {
                isShow: false,
                dialogVisible: false,
                imgCode: undefined,
                //表单用户登入数据
                loading: false,
                userLoginForm: {
                    username: "蔡徐坤",
                    password: "123456"
                },
                checked: true,

                //验证规则
                loginRules: {
                    username: [
                        {required: true, message: "请输入用户名", trigger: "blur"},
                        {min: 3, max: 12, message: "长度在 3 到 12 个字符", trigger: "blur"}
                    ],
                    password: [
                        {required: true, message: "请输入用户密码", trigger: "blur"},
                        {min: 6, max: 15, message: "长度在 6 到 15 个字符", trigger: "blur"}
                    ]
                },
            };
        },
        components: {
            Vcode
        },

        methods: {
            //登入提交
            handleSubmit: function () {
                this.$refs.userLoginFormRef.validate(valid => {
                    if (!valid) {
                        return;
                    } else {
                        this.isShow = true;
                    }
                });
            },
            //重置表单
            resetForm: function () {
                this.$refs.userLoginFormRef.resetFields();
            },
            //验证成功
            async success() {
                this.loading = true;
                //发起登入请求
                const {data: res} = await this.$http.post("system/user/login",this.userLoginForm);
                if (res.success) {
                    this.$message({
                        title: "登入成功",
                        message: "欢迎你进入系统",
                        type: "success"
                    });
                    LocalStorage.set(LOCAL_KEY_XINGUAN_ACCESS_TOKEN, res.data);
                    await this.getUserInfo();
                } else {
                    this.isShow = false;
                    this.$message.error({
                        title: "登入失败",
                        message: res.data.errorMsg,
                        type: "error"
                    });
                }
                this.loading = false;
            },

            /**
             获取用户信息
             */
            async getUserInfo() {
                const {data: res} = await this.$http.get("system/user/info");
                if (!res.success) {
                    return this.$message.error("获取用户信息失败:" + res.data.errorMsg);
                } else {
                    this.userInfo = res.data;
                    this.$store.commit("setUserInfo", res.data);
                    await this.$router.push("/home");
                }
            },

            close() {
                this.isShow = false;
            }
        },
        created() {
        }
    };
</script>

<style scoped>
    .login-container {
        width: 100%;
        height: 100%;

    }

    #login {
        position: relative;
    }


    .login-page {
        position: relative;
        -webkit-border-radius: 5px;
        border-radius: 5px;
        margin: 190px auto;
        width: 370px;
        padding: 40px 35px 15px;
        background: #fff;
        border: 1px solid #eaeaea;
    }

    label.el-checkbox.rememberme {
        margin: 0px 0px 15px;
        text-align: left;
    }

</style>


