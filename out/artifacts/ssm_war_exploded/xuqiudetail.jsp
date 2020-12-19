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
                        详情 </h3>
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
                                                    title="${map.addtime}">发表于: ${map.addtime}</span>
                                            </div>
                                            <div class="read_h1" style="margin-bottom:10px;" id="subject_2920754">
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

                            ${replyList = Query.make("huida").where("xuqiuid", map.id).order("addtime asc").page(10);""}
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
                                                            ${user = Query.make("yonghu").where("username", reply.huidaren).find();""}
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
                                                    <c:choose><c:when test="${reply.zhuangtai =='已采纳'}">
                                                        <span style="color: #ff180a">【已采纳】</span>
                                                    </c:when></c:choose>
                                                </div>
                                                <div class="tpc_content">
                                                    <div class="f14 mb10">
                                                            ${reply.huidaneirong}
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
                                                                ${reply.huidaneirong}
                                                        </div>
                                                    </div>
                                                    <div class="fr">

                                                        <c:if test="${map.faburen == sessionScope.username && map.zhuangtai =='待解决' }">
                                                            <a title="采纳答案" href="cainaadd.do?id=${reply.id}"
                                                               class="mr5">采纳</a>
                                                        </c:if>
                                                    </div>
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
                                <form name="FORM" method="post" action="huidainsert.do" id="anchor">
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

                                                        ${readMap = Query.make("xuqiu").where("id", param.id).find();""}

                                                        <input type="hidden" id="xuqiubianhao" name="xuqiubianhao"
                                                               value="${Info.html(readMap.xuqiubianhao)}"/> <input
                                                            type="hidden" id="biaoti" name="biaoti"
                                                            value="${Info.html(readMap.biaoti)}"/> <input type="hidden"
                                                                                                          id="jianglijifen"
                                                                                                          name="jianglijifen"
                                                                                                          value="${Info.html(readMap.jianglijifen)}"/>
                                                        <input type="hidden" id="faburen" name="faburen"
                                                               value="${Info.html(readMap.faburen)}"/> <input
                                                            type="text" class="form-control" style="width:150px;"
                                                            readonly="readonly" id="huidaren" name="huidaren"
                                                            value="${sessionScope.username}"/></div>
                                                    <input type="hidden" name="xuqiuid" value="${map.id}"/>
                                                    <input name="referer" id="referer" value="" type="hidden"/>
                                                    <script>
                                                        $('#referer').val(location.href);
                                                    </script>
                                                    <input type="hidden" name="zhuangtai" id="zhuangtai" value="待采纳"/>

                                                    <textarea id="huidaneirong" style="width: 100%;height: 120px;"
                                                              name="huidaneirong"></textarea>


                                                </div>
                                                <div>
                                    <span class="mr20">
                                        <span class="bt" style="margin:0;">
                                            <span>
                                                <button type="submit" class="btn btn-primary" name="Submit">
                                                     回答
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
                                        var editor = UM.getEditor('huidaneirong');
                                        editor.setContent(content);
                                        $(window).scrollTop(99999);
                                        editor.focus();
                                    }

                                    UM.getEditor('huidaneirong');
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