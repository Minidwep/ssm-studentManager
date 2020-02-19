<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>员工列表</title>

    <!-- Bootstrap -->
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
            rel="stylesheet">

    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<h1>你好，世界！</h1>
<!-- InsertModal -->
<div class="modal fade" id="insertStudentModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">添加学生</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="studentName_insert_input" class="col-sm-2 control-label">studentName</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control"
                                   name="studentName" id="studentName_insert_input"> <span
                                class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="studentNumber_insert_input" class="col-sm-2 control-label">studentNumber</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control"
                                   name="studentNumber" id="studentNumber_insert_input"> <span
                                class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">studentgender</label>
                        <div class="col-sm-10">
                            <label class="radio-inline">
                                <input type="radio"
                                       name="studentGender" id="gender1_insert_input" value="M"
                                       checked="checked"> 男
                            </label> <label class="radio-inline"> <input type="radio"
                                                                         name="studentGender" id="gender2_insert_input"
                                                                         value="F"> 女
                        </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="studentAge_insert_input" class="col-sm-2 control-label">studentAge</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control"
                                   name="studentAge" id="studentAge_insert_input"> <span
                                class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="studentBirth_insert_input" class="col-sm-2 control-label">studentBirth</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control"
                                   name="studentBirth"   id="studentBirth_insert_input"> <span
                                class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="studentMobile_insert_input" class="col-sm-2 control-label">studentMobile</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control"
                                   name="studentMobile"  id="studentMobile_insert_input"> <span
                                class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">ClassName</label>
                        <div class="col-sm-10">
                            <!-- 部门提交id即可 -->
                            <select class="form-control" name="classesId" id="student_add_select">
                            </select>
                        </div>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" id="student_insert_btn">Save changes</button>
            </div>
        </div>
    </div>
</div>
<!-- UpdateModal -->
<div class="modal fade" id="updateStudentModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="">修改学生</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="studentName_update_input" class="col-sm-2 control-label">StudentName</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control"
                                   name="studentName" id="studentName_update_input"> <span
                                class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="studentNumber_update_input" class="col-sm-2 control-label">StudentNumber</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control"
                                   name="studentNumber" id="studentNumber_update_input" readonly> <span
                                class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Studentgender</label>
                        <div class="col-sm-10">
                            <label class="radio-inline">
                                <input type="radio"
                                       name="studentGender" id="gender1_update_input" value="M"
                                       > 男
                            </label> <label class="radio-inline"> <input type="radio"
                                                                         name="studentGender" id="gender2_update_input"
                                                                         value="F"> 女
                        </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="studentAge_update_input" class="col-sm-2 control-label">StudentAge</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control"
                                   name="studentAge" id="studentAge_update_input"> <span
                                class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="studentBirth_update_input" class="col-sm-2 control-label">StudentBirth</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control"
                                   name="studentBirth"   id="studentBirth_update_input"> <span
                                class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="studentMobile_update_input" class="col-sm-2 control-label">StudentMobile</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control"
                                   name="studentMobile"  id="studentMobile_update_input"> <span
                                class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">ClassName</label>
                        <div class="col-sm-10">
                            <!-- 部门提交id即可 -->
                            <select class="form-control" name="classesId" id="student_update_select">
                            </select>
                        </div>
                    </div>
                    <input type="hidden" class="form-control"
                           name="studentId" id="studentId_update_input"> <span
                        class="help-block"></span>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" id="student_update_btn">Save changes</button>
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
            <!-- Button trigger modal -->
            <button type="button" id="insert_student_model_btn" class="btn btn-primary">新增</button>
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
                    <th>年龄</th>
                    <th>电话</th>
                    <th>日期</th>
                    <th>班级</th>
                    <th>专业</th>
                    <th>方向</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>

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
                <li>
                    <a href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li>
                    <a href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </nav>

        </div>
    </div>

</div>


<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script
        src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
