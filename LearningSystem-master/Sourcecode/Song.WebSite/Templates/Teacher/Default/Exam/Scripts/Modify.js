﻿
$ready(function () {
    window.vapp = new Vue({
        el: '#vapp',
        data: {
            id: $api.querystring('id', 0),
            organ: {},
            tabs: [
                { title: '基本信息', name: 'general', icon: 'e6b0' },
                { title: '考试场次', name: 'exams', icon: 'e834' },
                { title: '参考人员', name: 'range', icon: 'e67d' }],
            activeName: 'general',     //选项卡

            //当前数据实体
            entity: {
                Exam_ID: 0,
                Exam_IsTheme: true,
                Exam_DateType: 1,
                Exam_IsRightClick: true,
                Exam_IsUse: true,
                Exam_GroupType: 1,
                Exam_UID: new Date().getTime()
            },
            rules: {
                Exam_Title: [{ required: true, message: '标题不得为空', trigger: 'blur' }]
            },
            //考试时间区间（当设置为“设定时间区间”时)
            dateRange: [],

            loading: false,
            loading_init: true,
            loading_upload: false        //附件上传的预载
        },
        watch: {
            //当考试时间方式更改时
            'entity.Exam_DateType': function (nv, ov) {
                if (nv == 2) {
                    var date = this.entity.Exam_Date;
                    var over = this.entity.Exam_DateOver;
                    if (date.getFullYear() - 100 > new Date().getFullYear() || date.getFullYear() + 100 < new Date().getFullYear())
                        date = new Date();
                    if (over.getFullYear() - 100 > new Date().getFullYear() || over.getFullYear() + 100 < new Date().getFullYear())
                        over = date.setMonth(date.getMonth() + 1);;
                    this.dateRange[0] = this.entity.Exam_Date = date;
                    this.dateRange[1] = this.entity.Exam_DateOver = over;
                }
                console.log(nv);
            }
        },
        created: function () {
            console.log(this.entity);
            var th = this;
            $api.get('Organization/Current').then(function (req) {
                th.loading_init = false;
                if (req.data.success) {
                    th.organ = req.data.result;
                    th.getTheme();
                } else {
                    console.error(req.data.exception);
                    throw req.data.message;
                }

            }).catch(function (err) {
                th.loading_init = false;
                console.error(err);
            });
        },
        mounted: function () {

        },
        methods: {
            //获取考试主题
            getTheme: function () {
                var th = this;
                if (th.id == 0) return;
                th.loading = true;
                $api.get('Exam/ForID', { 'id': th.id }).then(function (req) {
                    th.loading = false;
                    if (req.data.success) {
                        var result = req.data.result;
                        th.entity = result;
                        //时间区间
                        th.dateRange[0] = th.entity.Exam_Date;
                        th.dateRange[1] = th.entity.Exam_DateOver;
                    } else {
                        throw '未查询到数据';
                    }
                }).catch(function (err) {
                    th.loading = false;
                    th.$alert(err, '错误');
                });
            },
            //当前增加场次时
            addexam: function (exam, exams) {
                this.$forceUpdate();
            },
            //保存
            btnEnter: function (formName) {
                var th = this;
                //考试场次
                var exams = th.$refs['exam_items'].getexams();
                //关联的学员组
                var groups = th.$refs['group_select'].examGroup;

                this.$refs[formName].validate((valid) => {
                    if (valid) {
                        console.log(th.entity);
                        var apipath = "Exam/" + (th.id == 0 ? 'add' : 'Modify');
                        $api.post(apipath, { 'theme': th.entity, 'items': exams, 'groups': groups }).then(function (req) {
                            if (req.data.success) {
                                var result = req.data.result;
                                th.$notify({
                                    message: '操作成功！',
                                    type: 'success',
                                    position: 'bottom-left'
                                });
                                window.setTimeout(function () {
                                    th.operateSuccess();
                                }, 200);
                            } else {
                                console.error(req.data.exception);
                                throw req.config.way + ' ' + req.data.message;
                            }
                        }).catch(function (err) {
                            //alert(err);
                            Vue.prototype.$alert(err);
                            console.error(err);
                        });
                    } else {
                        console.log('error submit!!');
                        return false;
                    }
                });
            },
            //操作成功
            operateSuccess: function () {
                //当处理教师管理状态时
                var pagebox = window.top.$pagebox;
                var box = pagebox.get(window.name);
                var pid = box.pid;
                if (window.top.vapp.fresh) {
                    window.top.vapp.fresh(pid, 'vapp.handleCurrentChange');
                    window.setTimeout(function () {
                        pagebox.shut(window.name);
                    }, 1000);
                }
                else {
                    //当处于机构管理界面时
                    window.top.$pagebox.source.tab(window.name, 'vapp.handleCurrentChange', true);
                }
            }
        },
    });

}, ["Components/group_select.js",
    "Components/exam_items.js"]);
