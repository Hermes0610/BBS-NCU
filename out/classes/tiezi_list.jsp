<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.Info"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>

<div style="padding: 10px">




<div class="panel panel-default">
    <div class="panel-heading">
        <span class="module-name">
            帖子        </span>
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
    
                            <select class="form-control class_lanmu12" data-value="${param.lanmu}" id="lanmu" name="lanmu">
<option value="">请选择</option><ssm:sql var="select" type="select">SELECT * FROM lanmu ORDER BY id desc</ssm:sql>
<c:forEach items="${select}" var="m">
<option value="${m.id}">${m.lanmuming}</option>
</c:forEach>

</select>
<script>
$(".class_lanmu12").val($(".class_lanmu12").attr("data-value"))</script>
                        
</div>
                                                                                                                                                                    <div class="form-group">
    加精
    
                            <select class="form-control class_jiajing13" data-value="${param.jiajing}" id="jiajing" name="jiajing">
<option value="">请选择</option><option value="是">是</option>
<option value="否">否</option>

</select>
<script>
$(".class_jiajing13").val($(".class_jiajing13").attr("data-value"))</script>
                        
</div>
                                                                <div class="form-group">
    置顶
    
                            <select class="form-control class_zhiding14" data-value="${param.zhiding}" id="zhiding" name="zhiding">
<option value="">请选择</option><option value="是">是</option>
<option value="否">否</option>

</select>
<script>
$(".class_zhiding14").val($(".class_zhiding14").attr("data-value"))</script>
                        
</div>
                                    <select class="form-control" name="order" id="orderby">

                    <option value="id">按发布时间</option>
                                                <option value="dianjilv">
                                按点击率                            </option>
                                                    <option value="huifushu">
                                按回复数                            </option>
                                                    <option value="jiajing">
                                按加精                            </option>
                                        
</select>
                <select class="form-control" name="sort" id="sort">

                    <option value="desc">倒序</option>
                    <option value="asc">升序</option>
                
</select>
                <script>$("#orderby").val("${orderby}");$("#sort").val("${sort}");</script>
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
                        <th> 编号 </th>
<th> 标题 </th>
<th> 栏目 </th>
<th> 图片 </th>
<th> 发布人 </th>
<th> 点击率 </th>
<th> 回复数 </th>
<th> 加精 </th>
<th> 置顶 </th>
                                                                        <th width="180" data-field="addtime">添加时间</th>
                        <th width="220" data-field="handler">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:set var="i" value="0" /><c:forEach items="${list}" var="map"><c:set var="i" value="${i+1}" />
                    <tr id="${map.id}" pid="">
                        <td width="30" align="center">
                            <label>
                                                                ${i}
                            </label>
                        </td>
                        <td> ${map.bianhao} </td>
<td> ${map.biaoti} </td>
<td> <ssm:sql var="maplanmu3" type="find">SELECT lanmuming FROM lanmu where id='${map.lanmu}'</ssm:sql>${maplanmu3.lanmuming} </td>
<td> <c:choose>
<c:when test="${'' == map.tupian }">
-</c:when><c:otherwise><img width="100" src="${map.tupian}"/></c:otherwise></c:choose> </td>
<td> ${map.faburen} </td>
<td> ${map.dianjilv} </td>
<td> ${map.huifushu} </td>
<td> ${map.jiajing} </td>
<td> ${map.zhiding} </td>
                                                                        <td align="center">${map.addtime}</td>
                        <td align="center">
                            
                             <a href="huifu_add.do?id=${map.id}">回复添加</a> 
 <a href="huifu_list.do?tieziid=${map.id}">回复查询</a> 
 <a href="jiajingzhiding_add.do?id=${map.id}">加精置顶添加</a> 
 <a href="jiajingzhiding_list.do?tieziid=${map.id}">加精置顶查询</a> 
                                                            <a href="tiezi_detail.do?id=${map.id}">
                                    详细
                                </a>
                                                        <a href="tiezi_updt.do?id=${map.id}">修改</a>
                            <a href="tiezi_delete.do?id=${map.id}" onclick="return confirm('真的要删除？')">删除</a>
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
