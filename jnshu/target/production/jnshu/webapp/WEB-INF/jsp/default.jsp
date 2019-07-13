<%@ include file="../includes/includes.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta charset="uft-8" name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <title>homePage</title>
    <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/css/bootstrap.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/js/bootstrap.js"></script>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/reset.css"/>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/style.css"/>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/style-1.css"/>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/style-2.css"/>
</head>
<body>
<tiles:insertAttribute name="navbar"/>
<tiles:insertAttribute name="headMenu"/>
<tiles:insertAttribute name="body"/>
<tiles:insertAttribute name="footer"/>
</body>
</html>
