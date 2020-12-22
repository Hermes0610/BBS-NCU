<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.Info" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="head.jsp" %>
<%@ include file="header.jsp" %>


<div class="" style="">


    <div class="container">

        <div class="row">

            <div class="col-sm-12 col-md-12">


                <div class="title-modelbox-widget" style="margin:15px 0 15px 0;background-color:#FFFFFF">
                    <h3 class="section-title">
                        <div class="more">
                            <a href="xuqiulist.do">更多>></a>
                        </div>
                        全部需求
                        <a href="xuqiuadd.do">[发布需求]</a>
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
                        <c:set var="$i" value="0"/><c:forEach items="${list}" var="r">
                        <c:set var="$i" value="${$i+1}"/>
                        <div class="news-item clearfix">
                            <div class="">
                                <h3>
                                    <a href="xuqiudetail.do?id=${r.id}">
                                            ${Info.subStr(r.biaoti, 15)}
                                    </a>&nbsp;
                                    <span>[${r.zhuangtai}]</span>
                                    <span style="float: right;color: rgba(19,39,19,0.18)">${r.addtime}</span>
                                </h3>
                            </div>
                        </div>
                    </c:forEach>
                        <%--<div class="list-table">
                            <table width="100%" border="1" class="table table-list table-bordered table-hover">
                                <thead>
                                <tr align="center">
                                    <th> 需求编号</th>
                                    <th> 标题</th>
                                    <th> 奖励积分</th>
                                    <th> 状态</th>
                                    <th> 发布人</th>
                                    <th width="80" align="center" bgcolor="CCFFFF">操作</th>
                                </tr>
                                </thead>
                                <tbody>

                                <c:set var="$i" value="0"/><c:forEach items="${list}" var="r"><c:set var="$i"
                                                                                                     value="${$i+1}"/>
                                    <tr>
                                        <td> ${r.xuqiubianhao} </td>
                                        <td> ${r.biaoti} </td>
                                        <td> ${r.jianglijifen} </td>
                                        <td> ${r.zhuangtai} </td>
                                        <td> ${r.faburen} </td>


                                        <td align="center">
                                            <a href="xuqiudetail.do?id=${r.id}">
                                                详细
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>
                        </div>--%>


                        ${page.info}


                    </div>
                    <!-- /.sidebar-widget-body -->
                </div>


            </div>


        </div>

        <!-- container定宽，并剧中结束 --></div>


</div>
<%@ include file="footer.jsp" %>
<%@ include file="foot.jsp" %>