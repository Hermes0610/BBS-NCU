<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.Info" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>
<script src="js/jquery.validate.js"></script>

<div style="padding: 10px">


    <div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="panel panel-default">
            <div class="panel-heading">
                添加加精置顶:
            </div>
            <div class="panel-body">
                <form action="jiajingzhidinginsert.do" method="post" name="form1" id="form1"><!-- form 标签开始 -->

                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">编号</label>
                            <div class="col-sm-8">

                                ${readMap.bianhao}<input type="hidden" id="bianhao" name="bianhao"
                                                         value="${Info.html(readMap.bianhao)}"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">标题</label>
                            <div class="col-sm-8">

                                ${readMap.biaoti}<input type="hidden" id="biaoti" name="biaoti"
                                                        value="${Info.html(readMap.biaoti)}"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">发布人</label>
                            <div class="col-sm-8">

                                ${readMap.faburen}<input type="hidden" id="faburen" name="faburen"
                                                         value="${Info.html(readMap.faburen)}"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">加精</label>
                            <div class="col-sm-8">

                                <select class="form-control class_jiajing24" data-value="" id="jiajing" name="jiajing"
                                        style="width:250px">
                                    <option value="否">否</option>
                                    <option value="是">是</option>

                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">置顶</label>
                            <div class="col-sm-8">

                                <select class="form-control class_zhiding25" data-value="" id="zhiding" name="zhiding"
                                        style="width:250px">
                                    <option value="否">否</option>
                                    <option value="是">是</option>

                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">操作人</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" style="width:150px;" readonly="readonly"
                                       id="caozuoren" name="caozuoren" value="${sessionScope.username}"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2"> </label>
                            <div class="col-sm-8">

                                <input type="hidden" name="tieziid" value="${param.id}"/>
                                <input name="referer" value="<%=request.getHeader("referer")%>" type="hidden"/>


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


</div>
<%@ include file="foot.jsp" %>
