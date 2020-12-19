<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.Info" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div>
    <div class="header">

        <div class="container clearfix">
            <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

            <div class="fr">
                <c:choose>
                    <c:when test="${sessionScope.username != null && '' !=  sessionScope.username }">

                        欢迎${sessionScope.username}登录，
                        您得权限：${sessionScope.cx}
                        <a href="main.do"> 个人中心</a>
                        <a href="logout.do" onclick="return confirm('你确定退出？')"> 退出</a>
                    </c:when></c:choose>
            </div>
            <div class="">
                欢迎光临
            </div>

            <!-- container定宽，并剧中结束 --></div>
    </div>
    <nav class="navbar navbar-default-lan">
        <div class="container container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">
                    bbs论坛网站
                </a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav" id="navbar-str">
                    <li class="dropdown">
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" role="button"
                           aria-haspopup="true" aria-expanded="false">论坛
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <ssm:sql var="maplanmu1" type="select">SELECT id,lanmuming FROM lanmu</ssm:sql>
                            <c:forEach items="${maplanmu1}" var="m">
                                <li><a href="tiezilist.do?lanmu=${m.id}">${m.lanmuming}</a></li>
                            </c:forEach>
                        </ul>
                    </li>
                    <li>
                        <a href="xuqiulist.do">需求
                        </a>
                    </li>
                    <li>
                        <a href="yonghuadd.do">注册
                        </a>
                    </li>
                    <li>
                        <a href="login.do">登录
                        </a>
                    </li>
                </ul>
                <form class="navbar-form navbar-right" action="tiezilist.do">
                    <div class="form-group">
                        <input type="text" name="biaoti" class="form-control" placeholder="输入关键词搜索"/>
                    </div>
                    <button type="submit" class="btn btn-default">
                        <span class="glyphicon glyphicon-search"></span>
                    </button>
                </form>
            </div>
        </div>
    </nav>


</div>



