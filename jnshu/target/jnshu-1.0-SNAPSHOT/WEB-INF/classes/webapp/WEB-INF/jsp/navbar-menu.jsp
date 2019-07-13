<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/18
  Time: 15:04
  To change this template use File | Settings | File Templates.
--%>

<%@include file="../includes/includes.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" isELIgnored="false" %>
<!-- 折叠导航条 -->
<!-- 折叠导航条展开状态 -->
<div class="navigation-menu">
    <div class="container">
        <nav class="navbar navbar-expand-md bg-dark navbar-dark">
            <a class="navbar-brand" href="#">
                <img src="${pageContext.request.contextPath}/images/brand-1.png">
                <img src="${pageContext.request.contextPath}/images/brand-2.png">
            </a>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a href="${pageContext.request.contextPath}/home?status=1" class="nav-link">首页</a>
                </li>
                <li class="nav-item">
                    <a href="${pageContext.request.contextPath}/profession?status=1" class="nav-link">职业</a>
                </li>
                <li class="nav-item">
                    <a href="${pageContext.request.contextPath}/recommend" class="nav-link">推荐</a>
                </li>
                <li class="nav-item">
                    <a href="${pageContext.request.contextPath}/u/student" class="nav-link">学生列表</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">关于</a>
                </li>
            </ul>
        </nav>
    </div>
</div>
<!-- 折叠导航条收缩状态 -->
<div class="navigation-menu1">
    <div class="container">
        <nav class="navbar navbar-expand-md bg-dark navbar-dark">
            <a class="navbar-brand" href="#">
                <img src="${pageContext.request.contextPath}/images/brand-1.png">
                <img src="${pageContext.request.contextPath}/images/brand-2.png">
            </a>
            <button class="navber-toggler" type="button" data-toggle="collapse" data-target="#bdjy" data-parent="#bdjy" >
                <span class="navbar-toggler-icon"></span>
            </button>
        </nav>
    </div>
    <div class="collapse navbar-collapse" id="bdjy">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a href="${pageContext.request.contextPath}/home" class="nav-link">首页</a>
            </li>
            <li class="nav-item">
                <a href="${pageContext.request.contextPath}/profession" class="nav-link">职业</a>
            </li>
            <li class="nav-item">
                <a href="${pageContext.request.contextPath}/recommend" class="nav-link">推荐</a>
            </li>
            <li class="nav-item">
                <a href="${pageContext.request.contextPath}/u/student" class="nav-link">学生列表</a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link">关于</a>
            </li>
        </ul>
    </div>
</div>

