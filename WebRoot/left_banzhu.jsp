<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.Info"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<li>
    <a href="javascript:;" class="nav-top-item">
        <i class="icon ti-home"></i>
        <span>个人中心</span>

    </a>
    <ul>
                        <li>
            <a target="main" href="yonghu_updtself.do">
                修改个人资料            </a>
        </li>
                        <li>
            <a target="main" href="mod.do">
                修改密码            </a>
        </li>
                        <li>
            <a target="main" href="shoucangjilu_list2.do">
                我的收藏            </a>
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
            <a target="main" href="lanmu_list.do">
                栏目查询            </a>
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
                发布帖子            </a>
        </li>
                        <li>
            <a target="main" href="tiezi_list.do">
                帖子查询            </a>
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
                回复查询            </a>
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
            <a target="main" href="jiajingzhiding_list_caozuoren.do">
                加精记录            </a>
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
                需求发布            </a>
        </li>
                        <li>
            <a target="main" href="xuqiu_list_faburen.do">
                需求查询            </a>
        </li>
                        <li>
            <a target="main" href="huida_list_faburen.do">
                回答记录            </a>
        </li>
                        <li>
            <a target="main" href="caina_list_faburen.do">
                采纳查询            </a>
        </li>
            </ul>
</li>
