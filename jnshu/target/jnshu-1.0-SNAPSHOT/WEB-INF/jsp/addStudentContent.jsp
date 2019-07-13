<%@ include file="../includes/includes.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>输入要添加学生的信息</h1>
<form action="/jnshu/u/student" method="post">
    姓名: <input type="text" name="name"><br/>
    年龄: <input type="text" name="age"><br/>
    自我简介：<input type="text" name="introduce"><br/>
    职位: <input type="text" name="profession"><br/>
    薪水: <input type="text" name="salary"><br/>
    <input type="submit" value="提交">
    <a href="/u/student" >取消</a>
</form>
</body>
</html>