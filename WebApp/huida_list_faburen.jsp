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
            回答        </span>
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
                        <th> 标题</th>
                        <th> 奖励积分</th>
                        <th> 发布人</th>
                        <th> 回答内容</th>
                        <th> 状态</th>
                        <th> 回答人</th>
                        <th width="180" data-field="addtime">添加时间</th>
                        <th width="110" data-field="handler">操作</th>
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
                            <td> ${map.biaoti} </td>
                            <td> ${map.jianglijifen} </td>
                            <td> ${map.faburen} </td>
                            <td> ${map.huidaneirong} </td>
                            <td> ${map.zhuangtai} </td>
                            <td> ${map.huidaren} </td>
                            <td align="center">${map.addtime}</td>
                            <td align="center">

                                <% if (Query.make("caina").where("xuqiubianhao", Info.jstltable(pageContext.getAttribute("map"), "xuqiubianhao")).count() == 0) {%>
                                <a href="caina_add.do?id=${map.id}">采纳</a>
                                <%}%>
                                <a href="huida_delete.do?id=${map.id}" onclick="return confirm('真的要删除？')">删除</a>
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
