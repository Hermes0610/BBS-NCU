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
            用户        </span>
            <span>列表</span>
        </div>
        <div class="panel-body">
            <c:choose><c:when test="${'管理员' == sessionScope.cx }">
                <div class="pa10 bg-warning">
                    <form class="form-inline" action="?"><!-- form 标签开始 -->
                        <div class="form-group">
                            <i class="glyphicon glyphicon-search"></i>
                        </div>
                        <div class="form-group">
                            权限
                            <select class="form-control class_cx1" data-value="${param.cx}" id="cx" name="cx">
                                <option value="">请选择</option>
                                <option value="管理员">管理员</option>
                                <option value="版主">版主</option>
                                <option value="用户">用户</option>
                            </select>
                            <script>
                                $(".class_cx1").val($(".class_cx1").attr("data-value"))</script>
                        </div>
                        <div class="form-group">
                            帐号
                            <input type="text" class="form-control" style="" name="username" value="${param.username}"/>
                        </div>
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
            </c:when></c:choose>

            <div class="">
                <table width="100%" border="1" class="table table-list table-bordered table-hover">
                    <thead>
                    <tr align="center">
                        <c:choose><c:when test="${'管理员' == sessionScope.cx }">
                            <th width="60" data-field="item">序号</th>
                        </c:when></c:choose>
                        <th> 权限</th>
                        <th> 帐号</th>
                        <th> 昵称</th>
                        <th> 手机</th>
                        <th> 性别</th>
                        <th> 邮箱</th>
                        <th> 工作性质</th>
                        <th> 工作地点</th>
                        <th> 积分</th>
                        <th> 头像</th>
                        <th> 个人简介</th>
                        <th width="180" data-field="addtime">添加时间</th>
                        <c:choose><c:when test="${'管理员' == sessionScope.cx }">
                            <th width="90" data-field="handler">操作</th>
                        </c:when></c:choose>
                    </tr>
                    </thead>
                    <tbody>
                    <c:set var="i" value="0"/><c:forEach items="${list}" var="map"><c:set var="i" value="${i+1}"/>
                        <tr id="${map.id}" pid="">
                            <c:choose><c:when test="${'管理员' == sessionScope.cx }">
                                <td width="30" align="center">
                                    <label>
                                            ${i}
                                    </label>
                                </td>
                            </c:when></c:choose>
                            <td> ${map.cx} </td>
                            <td> ${map.username} </td>
                            <td> ${map.nicheng} </td>
                            <td> ${map.shouji} </td>
                            <td> ${map.xingbie} </td>
                            <td> ${map.youxiang} </td>
                            <td> ${map.gongzuoxingzhi} </td>
                            <td> ${map.gongzuodidian} </td>
                            <td> ${map.jifen} </td>
                            <td>

                                <c:choose> <c:when test="${'' == map.touxiang }">
                                    -</c:when><c:otherwise><img width="100"
                                                                src="${map.touxiang}"/></c:otherwise></c:choose></td>
                            <td> ${map.gerenjianjie} </td>
                            <td align="center">${map.addtime}</td>
                            <c:choose><c:when test="${'管理员' == sessionScope.cx }">
                                <td align="center">
                                    <a href="yonghu_delete.do?id=${map.id}" onclick="return confirm('真的要删除？')">删除</a>
                                    <!--qiatnalijne-->
                                </td>
                            </c:when></c:choose>
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
