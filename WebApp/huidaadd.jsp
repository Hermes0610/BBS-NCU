<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.Info" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="head.jsp" %>
<%@ include file="header.jsp" %>
<script src="js/jquery.validate.js"></script>


<div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

    <div class="panel panel-default">
        <div class="panel-heading">
            添加回答:
        </div>
        <div class="panel-body">
            <form action="huidainsert.do" method="post" name="form1" id="form1"><!-- form 标签开始 -->

                <div class="form-group">
                    <div class="row">
                        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">需求编号</label>
                        <div class="col-sm-8">

                            ${readMap.xuqiubianhao}<input type="hidden" id="xuqiubianhao" name="xuqiubianhao"
                                                          value="${Info.html(readMap.xuqiubianhao)}"/>
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
                        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">奖励积分</label>
                        <div class="col-sm-8">

                            ${readMap.jianglijifen}<input type="hidden" id="jianglijifen" name="jianglijifen"
                                                          value="${Info.html(readMap.jianglijifen)}"/>
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
                        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">回答内容</label>
                        <div class="col-sm-8">

                            <textarea style="width: 80%;height: 120px" class="form-control" id="huidaneirong"
                                      name="huidaneirong"></textarea>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">回答人</label>
                        <div class="col-sm-8">

                            <input type="text" class="form-control" style="width:150px;" readonly="readonly"
                                   id="huidaren" name="huidaren" value="${sessionScope.username}"/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2"> </label>
                        <div class="col-sm-8">

                            <input type="hidden" name="xuqiuid" value="${param.id}"/>
                            <input name="referer" value="<%=request.getHeader("referer")%>" type="hidden"/>

                            <input type="hidden" name="zhuangtai" id="zhuangtai" value="待采纳"/>

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