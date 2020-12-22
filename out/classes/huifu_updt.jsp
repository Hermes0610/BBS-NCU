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
                编辑回复:
            </div>
            <div class="panel-body">
                <form action="huifuupdate.do" method="post" name="form1" id="form1"><!-- form 标签开始 -->

                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">编号</label>
                            <div class="col-sm-8">

                                ${mmm.bianhao}<input type="hidden" id="bianhao" name="bianhao"
                                                     value="${Info.html(mmm.bianhao)}"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">标题</label>
                            <div class="col-sm-8">

                                ${mmm.biaoti}<input type="hidden" id="biaoti" name="biaoti"
                                                    value="${Info.html(mmm.biaoti)}"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">栏目</label>
                            <div class="col-sm-8">

                                <ssm:sql var="maplanmu14"
                                         type="find">SELECT lanmuming FROM lanmu where id='${mmm.lanmu}'</ssm:sql>
                                ${maplanmu14.lanmuming}<input type="hidden" id="lanmu" name="lanmu"
                                                              value="${Info.html(mmm.lanmu)}"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">发布人</label>
                            <div class="col-sm-8">

                                ${mmm.faburen}<input type="hidden" id="faburen" name="faburen"
                                                     value="${Info.html(mmm.faburen)}"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">回复内容</label>
                            <div class="col-sm-8">

                                <textarea style="width: 80%;height: 120px" class="form-control" id="huifuneirong"
                                          name="huifuneirong">${Info.html(mmm.huifuneirong)}</textarea>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">回复人</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" style="width:150px;" readonly="readonly"
                                       id="huifuren" name="huifuren" value="${mmm.huifuren}"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2"> </label>
                            <div class="col-sm-8">

                                <input name="id" value="${mmm.id}" type="hidden"/>
                                <input name="tieziid" value="${mmm.tieziid}" type="hidden"/>
                                <input name="referer" value="<%=request.getHeader("referer")%>" type="hidden"/>
                                <input name="updtself" value="${updtself}" type="hidden"/>


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
