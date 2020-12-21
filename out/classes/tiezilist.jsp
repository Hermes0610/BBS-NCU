<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.Info" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="head.jsp" %>
<%@ include file="header.jsp" %>


<div class="" style="">


    <div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="row">

            <div class="col-sm-8 col-md-8">


                <div class="title-modelbox-widget" style="margin:15px 0 15px 0;background-color:#FFFFFF">
                    <h3 class="section-title">
                        <div class="more">
                            <a href="tiezilist.do">更多>></a>
                        </div>
                        帖子&nbsp;
                        <%--<button type="button" class="btn btn-success" onclick="location.href='tieziadd.do'">发布主题
                        </button>--%>
                        <a href="tieziadd.do">[我要发贴]</a>
                    </h3>
                    <div class="sidebar-widget-body">


                        <div class="">

                            <div class="news-list">
                                <ul>
                                    <c:forEach items="${list}" var="r">

                                        <li class="clearfix">
                                            <a href="tiezidetail.do?id=${r.id}">
                                                <div class="thumb">
                                                    <div class="img-box pb100">
                                                        <div class="img"
                                                             style="background-image: url('${r.tupian}')"></div>
                                                    </div>
                                                </div>
                                            </a>

                                            <div class="news-content-text ">
                                                <a href="tiezidetail.do?id=${r.id}">
                                                    <h3>${r.biaoti}
                                                        <c:choose><c:when test="${r.zhiding =='是'}">
                                                            <span style="color: #ff180a">顶</span>
                                                        </c:when></c:choose>
                                                        <c:choose><c:when test="${r.jiajing =='是'}">
                                                            <span style="color: #b67a2f">精</span>
                                                        </c:when></c:choose>
                                                    </h3>
                                                </a>
                                                <div class="description">
                                                        ${Info.subStr(r.neirong, 120)}
                                                </div>
                                                <div class="other-content">
                                                    <span class="fa fa-user" aria-hidden="true">${r.faburen}</span>
                                                    <span><ssm:sql var="maplanmu5"
                                                                   type="find">SELECT lanmuming FROM lanmu where id='${r.lanmu}'</ssm:sql>
                                                            ${maplanmu5.lanmuming}</span>
                                                </div>
                                            </div>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                            ${page.info}
                        </div>


                    </div>
                    <!-- /.sidebar-widget-body -->
                </div>


            </div>
            <div class="col-sm-4 col-md-4">


                <div class="title-modelbox-widget" style="margin:15px 0 15px 0;background-color:#FFFFFF">
                    <h3 class="section-title">
                        <div class="more">
                            <a href="tiezilist.do">更多>></a>
                        </div>
                        精华帖子
                    </h3>
                    <div class="sidebar-widget-body">
                        <style>
                            .news-item {
                                border-bottom: 1px solid #dedede;
                                overflow: hidden;
                                margin-bottom: 10px;
                                padding-bottom: 10px;
                            }

                            .thumb {
                                float: left;
                                width: 150px;
                                display: inline;
                            }

                            .news-item .text {
                                padding-left: 180px;
                                width: auto;
                                border: none;
                            }

                            .news-item h3 {
                                font-weight: 700;
                                font-size: 16px;
                            }

                            .news-item .desc {
                                font-size: 12px;
                                margin-top: 10px;
                                color: #969696;
                            }

                            .news-item .times {
                                margin-top: 10px;
                                color: #969696;
                            }

                            .news-item .times span {
                                font-size: 14px;
                                display: inline-block;
                                margin-right: 15px;
                            }

                        </style>
                        ${tiezilist8 = Query.make("tiezi").where("jiajing","是").limit(10).order("jiajing desc").select();""}
                        <c:set var="$i" value="0"/><c:forEach items="${tiezilist8}" var="r">
                        <c:set var="$i" value="${$i+1}"/><c:set var="r" value="${r}" scope="request"/>
                        <div class="news-item clearfix">
                            <div class="">
                                <h5>
                                    <i class="fa fa-fire" aria-hidden="true"></i>
                                    <a href="tiezidetail.do?id=${r.id}">
                                            ${Info.subStr(r.biaoti, 15)}
                                    </a>&nbsp;
                                </h5>
                            </div>
                        </div>
                    </c:forEach>
                    </div>
                    <!-- /.sidebar-widget-body -->
                </div>


            </div>


        </div>

        <!-- container定宽，并剧中结束 --></div>


</div>
<%@ include file="footer.jsp" %>
<%@ include file="foot.jsp" %>