<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/18
  Time: 19:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../includes/includes.jsp"%>

<!-- 轮播图 -->
<div id="demo" class="carousel slide" data-ride="carousel">
    <ul class="carousel-indicators">
        <li data-target="#demo" data-slide-to="0"></li>
        <li data-target="#demo" data-slide-to="1"></li>
        <li data-target="#demo" data-slide-to="2"></li>
    </ul>

    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="${pageContext.request.contextPath}/images/slideshow.png" class="img-fluid" style="width:100%">
            <div class="carousel-caption">
                <div>
                    <img src="${pageContext.request.contextPath}/images/slideshow-text1.png" class="img-fluid">
                </div>
                <img src="${pageContext.request.contextPath}/images/slideshow-text2.png" class="img-fluid">
            </div>
        </div>
        <div class="carousel-item">
            <img src="${pageContext.request.contextPath}/images/slideshow.png" class="img-fluid" style="width:100%">
            <div class="carousel-caption">
                <div>
                    <img src="${pageContext.request.contextPath}/images/slideshow-text1.png" class="img-fluid">
                </div>
                <img src="${pageContext.request.contextPath}/images/slideshow-text2.png" class="img-fluid">
            </div>
        </div>
        <div class="carousel-item">
            <img src="${pageContext.request.contextPath}/images/slideshow.png" class="img-fluid" style="width:100%">
            <div class="carousel-caption">
                <div>
                    <img src="${pageContext.request.contextPath}/images/slideshow-text1.png" class="img-fluid">
                </div>
                <img src="${pageContext.request.contextPath}/images/slideshow-text2.png" class="img-fluid">
            </div>
        </div>
    </div>
    <a class="carousel-control-prev" href="#demo" data-slide="prev">
        <span class="carousel-control-prev-icon"></span>
    </a>
    <a class="carousel-control-next" href="#demo" data-slide="next">
        <span class="carousel-control-next-icon"></span>
    </a>
</div>


<!-- 简单介绍 -->
<div class="container">
    <div class="row">
        <div class="col-md-3 col-sm-12 lump">
            <div class="all-icon"><img src="${pageContext.request.contextPath}/images/efficient.png"></div>
            <div class="icon-name">高效</div>
            <div class="icon-name-detail">将五到七年的成长时间，缩短到一年到三年</div>
        </div>
        <div class="col-md-3 col-sm-12 lump">
            <div class="all-icon"><img src="${pageContext.request.contextPath}/images/standard.png"></div>
            <div class="icon-name">规范</div>
            <div class="icon-name-detail">标准的实战教程，不会走弯路</div>
        </div>
        <div class="col-md-3 col-sm-12 lump">
            <div class="all-icon"><img src="${pageContext.request.contextPath}/images/connection.png"></div>
            <div class="icon-name">人脉</div>
            <div class="icon-name-detail">同班好友，同院学长技术大师，入学就混入职脉圈，为以后铺平道路。</div>
        </div>
        <div class="col-md-3 col-sm-12 lump">
            <div class="students-number">
                <div class="number"><img src="${pageContext.request.contextPath}/images/people.png">  12400</div>
                <div class="text">累计在线学习人数</div>
                <div class="number"><img src="${pageContext.request.contextPath}/images/people.png">  12400</div>
                <div class="text">学院已经找到满意工作</div>
            </div>
        </div>
    </div>
</div>


<!-- 如何学习 -->
<div class="step">如何学习</div>
<div class="container">
    <div class="row">
        <div class="col-lg-3 col-md-6 col-sm-12 text-center">
            <div class="process">
                <div class="circle">
                    <div>1</div>
                </div>
                <p><span>匹配你现在的个人情况寻找适合自己的岗位</span></p>
                <div><img src="${pageContext.request.contextPath}/images/arrows.png"></div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-12 text-center">
            <div class="process">
                <div class="circle">
                    <div>2</div>
                </div>
                <p><span>了解职业前景薪金待遇、竞争压力等</span></p>
                <div><img src="${pageContext.request.contextPath}/images/arrows.png"></div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-12 text-center">
            <div class="process">
                <div class="circle">
                    <div>3</div>
                </div>
                <p><span>掌握行业内顶级技能</span></p>
                <div><img src="${pageContext.request.contextPath}/images/arrows.png"></div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-12 text-center">
            <div class="process">
                <div class="circle">
                    <div>4</div>
                </div>
                <p><span>查看职业目标任务</span></p>
                <div><img src="${pageContext.request.contextPath}/images/arrows.png"></div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-lg-3 col-md-6 col-sm-12 text-center">
            <div class="process">
                <div class="circle">
                    <div>5</div>
                </div>
                <p><span>参考学习资源，掌握技能点，逐个完成任务</span></p>
                <div><img src="${pageContext.request.contextPath}/images/arrows.png"></div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-12 text-center">
            <div class="process">
                <div class="circle">
                    <div>6</div>
                </div>
                <p><span>加入班级，和小伙伴互帮互助，一块学习</span></p>
                <div><img src="${pageContext.request.contextPath}/images/arrows.png"></div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-12 text-center">
            <div class="process">
                <div class="circle">
                    <div>7</div>
                </div>
                <p><span>选择导师，一路引导，加速自己成长</span></p>
                <div><img src="${pageContext.request.contextPath}/images/arrows.png"></div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-12 text-center">
            <div class="process">
                <div class="circle">
                    <div>8</div>
                </div>
                <p><span>完成职业技能，升级业界大牛</span></p>
                <div><img src="${pageContext.request.contextPath}/images/arrows.png"></div>
            </div>
        </div>
    </div>
