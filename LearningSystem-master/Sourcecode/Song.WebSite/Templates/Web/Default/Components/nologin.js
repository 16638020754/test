﻿
//未登录的效果
$dom.load.css([$dom.path() + 'Components/Styles/nologin.css']);
Vue.component('nologin', {
    //友情链接分类，取多少条记录，低于多少条不再显示,排序方式
    props: [],
    data: function () {
        return {
        }
    },
    watch: {},
    computed: {},
    mounted: function () { },
    methods: {},
    template: `<div id="weisha_nologin">
        <icon>&#xe7ad</icon>
        <div>学员未登录，无权访问！</div>
    </div>`
});
