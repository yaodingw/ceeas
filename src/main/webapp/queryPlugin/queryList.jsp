<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div class="sidebar-wrapper">
    <div class="logo">
        <a href="index.jsp" class="simple-text">
            高考志愿填报查询辅助系统
        </a>
        <a href="login.jsp" style="position: absolute;left: 100px;font-size: 16px;">登录</a>
    </div>

    <ul class="nav">
        <li class="active">
            <a href="ccbsAction">
                <i class="ti-pie-chart"></i>
                <p>估分选大学</p>
            </a>
        </li>
        <li>
            <a href="cmsAction">
                <i class="ti-pie-chart"></i>
                <p>大学录取线</p>
            </a>
        </li>
        <li>
            <a href="nurAction">
                <i class="ti-pie-chart"></i>
                <p>帮你选大学</p>
            </a>
        </li>
        <li>
            <a href="ppAction">
                <i class="ti-pie-chart"></i>
                <p>热门专业</p>
            </a>
        </li>
        <li id="adminId"><a><i class="ti-pie-chart"></i>
            <p>管理员功能</p></a>
            <ul id="adminSon" style="display:none">
                <li><a href="editCollegeAction">编辑学校</a></li>
                <li><a href="editMajorAction">编辑专业</a></li>
            </ul>
        </li>

    </ul>
</div>