</div>


<!-- 学员展示 -->
<div class="member-show">优秀学员展示</div>
<div class="container">
    <div class="row">
        <c:forEach var="student" items="${studentList}">
        <div class="col-lg-3 col-md-6 col-sm-12 text-center">
            <div class="display-box">
                <div class="photo"><img src="${pageContext.request.contextPath}/${student.photo}"></div>
                <%--<div class="name">技术顾问：罗大佑</div>--%>
                <div class="name">${student.profession}:${student.name}</div>
                <%--<div class="introduce">百度技术总监：互联网基础服务领域，从事虚拟主机、云服--%>
                    <%--务器、域名。曾任新网高级技术经理，负责技术研发、团队管--%>
                    <%--理与建设。</div>--%>
                <div class="introduce">${student.introduce}</div>
            </div>
        </div>
        </c:forEach>
        <%--<div class="col-lg-3 col-md-6 col-sm-12 text-center">--%>
            <%--<div class="display-box">--%>
                <%--<div class="photo"><img src="../images/photo.png"></div>--%>
                <%--<div class="name">技术顾问：罗大佑</div>--%>
                <%--<div class="introduce">百度技术总监：互联网基础服务领域，从事虚拟主机、云服--%>
                    <%--务器、域名。曾任新网高级技术经理，负责技术研发、团队管--%>
                    <%--理与建设。</div>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="col-lg-3 col-md-6 col-sm-12 text-center">--%>
            <%--<div class="display-box">--%>
                <%--<div class="photo"><img src="../images/photo.png"></div>--%>
                <%--<div class="name">技术顾问：罗大佑</div>--%>
                <%--<div class="introduce">百度技术总监：互联网基础服务领域，从事虚拟主机、云服--%>
                    <%--务器、域名。曾任新网高级技术经理，负责技术研发、团队管--%>
                    <%--理与建设。</div>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="col-lg-3 col-md-6 col-sm-12 text-center">--%>
            <%--<div class="display-box">--%>
                <%--<div class="photo"><img src="../images/photo.png"></div>--%>
                <%--<div class="name">技术顾问：罗大佑</div>--%>
                <%--<div class="introduce">百度技术总监：互联网基础服务领域，从事虚拟主机、云服--%>
                    <%--务器、域名。曾任新网高级技术经理，负责技术研发、团队管--%>
                    <%--理与建设。</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    </div>
</div>


<!-- 合作企业商标 -->
<div class="firms-logo">战略合作企业</div>
<div class="container">
    <div class="row bg-logo">
        <div class="col text-center logo">
            <img src="${pageContext.request.contextPath}/images/alibaba.jpg">
        </div>
        <div class="col text-center logo">
            <img src="${pageContext.request.contextPath}/images/jinshanyun.jpg">
        </div>
        <div class="col text-center logo">
            <img src="${pageContext.request.contextPath}/images/huanxin.jpg">
        </div>
        <div class="col text-center logo">
            <img src="${pageContext.request.contextPath}/images/ronglian.jpg">
        </div>
        <div class="col text-center logo">
            <img src="${pageContext.request.contextPath}/images/qiniu.jpg">
        </div>
    </div>
</div>



<div class="blogroll-text">友情链接</div>

<div class="blogroll">
    <div class="container">
        <div>
            <li>手机软件</li>
        </div>
        <div>
            <li>教师招聘</li>
        </div>
        <div>
            <li>找工作</li>
        </div>
        <div>
            <li>教师招聘</li>
        </div>
        <div>
            <li>找工作</li>
        </div>
        <div>
            <li>手机软件</li>
        </div>
        <div>
            <li>教师招聘</li>
        </div>
        <div>
            <li>找工作</li>
        </div>
        <div>
            <li>教师招聘</li>
        </div>
        <div>
            <li>找工作</li>
        </div>
    </div>
</div>
<div class="blogroll">
    <div class="container">
        <div>
            <li>手机软件</li>
        </div>
        <div>
            <li>教师招聘</li>
        </div>
        <div>
            <li>找工作</li>
        </div>
        <div>
            <li>教师招聘</li>
        </div>
        <div>
            <li>找工作</li>
        </div>
        <div>
            <li>手机软件</li>
        </div>
        <div>
            <li>教师招聘</li>
        </div>
        <div>
            <li>找工作</li>
        </div>
        <div>
            <li>教师招聘</li>
        </div>
        <div>
            <li>找工作</li>
        </div>
    </div>
</div>