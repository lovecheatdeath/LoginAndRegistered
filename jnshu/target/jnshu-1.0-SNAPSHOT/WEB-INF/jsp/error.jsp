<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/20
  Time: 13:13
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="myDate" class="java.util.Date"/> 
<c:set target="${myDate}" property="time" value="${obj.timeStmp*1000}"/> 
<fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${myDate}" type="both"/> 
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div>
    <h2>${json.get("code")}</h2>
    <h2>${json.get("msg")}</h2>
</div>

