<%--
  Created by IntelliJ IDEA.
  User: Joe
  Date: 2018/11/3
  Time: 14:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1 style="text-align: center">输入要更新的id为${id}的学生的信息</h1>
<div style="position: relative;margin: 0 auto;width: 30rem">
    <form action="/jnshu/u/student/${id}" method="post">
        <input type="hidden" name="_method" value="put">
        <select name="key">
            <option value="name">姓名</option>
            <option value="age">QQ</option>
            <option value="status">上架状态</option>
            <option value="profession">职业</option>
            <option value="introduce">个人简介</option>
        </select>
        <input type="text" name="value"><br>
        <input type="submit" value="提交">
    </form>
</div>
</body>
</html>