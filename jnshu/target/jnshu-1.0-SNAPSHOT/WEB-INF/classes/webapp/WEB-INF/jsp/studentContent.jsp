<%@ include file="../includes/includes.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<div style="margin-left: 60rem">--%>
    <%--<img src="${userPhoto}" alt="">--%>
    <%--<form action="/jnshu/u/upload" method="post" enctype="multipart/form-data">--%>
        <%--<input type="file" name="pic"><br>--%>
        <%--<input type="submit" value="上傳">--%>
    <%--</form>--%>
<%--</div>--%>
<div>
    <%--<h1 style="text-align: center">查找学生</h1>--%>
    <%--<div style="position: relative;margin: 0 auto;width: 30rem">--%>
        <%--<form action="/jnshu/u/student" method="get">--%>
            <%--姓名：<input type="text" name="name"><br>--%>
            <%--职位：<input type="text" name="profession"><br>--%>
            <%--上架状态：<input type="text" name="status"><br>--%>
            <%--id：<input type="text" name="id"><br>--%>
            <%--<input type="submit" value="提交">--%>
        <%--</form>--%>
    <%--</div>--%>
    <div>
        <table border="1" align="center" style="width: 100%">

            <tr>
                <td>id</td>
                <td>name</td>
                <td>上架状态</td>
                <td>职位</td>
                <td>简介</td>
            </tr>
            <c:forEach items="${stuList}" var="stu">
                <tr>
                    <td>${stu.id}</td>
                    <td>${stu.name}</td>
                    <td>${stu.status}</td>
                    <td>${stu.profession}</td>
                    <td>${stu.introduce}</td>
                    <td>
                        <form action="/jnshu/u/student/${stu.id}" method="post">
                            <input type="hidden" name="_method" value="delete">
                            <input type="submit" value="删除">
                        </form>
                        <form action="/jnshu/u/student/update/${stu.id}" method="post">
                            <input type="submit" value="编辑">
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <a href="/jnshu/u/student/add">添加</a><br>
    </div>
</div>