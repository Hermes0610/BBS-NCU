<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.Info" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="head.jsp" %>
<%@ include file="header.jsp" %>
<link rel="stylesheet" href="js/umeditor/themes/default/css/umeditor.css"/>
<script src="js/umeditor/umeditor.config.js"></script>
<script src="js/umeditor/umeditor.min.js"></script>


<div class="" style="">


    <div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="row">

            <div class="col-sm-12 col-md-12">


                <div class="title-modelbox-widget">
                    <h3 class="section-title">
                        詳情
                        <a href="tieziadd.do">[我要发贴]</a>
                    </h3>
                    <div class="sidebar-widget-body">


                        <div class="detail-bbs">
                            <div class="read_t">
                                <table width="100%" class="floot">
                                    <tbody>
                                    <tr class="vt">
                                        <td rowspan="2" class="floot_left">
                                            <div class="readName b">
                                                <a href="javascript:;">
                                                    ${user = Query.make("yonghu").where("username", map.faburen).find();""}
                                                    ${user.nicheng}
                                                </a>
                                            </div>
                                            <div class="floot_leftdiv">
                                                <a href="javascript:;" class="userCard face_img">
                                                    <c:choose>
                                                        <c:when test="${user.touxiang == null || '' == user.touxiang }">

                                                            <img class="pic" src="images/default.gif" width="120"
                                                                 height="120" border="0"/>
                                                        </c:when><c:otherwise>
                                                        <img class="pic" src="${user.touxiang}" width="120" height="120"
                                                             border="0"/>
                                                    </c:otherwise></c:choose>
                                                </a>
                                                <div class="readUser_info cc mb10">
                                                    <div class="one" id="basic_info_2920754">
                                                        <dl class="cc">
                                                            <dt>级别</dt>
                                                            <dd> ${user.cx} </dd>
                                                        </dl>
                                                    </div>
                                                </div>
                                                <div></div>
                                            </div>
                                        </td>
                                        <td class="floot_right">
                                            <a name="post_2920754"></a>
                                            <!--印戳-->
                                            <!--楼层信息及编辑-->
                                            <div class="tipTop s6">
                                                <a class="s2 b cp">楼主</a> <span
                                                    title="${map.addtime}">发表于: ${map.addtime}</span>&nbsp;
                                                <span>点击：${map.dianjilv}</span>&nbsp;
                                                <span>回复：${map.huifushu}</span>&nbsp;
                                                <%--<button type="button" class="btn btn-default"
                                                        onclick="location.href='collect.do?id=${map.id}&biao=tiezi&ziduan=biaoti'">
                                                    收藏
                                                </button>--%>
                                                <a href="collect.do?id=${map.id}&biao=tiezi&ziduan=biaoti">[收藏]</a>
                                            </div>
                                            <div class="read_h1" style="margin-bottom:20px;" id="subject_2920754">
                                                <c:choose><c:when test="${map.zhiding =='是'}">
                                                    <span style="color: #ff180a">顶</span>
                                                </c:when></c:choose>
                                                <c:choose><c:when test="${map.jiajing =='是'}">
                                                    <span style="color: #f4a443">精</span>
                                                </c:when></c:choose>
                                                ${map.biaoti}
                                            </div>
                                            <div class="tpc_content">

                                                <div class="f14 mb10">
                                                    ${map.neirong}
                                                </div>
                                            </div>
                                            <!--content_read-->
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="floot_bottom">
                                            <!--评分-->
                                            <div id="w_2920754" class="c"></div>
                                            <!--评分结束-->
                                            <div class="tipBottom cc" data-index="-1">
                                                <!--<div class="fl readbot">
                                                    <a class="r-reply" title="回复楼主" href="javascript:;" onclick="postreply('回 7楼(陈正奇) 的帖子');">回复</a>
                                                </div>-->
                                                <!--<div class="fr">
                                                    <a title="举报此帖" href="javascript:;" class="mr5">举报</a>
                                                </div>-->
                                            </div>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <table width="100%" class="flootbg">
                                <tbody>
                                <tr>
                                    <td></td>
                                </tr>
                                </tbody>
                            </table>

                            <script>
                                var page = '${param.page}';
                                if (page == '' || page == 'null') {
                                    page = 1;
                                }
                                var pagesize = 10;
                                page = Math.max(Math.floor(page), 1);
                                var index = (page - 1) * pagesize + 1;
                            </script>

                            ${replyList = Query.make("huifu").where("tieziid", map.id).order("addtime asc").page(10);""}
                            <c:set var="i" value="0"/><c:forEach items="${replyList}" var="reply"><c:set var="i"
                                                                                                         value="${i+1}"/>
                            <div class="">
                                <div class="read_t">
                                    <table width="100%" class="floot">
                                        <tbody>
                                        <tr class="vt">
                                            <td rowspan="2" class="floot_left">
                                                <div class="readName b">

                                                    <a href="javascript:;">
                                                            ${user = Query.make("yonghu").where("username", reply.huifuren).find();""}
                                                            ${user.nicheng}
                                                    </a>
                                                </div>
                                                <div class="floot_leftdiv">
                                                    <a href="javascript:;" class="userCard face_img">
                                                        <c:choose>
                                                            <c:when test="${user.touxiang == null || '' == user.touxiang }">

                                                                <img class="pic" src="images/default.gif" width="120"
                                                                     height="120" border="0"/>
                                                            </c:when><c:otherwise>
                                                            <img class="pic" src="${user.touxiang}" width="120"
                                                                 height="120" border="0"/>
                                                        </c:otherwise></c:choose>
                                                    </a>

                                                    <div class="readUser_info cc mb10">
                                                        <div class="one" id="basic_info_2920754">
                                                            <dl class="cc">
                                                                <dt>级别</dt>
                                                                <dd> ${user.cx} </dd>
                                                            </dl>
                                                        </div>
                                                    </div>

                                                </div>
                                            </td>
                                            <td class="floot_right" id="td_2920754">
                                                <!--印戳-->
                                                <!--楼层信息及编辑-->
                                                <div class="tipTop s6">
                                                    <a class="s2 b cp">#
                                                        <script>document.write(index)</script>
                                                        楼</a> <span title="${map.addtime}">发表于: ${reply.addtime}</span>
                                                </div>
                                                <div class="tpc_content">
                                                    <div class="f14 mb10">
                                                            ${reply.huifuneirong}
                                                    </div>
                                                </div>
                                                <!--content_read-->
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="floot_bottom">
                                                <!--评分-->
                                                <div id="w_2920754" class="c"></div>
                                                <!--评分结束-->
                                                <div class="tipBottom cc">
                                                    <div class="fl readbot">
                                                        <a class="r-reply" title="回复此楼" href="javascript:;"
                                                           onclick="postreply(this);">回复</a>
                                                        <div style="display: none">
                                                            <p>回【
                                                                <script>document.write(index)</script>
                                                                楼】（${user.nicheng}）的帖子
                                                            </p>
                                                                ${reply.huifuneirong}
                                                        </div>
                                                    </div>
                                                    <!--<div class="fr">
                                                        <a title="举报此帖" href="javascript:;" class="mr5">举报</a>
                                                    </div>-->
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <table width="100%" class="flootbg">
                                    <tbody>
                                    <tr>
                                        <td></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <script>index++</script>
                        </c:forEach>
                            <div class="">
                                ${page.info}
                            </div>
                            <div class="t" style="padding:0;margin-bottom:0;">
                                <form name="FORM" method="post" action="huifuinsert.do" id="anchor">
                                    <div class="b h" style="border-top:0;">快速回复</div>
                                    <table width="100%" class="floot" style="table-layout:inherit;">
                                        <tbody>
                                        <tr class="vt">
                                            <td class="floot_left">
                                                <div class="floot_leftdiv">
                                                    <div>
                                                        <p class="b">${sessionScope.name}</p>
                                                    </div>
                                                    <div class="cc">
                                                        <c:choose>
                                                            <c:when test="${sessionScope.touxiang == null || '' == sessionScope.touxiang }">

                                                                <div class="face_img"><img class="pic"
                                                                                           src="images/default.gif"
                                                                                           width="120" height="120"
                                                                                           border="0"/></div>
                                                            </c:when><c:otherwise>
                                                            <div class="face_img">
                                                                <img class="pic" src="${sessionScope.touxiang}"
                                                                     width="120" height="120" border="0"/>
                                                            </div>
                                                        </c:otherwise></c:choose>
                                                    </div>
                                                </div>
                                            </td>
                                            <td style="padding:10px 0 10px 10px;">
                                                <div class="c mb10">
                                                    <div class="" style="display: none">

                                                        ${readMap = Query.make("tiezi").where("id", param.id).find();""}

                                                        <input type="hidden" id="bianhao" name="bianhao"
                                                               value="${Info.html(readMap.bianhao)}"/> <input
                                                            type="hidden" id="biaoti" name="biaoti"
                                                            value="${Info.html(readMap.biaoti)}"/> <input type="hidden"
                                                                                                          id="lanmu"
                                                                                                          name="lanmu"
                                                                                                          value="${Info.html(readMap.lanmu)}"/>
                                                        <input type="hidden" id="faburen" name="faburen"
                                                               value="${Info.html(readMap.faburen)}"/> <input
                                                            type="text" class="form-control" style="width:150px;"
                                                            readonly="readonly" id="huifuren" name="huifuren"
                                                            value="${sessionScope.username}"/></div>
                                                    <input type="hidden" name="tieziid" value="${map.id}"/>
                                                    <input name="referer" id="referer" value="" type="hidden"/>
                                                    <script>
                                                        $('#referer').val(location.href);
                                                    </script>

                                                    <textarea id="huifuneirong" style="width: 100%;height: 120px;"
                                                              name="huifuneirong"></textarea>


                                                </div>
                                                <div>
                                    <span class="mr20">
                                        <span class="bt" style="margin:0;">
                                            <span>
                                                <button type="submit" class="btn btn-primary" name="Submit">
     发 布 
</button>
                                            </span>
                                        </span>
                                    </span>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </form>
                                <script>
                                    function stripscript(s) {
                                        return s.replace(/<script.*?>.*?<\/script>/sig, '');
                                    }

                                    function postreply(obj) {
                                        var content = stripscript($(obj).next().html());
                                        content = content.replace(/【(.*?)([0-9]+)(.*?)】/sig, function ($0, $1, $2) {
                                            return '【' + $2 + '楼】'
                                        })
                                        content = '<blockquote>' + content + '</blockquote><p>&nbsp;</p>';
                                        var editor = UM.getEditor('huifuneirong');
                                        editor.setContent(content);
                                        $(window).scrollTop(99999);
                                        editor.focus();
                                    }

                                    UM.getEditor('huifuneirong');
                                </script>
                            </div>

                        </div>


                    </div>
                    <!-- /.sidebar-widget-body -->
                </div>


            </div>


        </div>

        <!-- container定宽，并剧中结束 --></div>


</div>
<%@ include file="footer.jsp" %>
<%@ include file="foot.jsp" %>