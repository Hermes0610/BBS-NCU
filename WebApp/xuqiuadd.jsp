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


<div class="container">

    <div class="panel panel-default">
        <div class="panel-heading">
            添加需求:
        </div>
        <div class="panel-body">
            <form action="xuqiuinsert.do" method="post" name="form1" id="form1"><!-- form 标签开始 -->

                <%--<div class="form-group">
                    <div class="row">
                        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">需求编号</label>
                        <div class="col-sm-8">

                            <input type="text" class="form-control" style="width:150px;" readonly="readonly"
                                   id="xuqiubianhao" name="xuqiubianhao" value="${Info.getID()}"/>
                        </div>
                    </div>
                </div>--%>
                <div class="form-group">
                    <div class="row">
                        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">标题<span
                                style="color: red;">*</span></label>
                        <div class="col-sm-8">

                            <input type="text" class="form-control" style="width:250px;" data-rule-required="true"
                                   data-msg-required="请填写标题" id="biaoti" name="biaoti" value=""/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">奖励积分<span
                                style="color: red;">*</span></label>
                        <div class="col-sm-8">

                            <input type="number" class="form-control" style="width:150px;" data-rule-required="true"
                                   data-msg-required="请填写奖励积分" number="true" data-msg-number="输入一个有效数字" min="1"  max="${sessionScope.jifen}"
                                   id="jianglijifen" name="jianglijifen" value=""/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">内容</label>
                        <div class="col-sm-8">

                            <textarea id="neirong" name="neirong"
                                      style="max-width: 750px;width:100%; height: 300px;"></textarea>
                            <script>
                                (function () {
                                    var um = UM.getEditor('neirong');
                                })();
                            </script>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">发布人</label>
                        <div class="col-sm-8">

                            <input type="text" class="form-control" style="width:150px;" readonly="readonly"
                                   id="faburen" name="faburen" value="${sessionScope.username}"/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2"> </label>
                        <div class="col-sm-8">


                            <input type="hidden" name="zhuangtai" id="zhuangtai" value="待解决"/>

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

    <!-- container定宽，并剧中结束 --></div>


<script>
    $(function () {
        $('#form1').validate();
    });
</script>


<%@ include file="footer.jsp" %>
<%@ include file="foot.jsp" %>