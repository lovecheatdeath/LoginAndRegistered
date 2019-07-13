<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/18
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@include file="../includes/includes.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" isELIgnored="false" %>
<%@ page import="com.jnshu.utils.CookieUtil" %>
<%@ page import="com.jnshu.utils.DesUtils" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.jnshu.utils.JJWTUtil" %>
<%! boolean result = false;
    String username = null;
    DesUtils desUtils=new DesUtils();
%>
<%
    Cookie[] cookies = request.getCookies();
        for (int i=0; i<cookies.length;i++){
            if(cookies[i].getName().equals("token")){
                String token=cookies[i].getValue();
                Map<String,Object> unpayload=new HashMap<String, Object>();
                unpayload= JJWTUtil.parseJwt(token);
                username=desUtils.decrypt(unpayload.get("username").toString());
                result=true;
//                break;
            }else{
                result=false;
            }
    }
%>
<div class="container ">
    <div class="row" style="display: flex;align-items:center;">
        <div class="col-md-6 head-text">
            客服热线电话：010-594-78634
        </div>

        <div class="col-md-6 head-icon "style="display: flex;">
            <c:choose>
                <c:when test="<%=result%>">
                    <div style="font-size: 20px;margin-right: 15px;display: flex">
                        <p><%=username%>欢迎您!</p>
                    <p style="font-size: 20px">|</p>
                    <a style="font-size: 20px;margin-right: 15px;margin-left: 15px" href="${pageContext.request.contextPath}/logout">注销</a>
                    </div>
                </c:when>
                <c:otherwise>
                    <a style="font-size: 20px;margin-right: 15px" href="${pageContext.request.contextPath}/loginPage">登录</a>
                    <p style="font-size: 20px">|</p>
                    <a style="font-size: 20px;margin-right: 15px;margin-left: 15px" href="${pageContext.request.contextPath}/signupPage">注册</a>
                </c:otherwise>
            </c:choose>
            <img src="${pageContext.request.contextPath}/images/wechat.jpg">
            <img src="${pageContext.request.contextPath}/images/qq.jpg">
            <img src="${pageContext.request.contextPath}/images/weibo.jpg">
        </div>
    </div>
</div>