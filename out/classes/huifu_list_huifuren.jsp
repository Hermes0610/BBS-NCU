<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.Info" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>

<div style="padding: 10px">


    <div class="panel panel-default">
        <div class="panel-heading">
        <span class="module-name">
            回复        </span>
            <span>列表</span>
        </div>
        <div class="panel-body">
            <div class="pa10 bg-warning">
                <form class="form-inline" action="?"><!-- form 标签开始 -->

                    <div class="form-group">


                        <i class="glyphicon glyphicon-search"></i>

                    </div>
                    <div class="form-group">
                        标题

                        <input type="text" class="form-control" style="" name="biaoti" value="${param.biaoti}"/>
                    </div>
                    <div class="form-group">
                        栏目

                        <select class="form-control class_lanmu23" data-value="${param.lanmu}" id="lanmu" name="lanmu">
                            <option value="">请选择</option>
                            <ssm:sql var="select" type="select">SELECT * FROM lanmu ORDER BY id desc</ssm:sql>
                            <c:forEach items="${select}" var="m">
                                <option value="${m.id}">${m.lanmuming}</option>
                            </c:forEach>

                        </select>
                        <script>
                            $(".class_lanmu23").val($(".class_lanmu23").attr("data-value"))</script>

                    </div>
                    <select class="form-control" name="order" id="orderby">

                        <option value="id">按发布时间</option>

                    </select>
                    <select class="form-control" name="sort" id="sort">

                        <option value="desc">倒序</option>
                        <option value="asc">升序</option>

                    </select>
                    <script>$("#orderby").val("${orderby}");
                    $("#sort").val("${sort}");</script>
                    <button type="submit" class="btn btn-default">
                        搜索
                    </button>


                    <!--form标签结束--></form>
            </div>


            <div class="">
                <table width="100%" border="1" class="table table-list table-bordered table-hover">
                    <thead>
                    <tr align="center">
                        <th width="60" data-field="item">序号</th>
                        <th> 编号</th>
                        <th> 标题</th>
                        <th> 栏目</th>
                        <th> 发布人</th>
                        <th> 回复人</th>
                        <th width="180" data-field="addtime">添加时间</th>
                        <th width="220" data-field="handler">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:set var="i" value="0"/><c:forEach items="${list}" var="map"><c:set var="i" value="${i+1}"/>
                        <tr id="${map.id}" pid="">
                            <td width="30" align="center">
                                <label>
                                        ${i}
                                </label>
                            </td>
                            <td> ${map.bianhao} </td>
                            <td> ${map.biaoti} </td>
                            <td><ssm:sql var="maplanmu11"
                                         type="find">SELECT lanmuming FROM lanmu where id='${map.lanmu}'</ssm:sql>${maplanmu11.lanmuming} </td>
                            <td> ${map.faburen} </td>
                            <td> ${map.huifuren} </td>
                            <td align="center">${map.addtime}</td>
                            <td align="center">

                                <a href="huifu_detail.do?id=${map.id}">
                                    详细
                                </a>
                                <a href="huifu_updt.do?id=${map.id}">修改</a>
                                <a href="huifu_delete.do?id=${map.id}" onclick="return confirm('真的要删除？')">删除</a>
                                <!--qiatnalijne-->
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

            ${page.info}


        </div>


    </div>


</div>
<%@ include file="foot.jsp" %>
