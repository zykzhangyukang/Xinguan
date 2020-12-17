SESSION_KEY_LOGIN_MEMBER = "SESSION_KEY_LOGIN_MEMBER"; // 登录信息
SESSION_KEY_CHAPTER_ID="SESSION_KEY_CHAPTER_ID"; //大章id
SESSION_KEY_COURSE_ID="SESSION_KEY_COURSE_ID"; //课程id
SESSION_KEY_ACTIVE_PATH="SESSION_KEY_ACTIVE_PATH"; //路由激活
SESSION_KEY_VER_CODE_KEY="SESSION_KEY_VER_CODE_KEY"; //验证码的key

SessionStorage = {
    get: function (key) {
        let v = sessionStorage.getItem(key);
        if (v && typeof(v) !== "undefined" && v !== "undefined") {
            return JSON.parse(v);
        }
    },
    set: function (key, data) {
        sessionStorage.setItem(key, JSON.stringify(data));
    },
    remove: function (key) {
        sessionStorage.removeItem(key);
    },
    clearAll: function () {
        sessionStorage.clear();
    }
};
