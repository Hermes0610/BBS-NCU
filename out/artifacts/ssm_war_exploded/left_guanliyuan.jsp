<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.Info" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<li>
    <a href="javascript:;" class="nav-top-item">
        <i class="icon ti-home"></i>
        <span>账号管理</span>

    </a>
    <ul>
        <li>
            <a target="main" href="yonghu_list.do">
                用户账号管理 </a>
        </li>

        <li>
            <a target="main" href="mod.do">
                密码修改 </a>
        </li>
    </ul>
</li>
<li>
    <a href="javascript:;" class="nav-top-item">
        <i class="icon ti-home"></i>
        <span>栏目管理</span>

    </a>
    <ul>
        <li>
            <a target="main" href="lanmu_add.do">
                栏目添加 </a>
        </li>
        <li>
            <a target="main" href="lanmu_list.do">
                栏目查询 </a>
        </li>
    </ul>
</li>
<li>
    <a href="javascript:;" class="nav-top-item">
        <i class="icon ti-home"></i>
        <span>帖子管理</span>

    </a>
    <ul>
        <li>
            <a target="main" href="tiezi_add.do">
                帖子添加 </a>
        </li>
        <li>
            <a target="main" href="tiezi_list.do">
                帖子查询 </a>
        </li>
    </ul>
</li>
<li>
    <a href="javascript:;" class="nav-top-item">
        <i class="icon ti-home"></i>
        <span>回复管理</span>

    </a>
    <ul>
        <li>
            <a target="main" href="huifu_list.do">
                回复查询 </a>
        </li>
    </ul>
</li>
<li>
    <a href="javascript:;" class="nav-top-item">
        <i class="icon ti-home"></i>
        <span>加精置顶管理</span>

    </a>
    <ul>
        <li>
            <a target="main" href="jiajingzhiding_list.do">
                加精置顶查询 </a>
        </li>
    </ul>
</li>
<li>
    <a href="javascript:;" class="nav-top-item">
        <i class="icon ti-home"></i>
        <span>需求管理</span>

    </a>
    <ul>
        <li>
            <a target="main" href="xuqiu_add.do">
                需求添加 </a>
        </li>
        <li>
            <a target="main" href="xuqiu_list.do">
                需求查询 </a>
        </li>
        <li>
            <a target="main" href="huida_list.do">
                回答查询 </a>
        </li>
        <li>
            <a target="main" href="caina_list.do">
                采纳查询 </a>
        </li>
    </ul>
</li>