<script>
    var total_record;
    var current_page;
    // 页面加载完以后 发送一个ajax请求
    $(function () {
        to_page(1);
    })

    function to_page(pn) {
        $.ajax({
            url: "${APP_PATH}/studentPage",
            data: "pn=" + pn,
            type: "GET",
            success: function (result) {
                // console.log(result);
                build_emps_table(result);
                build_page_nav(result);
            }
        })

    }


    function build_emps_table(result) {
        $("#emps-table tbody").empty();
        var students = result.extend.pageInfo.list;
        $.each(students, function (index, item) {

            // alert(item.empName);
            var studentIdTd = $("<td></td>").append(item.studentId);
            var studentNameTd = $("<td></td>").append(item.studentName);
            var studentNumber = $("<td></td>").append(item.studentNumber);
            var gender = item.studentGender == "F" ? "女" : "男";
            var studentGender = $("<td></td>").append(gender);
            var studentAge = $("<td></td>").append(item.studentAge);
            var studentMobile = $("<td></td>").append(item.studentMobile);
            var studentBirth = $("<td></td>").append(item.studentBirth);
            var classesName = $("<td></td>").append(item.classes.classesName);
            var classesSpecialty = $("<td></td>").append(item.classes.classesSpecialty);
            var classesDirection = $("<td></td>").append(item.classes.classesDirection);

            // var editBtn = $("<button class=\"btn btn-primary\">新增</button>");
            //  $("#").attr("ajax-va", "success");
            var editBtn = $("<button ></button>").addClass("btn btn-primary").append($("<span></span>").addClass("glyphicon glyphicon-pencil").append("编辑"));
            editBtn.attr("studentId", item.studentId);
            editBtn.click(function () {
                $("#updateStudentModal").modal({
                    backdrop: "static"
                });
                initModal(editBtn);
            })


            var delBtn = $("<button ></button>").addClass("btn btn-danger del_btn").append($("<span></span>").addClass("glyphicon glyphicon-trash").append("删除"));
            delBtn.attr("studentId",item.studentId);

            var oppId = $("<td></td>").append(editBtn).append(delBtn);

            var studentTr = $("<tr></tr>").append(studentIdTd)
                .append(studentNameTd).append(studentGender).append(studentNumber)
                .append(studentAge).append(studentMobile)
                .append(studentBirth).append(classesName)
                .append(classesSpecialty).append(classesDirection)
                .append(oppId);
            $("#emps-table tbody").append(studentTr);
        });
    }
    //初始化更新modal
    function  initModal(ele) {
        var sid = $(ele).attr("studentId");
        var classesSelect = $("#student_update_select");
        getClasses(classesSelect);
        $.ajax({
            url:"${APP_PATH }/studentById",
            data: "studentId="+sid,
            success:function (result) {
                var student = result.extend.student;
                $("#studentId_update_input").val(student.studentId);
                $("#studentName_update_input").val(student.studentName);
                $("#studentNumber_update_input").val(student.studentNumber);
                $("#updateStudentModal input[name=studentGender]").val([student.studentGender]);
                $("#updateStudentModal select").val([student.classesId]);
                $("#studentAge_update_input").val(student.studentAge);
                $("#studentMobile_update_input").val(student.studentMobile);
                $("#studentBirth_update_input").val(student.studentBirth);

            }
        })
    }


    function build_page_nav(result) {
        $("#nav-head").empty();
        $("#nav-body").empty();
        var pageSize = result.extend.pageInfo.pageSize;
        var total = result.extend.pageInfo.total;
        var pageNum = result.extend.pageInfo.pageNum;
        var pages = result.extend.pageInfo.pages;
        total_record = total;
        current_page = pageNum;
        var navStr = "当前页码：" + pageNum + ", 共有" + pages + "页, 共有" + total + "条记录";
        console.log(navStr);
        var navHead = $("<p></p>").append(navStr);
        $("#nav-head").append(navHead);
        var navigatepageNums = result.extend.pageInfo.navigatepageNums;
        var headLi = $("<li></li>").append("<a  aria-label='Previous'><span aria-hidden='true'>&laquo;</span></a>");
        var footLi = $("<li></li>").append("<a  aria-label='Next'><span aria-hidden='true'>&raquo;</span></a>");
        var navUl = $("<ul></ul>");
        headLi.click(function () {
            if (result.extend.pageInfo.isFirstPage) {
                to_page(1);
            } else {
                to_page(result.extend.pageInfo.prePage);
            }
        })

        footLi.click(function () {
            if (result.extend.pageInfo.isLastPage) {
                to_page(result.extend.pageInfo.pages);
            } else {
                to_page(result.extend.pageInfo.nextPage);
            }
        })
        navUl.append(headLi);
        $.each(navigatepageNums, function (index, item) {
            var itemA = $("<a></a>").append(item);
            var itemLi = $("<li></li>").append(itemA);
            itemLi.click(function () {
                to_page(item);
            })
            if (item == pageNum) {
                itemLi.addClass("active");
            }
            navUl.append(itemLi);
        });
        navUl.append(footLi);
        navUl.addClass("pagination");
        $("#nav-body").append(navUl);
    }

    //清空表单样式和内容
    function reset_form(ele) {
        $(ele)[0].reset();
        $(ele).find("*").removeClass("has-error has-suceess");
        $(ele).find(".help-block").text("");
    }

    $("#insert_student_model_btn").click(function () {
        getClasses("#student_add_select");

        reset_form("#insertStudentModal form");
        $("#insertStudentModal").modal({
            backdrop: "static"
        });
    })

    // 得到classes列表并且插入到select中
    function getClasses(ele) {
        $(ele).empty();
        $.ajax({
            url: "${APP_PATH }/classes",
            type: "GET",
            success: function (result) {
                console.log(result);
                $.each(result.extend.classes, function (index, item) {
                    var classStr = item.classesName + "[" + item.classesSpecialty + "(" + item.classesDirection + ")" + "]";
                    var potionEle = $("<option></option>").append(classStr)
                        .attr("value", item.classesId);
                    potionEle.appendTo(ele);
                });
            }
        });
    }

    // 数据校验
    function validata_insert_form() {

    }


    $("#studentName_insert_input").change(function () {
        var studentName = $("#studentName_insert_input").val();
        var regName = /^[\u4e00-\u9fa5]{0,}$/;
        if (!regName.test(studentName)) {
            show_validate_mag("#studentName_insert_input", "error", "姓名必须是汉字")
            $("#studentNumber_insert_input").focus();
            return false;
        } else {
            show_validate_mag("#studentName_insert_input", "success", "")
        }
    })


    $("#studentNumber_insert_input").change(function () {
        var studentNumber = $("#studentNumber_insert_input").val();
        var regNumber = /^2\d{5,}$/;
        if (!regNumber.test(studentNumber)) {
            show_validate_mag("#studentNumber_insert_input", "error", "学号必须5位以上且以数字2开头")
            $("#studentNumber_insert_input").focus();
            return false;
        } else {
            $.ajax({
                url: "${APP_PATH }/checkStudent",
                data: "studentNumber=" + studentNumber,
                type: "POST",
                success: function (result) {
                    if (result.code == 100) {
                        $("#student_insert_btn").attr("ajax-va", "success");
                        show_validate_mag("#studentNumber_insert_input", "success",
                            "学号可用");
                    } else {
                        show_validate_mag("#studentNumber_insert_input", "error",
                            result.extend.va_msg);
                        $("#student_insert_btn").attr("ajax-va", "error");
                    }
                }
            });
            show_validate_mag("#studentNumber_insert_input", "success", "");
        }
    })


    $("#studentBirth_insert_input").change(function () {
        var studentNumber = $("#studentBirth_insert_input").val();
        var regNumber = /^(((?:19|20)\d\d)-(0?[1-9]|1[0-2])-(0?[1-9]|[12][0-9]|3[01]))$/;
        if (!regNumber.test(studentNumber)) {
            show_validate_mag("#studentBirth_insert_input", "error", "出生日期必须是1998-02-09的格式")
            $("#studentBirth_insert_input").focus();
            return false;
        } else {
            show_validate_mag("#studentBirth_insert_input", "success", "")
        }
    })

    $("#studentMobile_insert_input").change(function () {
        var studentNumber = $("#studentMobile_insert_input").val();
        var regNumber = /^\d{11}$/;
        if (!regNumber.test(studentNumber)) {
            show_validate_mag("#studentMobile_insert_input", "error", "手机号为11位")
            $("#studentMobile_insert_input").focus();
            return false;
        } else {
            show_validate_mag("#studentMobile_insert_input", "success", "")
        }
    })


    function show_validate_mag(ele, status, msg) {
        //清楚当前元素校验状态
        $(ele).parent().removeClass("has-success has-error");
        $(ele).next("span").text("");
        if ("success" == status) {
            $(ele).parent().addClass("has-success");
            $(ele).next("span").text(msg);
        } else if ("error" == status) {
            $(ele).parent().addClass("has-error");
            $(ele).next("span").text(msg);
        }
    }


    $("#student_update_btn").click(function () {
        // console.log($("#insertStudentModal form").serialize());
        $.ajax({
            url: "${APP_PATH }/updateStudent",
            type: "POST",
            data: $("#updateStudentModal form").serialize(),
            success: function (result) {
                if(result.code == 100){
                    $("#updateStudentModal").modal("hide");
                    to_page(current_page);
                }

            }
        })
    })
    $("#student_insert_btn").click(function () {
        // console.log($("#insertStudentModal form").serialize());
        if ($(this).attr("ajax-va") == "error") {
            return false;
        }

        $.ajax({
            url: "${APP_PATH }/insertStudent",
            type: "POST",
            data: $("#insertStudentModal form").serialize(),
            success: function (result) {
                if(result.code == 100){
                    $("#insertStudentModal").modal("hide");
                    to_page(total_record);
                }

            }
        })
    })

    // 第二种写法

    //单个删除
    $(document).on("click",".del_btn",function(){
        //1，是否确认删除对话框
        //员工姓名弹出框
        //alert($(this).parents("tr").find("td:eq(1)").text());
        var studentName = $(this).parents("tr").find("td:eq(1)").text();
        var studentId = $(this).attr("studentId");
        if(confirm("确认删除【"+studentName+"】吗？")){
            //确认，发送ajax请求删除
            $.ajax({
                url:"${APP_PATH}/deleteStudent",
                type:"GET",
                data:"studentId="+studentId,
                success:function(result){
                    // alert(result.msg);
                    to_page(current_page);
                }
            });
        }
    });
</script>
</html>