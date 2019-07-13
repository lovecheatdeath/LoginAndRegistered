<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.jnshu.pojo.Student"%>
<%@page import="com.jnshu.pojo.Profession"%>
<!DOCTYPE HTML>
<html>
   <head>
       <title>el表达式获取数据</title>
   </head>
   <body>
    <%
        request.setAttribute("name","杰西卡");
    %>
    <c:out value="1"></c:out>
   获取的数据为:${name}
<hr>
   <%
       Student student=new Student();
       student.setAge(12);
       request.setAttribute("student",student);
   %>
   <hr>
   <%
       Student student1=new Student();
       Student student2=new Student();
       student1.setName("王小姐");
       student2.setName("第三方");

       List<Student> list=new ArrayList<Student>();
       list.add(student1);
       list.add(student2);
       request.setAttribute("list",list);
   %>
    <c:out value="2"></c:out>
   ${list[1].name}
    <c:out value="3"></c:out>
   <c:forEach var="student" items="${list}">
       ${student.name}
   </c:forEach>
    <hr>
    <%
        Map<String,String> map = new LinkedHashMap<String,String>();
        map.put("a","aaaaxxx");
        map.put("b","bbbb");
        map.put("c","cccc");
        map.put("1","aaaa1111");
        request.setAttribute("map",map);
    %>
    <!-- 根据关键字取map集合的数据 -->
        ${map.c}
        ${map["1"]}
        <hr>
        <!-- 迭代Map集合 -->
        <c:forEach var="me" items="${map}">
                ${me.key}=${me.value}<br/>
        </c:forEach>
        <hr>
   </body>