<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
    <title>连接数据库</title>
</head>
<body>
<sql:setDataSource var="jdbc" driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost:3306/jnshu?characterEncoding=utf-8&serverTimezone=GMT%2B8"
user="root" password="123456"/>
    <sql:query var="student" dataSource="${jdbc}">
        select * from student;
    </sql:query>
<h1>技能树-修真院</h1>
<table border="1" width="100%">
    <tr>
        <th>ID</th>
        <th>姓名</th>
        <th>年龄</th>
    </tr>
    <c:forEach var="row" items="${student.rows}">
        <tr>
            <td><c:out value="${row.id}"/></td>
            <td><c:out value="${row.name}"/></td>
            <td><c:out value="${row.age}"/></td>
        </tr>
    </c:forEach>
</table>
</body>