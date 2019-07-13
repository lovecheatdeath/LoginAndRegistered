<%@ include file="../includes/includes.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div style="margin: 5rem;">
    <div>
        <img src="${pageContext.request.contextPath}/images/login-ad_03.png">
    </div>

    <div style="position: absolute;right: 25rem;top: 29rem;">
        <div style="font-size: 3rem;color: red;">信息：请登录后查看${json.get("msg")}</div>
        <form action="/jnshu/login" method="post">
            <div>
                <input style="margin-top: 2rem;height: 3rem;width: 31rem;" name="userid" type="text" placeholder="请输入账号">
            </div>
            <div>
                <input style="margin-top: 2rem;height: 3rem;width: 31rem;" name="password" type="password"
                       placeholder="请输入登录密码">
            </div>
            <div>
                <input style="color: white;background-color: green;margin-top: 1rem;margin-left: 5rem;padding: 5px;height: 3rem;width: 6rem;"
                       type="submit" value="登录">
            </div>
        </form>
        <div style="margin-top: 1rem;margin-left: 5rem;padding: 5px;height: 3rem;width: 6rem;">
            <a href="/jnshu/signupPage">去注册</a>
        </div>
    </div>
</div>