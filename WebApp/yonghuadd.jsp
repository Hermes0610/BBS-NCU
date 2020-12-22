<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.Info" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="head.jsp" %>
<%@ include file="header.jsp" %>
<script src="js/jquery.validate.js"></script>
<link rel="stylesheet" href="js/umeditor/themes/default/css/umeditor.css"/>
<script src="js/umeditor/umeditor.config.js"></script>
<script src="js/umeditor/umeditor.min.js"></script>
<link rel="stylesheet" href="js/layer/theme/default/layer.css"/>
<script src="js/layer/layer.js"></script>


<div class="container">
    <!-- 使用bootstrap css框架-->

    <div class="panel panel-default">
        <div class="panel-heading">
            添加用户:
        </div>
        <div class="panel-body">
            <form action="yonghuinsert.do" method="post" name="form1" id="form1"><!-- form 标签开始 -->

                <div class="form-group" style="display: none">
                    <div class="row">
                        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">权限</label>
                        <div class="col-sm-8">

                            <select class="form-control class_cx8" data-value="" id="cx" name="cx" style="width:250px">
                                <option value="用户">用户</option>
                                <option value="管理员">管理员</option>
                                <option value="版主">版主</option>


                            </select>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">帐号<span
                                style="color: red;">*</span></label>
                        <div class="col-sm-8">

                            <input type="text" class="form-control" style="width:150px;" data-rule-required="true"
                                   data-msg-required="请填写帐号"
                                   remote="checkno.do?checktype=insert&table=yonghu&col=username"
                                   data-msg-remote="内容重复了" id="username" name="username" value=""/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">密码<span
                                style="color: red;">*</span></label>
                        <div class="col-sm-8">

                            <input type="password" class="form-control" style="width:150px;" data-rule-required="true"
                                   data-msg-required="请填写密码" id="pwd" name="pwd" value=""/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">昵称</label>
                        <div class="col-sm-8">

                            <input type="text" class="form-control" style="width:150px;" id="nicheng" name="nicheng"
                                   value=""/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">手机</label>
                        <div class="col-sm-8">

                            <input type="text" class="form-control" style="width:150px;" phone="true"
                                   data-msg-phone="请输入正确手机号码" id="shouji" name="shouji" value=""/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">性别</label>
                        <div class="col-sm-8">

                            <select class="form-control class_xingbie9" data-value="" id="xingbie" name="xingbie"
                                    style="width:250px">
                                <option value="男">男</option>
                                <option value="女">女</option>

                            </select>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">邮箱</label>
                        <div class="col-sm-8">

                            <input type="text" class="form-control" style="width:150px;" email="true"
                                   data-msg-email="请输入有效邮件地址" id="youxiang" name="youxiang" value=""/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">工作性质</label>
                        <div class="col-sm-8">

                            <input type="text" class="form-control" style="width:150px;" id="gongzuoxingzhi"
                                   name="gongzuoxingzhi" value=""/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">工作地点</label>
                        <div class="col-sm-8">

                            <input type="text" class="form-control" style="width:250px;" id="gongzuodidian"
                                   name="gongzuodidian" value=""/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">个人简介</label>
                        <div class="col-sm-8">

                            <textarea style="width: 80%;height: 120px" class="form-control" id="gerenjianjie"
                                      name="gerenjianjie"></textarea>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">头像</label>
                        <div class="col-sm-8">

                            <div class="input-group" style="width:250px">
                                <input type="text" class="form-control" id="touxiang" name="touxiang" value=""/>

                                <span class="input-group-btn"><button type="button" class="btn btn-default"
                                                                      onclick="layer.open({type:2,title:'上传图片',fixed:true,shadeClose:true,shade:0.5,area:['320px','150px'],content:'upload.html?result=touxiang'})">
    上传图片
</button></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2"> </label>
                        <div class="col-sm-8">


                            <button type="submit" class="btn btn-primary" name="Submit">
                                提交
                            </button>
                            <button type="reset" class="btn btn-default" name="Submit2">
                                重置
                            </button>


                        </div>
                    </div>
                </div>

                <!--form标签结束--></form>
        </div>
    </div>

    <!-- container定宽 --></div>


<script>
    $(function () {
        $('#form1').validate();
    });
</script>


<%@ include file="footer.jsp" %>
<%@ include file="foot.jsp" %>