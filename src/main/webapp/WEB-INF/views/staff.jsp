<%--
  Created by IntelliJ IDEA.
  User: minidwep
  Date: 2019/11/11
  Time: 17:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Teacher</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
            rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <script src="static/js/vue.js"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>

</head>
<body>
<!-- v-cloak 可以解决 插值表达式的闪烁问题-->
<!-- v-test 可以代替差值表达式-->
<div id="app">
    <!-- InsertModal -->
    <div class="modal fade" id="insertStaffModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="myModalLabel">添加教师</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <label for="staffName_insert_input" class="col-sm-2 control-label">staffName</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control"
                                       name="staffName" id="staffName_insert_input"> <span
                                    class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="staffNumber_insert_input" class="col-sm-2 control-label">staffNumber</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control"
                                       name="staffNumber" id="staffNumber_insert_input"> <span
                                    class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">staffgender</label>
                            <div class="col-sm-10">
                                <label class="radio-inline">
                                    <input type="radio"
                                           name="staffGender" id="gender1_insert_input" value="M"
                                           checked="checked"> 男
                                </label> <label class="radio-inline"> <input type="radio"
                                                                             name="staffGender" id="gender2_insert_input"
                                                                             value="F"> 女
                            </label>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="staffBirth_insert_input" class="col-sm-2 control-label">staffBirth</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control"
                                       name="staffBirth"   id="staffBirth_insert_input"> <span
                                    class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="staffMobile_insert_input" class="col-sm-2 control-label">staffMobile</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control"
                                       name="staffMobile"  id="staffMobile_insert_input"> <span
                                    class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">ClassName</label>
                            <div class="col-sm-10">
                                <!-- 部门提交id即可 -->
                                <select class="form-control" name="classesId" id="staff_add_select">
                                    <option  v-for="(item,i) in classesList" value ="item.classesId">
                                        {{item.classesName}}[{{item.classesSpecialty}}({{item.classesDirection}})] </option>
                                </select>
                            </div>
                        </div>

                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" id="staff_insert_btn">Save changes</button>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <!-- 标题 -->
        <div class="row ">
            <div class="col-md-12">
                <h1>SSM-CRUD</h1>
            </div>
        </div>
        <!-- 按钮 -->
        <div class="row ">
            <div class="col-md-4 col-md-offset-8">
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#insertStaffModal">新增</button>
                <button class="btn btn-danger">删除</button>
            </div>
        </div>
        <!-- 表格 -->
        <div class="row ">
            <div class="col-md-12">
                <table class="table table-hover" id="emps-table">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>姓名</th>
                        <th>学号</th>
                        <th>性别</th>
                        <th>电话</th>
                        <th>日期</th>

                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>

                    <tr v-for="(item,i) in teacherList">
                        <td>{{item.staffId}}</td>
                        <td>{{item.staffName}}</td>
                        <td>{{item.staffNumber}}</td>
                        <td>{{item.staffGender == 'M' ? '男':'女'}}</td>
                        <td>{{item.staffMobile}}</td>
                        <td>{{item.staffBitrh}}</td>
                        <td>
                            <button type="button" class="btn btn-primary btn-sm">
                                编辑 <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                            </button>
                            <button type="button" class="btn btn-danger btn-sm">
                                删除 <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                            </button>

                        </td>
                    </tr>
                    </tbody>


                </table>
            </div>
        </div>
        <!-- 分页 -->
        <div class="row ">
            <!-- 分页文字信息 -->
            <div class="col-md-6" id="nav-head">

            </div>
            <!-- 分页条信息 -->
            <div class="col-md-6">
                <nav id="nav-body" aria-label="Page navigation">
                    <ul class="pagination">
                        <li>
                            <a href="#" aria-label="Previous" @click="toPrePage()">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>

                    <li  href="#" :class="[item == pageNum ? 'active' :'']" v-for="(item,i) in navigatepageNums" @click="toPage(item)" >
                        <a >{{item}}</a>
                    </li>

                        <li>
                            <a href="#" aria-label="Next" @click="toNexPage()">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>

            </div>
        </div>

    </div>


</div>

<script>
    var vm = new Vue({
        el: '#app',
        data: {
            appPath: 'http://localhost:8080/shixun',
            teacherPageInfo: '',
            teacherList:'',
            navigatepageNums:'',
            prePage:'',
            nextPage:'',
            isFirstPage:'',
            isLastPage:'',
            pageNum:'',
            classesList:''

        },
        methods:{
            toPage(pn){
                axios
                    .get(this.appPath + '/staffPage?pn='+pn)
                    .then((result)=> {
                        this.teacherPageInfo = result.data;
                        this.teacherList = result.data.extend.pageInfo.list;
                        this.navigatepageNums = result.data.extend.pageInfo.navigatepageNums;
                        this.prePage = result.data.extend.pageInfo.prePage;
                        this.nextPage = result.data.extend.pageInfo.nextPage;
                        this.pageNum = result.data.extend.pageInfo.pageNum;
                    })
                    .catch(function (error) { // 请求失败处理
                        console.log(error);
                    });
            },
            toPrePage(){
                this.toPage(this.prePage);

            },
            toNexPage(){
                this.toPage(this.nextPage);
            }
        },

        mounted() {
            axios
                .get(this.appPath+'/staffPage')
                .then((result)=> {
                    this.teacherPageInfo = result.data;
                    this.teacherList = result.data.extend.pageInfo.list;
                    this.navigatepageNums = result.data.extend.pageInfo.navigatepageNums;
                    this.prePage = result.data.extend.pageInfo.prePage;
                    this.nextPage = result.data.extend.pageInfo.nextPage;
                    this.pageNum = result.data.extend.pageInfo.pageNum;

                })
                .catch(function (error) { // 请求失败处理
                    console.log(error);
                });

            axios
                .get(this.appPath+'/classes')
                .then((result)=> {
                    this.classesList = result.data.extend.classes;
                    console.log(this.classesList);
                })
                .catch(function (error) { // 请求失败处理
                    console.log(error);
                });

        }
    })
</script>
<script
        src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>
