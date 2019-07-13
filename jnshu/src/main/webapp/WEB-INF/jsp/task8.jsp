<!DOCTYPE html>
<html>
<head>
<meta charset="uft-8" name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<title>task8</title>
<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>
<link href="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/css/bootstrap.css" rel="stylesheet">
<script src="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/js/bootstrap.js"></script>
<link type="text/css" rel="stylesheet" href="../../reset.css"/>
<link type="text/css" rel="stylesheet" href="../../style.css"/>
</head>
<body>
    <!-- 联系电话、登陆方式 -->
    <div class="container ">
        <div class="row">
            <div class="col-md-9 head-text">
            客服热线电话：010-594-78634
            </div>
            <div class="col-md-3 head-icon">
                <img src="../images/wechat.jpg">
                <img src="../images/qq.jpg">
                <img src="../images/weibo.jpg">
            </div>
        </div>
    </div>

    <!-- 折叠导航条 -->
    <!-- 折叠导航条展开状态 -->
    <div class="navigation-menu">
        <div class="container">
            <nav class="navbar navbar-expand-md bg-dark navbar-dark">
                <a class="navbar-brand" href="#">
                    <img src="../images/brand-1.png">
                    <img src="../images/brand-2.png">
                </a>
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a href="task8.jsp" class="nav-link">首页</a>
                    </li>
                    <li class="nav-item">
                        <a href="task8-2.jsp" class="nav-link">职业</a>
                    </li>
                    <li class="nav-item">
                        <a href="task8-1.jsp" class="nav-link">推荐</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">关于</a>
                    </li>    
                </ul>
            </nav>
        </div>
    </div> 
    <!-- 折叠导航条收缩状态 -->
    <div class="navigation-menu1">
        <div class="container">
            <nav class="navbar navbar-expand-md bg-dark navbar-dark">
                <a class="navbar-brand" href="#">
                    <img src="../images/brand-1.png">
                    <img src="../images/brand-2.png">
                </a>
                <button class="navber-toggler" type="button" data-toggle="collapse" data-target="#bdjy" data-parent="#bdjy" >
                    <span class="navbar-toggler-icon"></span>
                </button>
            </nav>
        </div>  
        <div class="collapse navbar-collapse" id="bdjy">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a href="task8.jsp" class="nav-link">首页</a>
                </li>
                <li class="nav-item">
                    <a href="task8-2.jsp" class="nav-link">职业</a>
                </li>
                <li class="nav-item">
                    <a href="task8-1.jsp" class="nav-link">推荐</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">关于</a>
                </li>    
            </ul>
        </div>
    </div> 

    
       




    <!-- 轮播图 -->
    <div id="demo" class="carousel slide" data-ride="carousel">
        <ul class="carousel-indicators">
          <li data-target="#demo" data-slide-to="0"></li>
          <li data-target="#demo" data-slide-to="1"></li>
          <li data-target="#demo" data-slide-to="2"></li>
        </ul>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="../images/slideshow.png" class="img-fluid" style="width:100%">
          <div class="carousel-caption">
                <div>
                <img src="../images/slideshow-text1.png" class="img-fluid">
                </div>
                <img src="../images/slideshow-text2.png" class="img-fluid">
          </div>
        </div>
        <div class="carousel-item">
          <img src="../images/slideshow.png" class="img-fluid" style="width:100%">
          <div class="carousel-caption">
                <div>
                <img src="../images/slideshow-text1.png" class="img-fluid">
                </div>
                <img src="../images/slideshow-text2.png" class="img-fluid">
          </div>
        </div>
        <div class="carousel-item">
          <img src="../images/slideshow.png" class="img-fluid" style="width:100%">
          <div class="carousel-caption">
                <div>
                <img src="../images/slideshow-text1.png" class="img-fluid">
                </div>
                <img src="../images/slideshow-text2.png" class="img-fluid">
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
                    <div class="all-icon"><img src="../images/efficient.png"></div>
                    <div class="icon-name">高效</div>
                    <div class="icon-name-detail">将五到七年的成长时间，缩短到一年到三年</div>
            </div>
            <div class="col-md-3 col-sm-12 lump">
                    <div class="all-icon"><img src="../images/standard.png"></div>
                    <div class="icon-name">规范</div>
                    <div class="icon-name-detail">标准的实战教程，不会走弯路</div>
            </div>
            <div class="col-md-3 col-sm-12 lump">
                    <div class="all-icon"><img src="../images/connection.png"></div>
                    <div class="icon-name">人脉</div>
                    <div class="icon-name-detail">同班好友，同院学长技术大师，入学就混入职脉圈，为以后铺平道路。</div>           
            </div>
            <div class="col-md-3 col-sm-12 lump">
                <div class="students-number">
                        <div class="number"><img src="../images/people.png">  12400</div>
                        <div class="text">累计在线学习人数</div>
                        <div class="number"><img src="../images/people.png">  12400</div>
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
                    <div><img src="../images/arrows.png"></div>
                </div>  
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 text-center">
                <div class="process">
                    <div class="circle">
                        <div>2</div>
                    </div>
                    <p><span>了解职业前景薪金待遇、竞争压力等</span></p>
                    <div><img src="../images/arrows.png"></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 text-center">
                <div class="process">
                    <div class="circle">
                        <div>3</div>
                    </div>
                    <p><span>掌握行业内顶级技能</span></p>
                    <div><img src="../images/arrows.png"></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 text-center">
                <div class="process">
                    <div class="circle">
                        <div>4</div>
                    </div>
                    <p><span>查看职业目标任务</span></p>
                    <div><img src="../images/arrows.png"></div>
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
                    <div><img src="../images/arrows.png"></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 text-center">
                <div class="process">
                    <div class="circle">
                        <div>6</div>
                    </div>
                    <p><span>加入班级，和小伙伴互帮互助，一块学习</span></p>
                    <div><img src="../images/arrows.png"></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 text-center">
                <div class="process">
                    <div class="circle">
                        <div>7</div>
                    </div>
                    <p><span>选择导师，一路引导，加速自己成长</span></p>
                    <div><img src="../images/arrows.png"></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 text-center">
                <div class="process">
                    <div class="circle">
                        <div>8</div>
                    </div>
                    <p><span>完成职业技能，升级业界大牛</span></p>
                    <div><img src="../images/arrows.png"></div>
                </div>
            </div>
        </div>
    </div>


    <!-- 学员展示 -->
    <div class="member-show">优秀学员展示</div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-12 text-center">
                <div class="display-box">
                    <div class="photo"><img src="../images/photo.png"></div>
                    <div class="name">技术顾问：罗大佑</div>
                    <div class="introduce">百度技术总监：互联网基础服务领域，从事虚拟主机、云服
                        务器、域名。曾任新网高级技术经理，负责技术研发、团队管
                        理与建设。</div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 text-center">
                <div class="display-box">
                    <div class="photo"><img src="../images/photo.png"></div>
                    <div class="name">技术顾问：罗大佑</div>
                    <div class="introduce">百度技术总监：互联网基础服务领域，从事虚拟主机、云服
                            务器、域名。曾任新网高级技术经理，负责技术研发、团队管
                            理与建设。</div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 text-center">
                <div class="display-box">
                    <div class="photo"><img src="../images/photo.png"></div>
                    <div class="name">技术顾问：罗大佑</div>
                    <div class="introduce">百度技术总监：互联网基础服务领域，从事虚拟主机、云服
                            务器、域名。曾任新网高级技术经理，负责技术研发、团队管
                            理与建设。</div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 text-center">
                    <div class="display-box">
                    <div class="photo"><img src="../images/photo.png"></div>
                    <div class="name">技术顾问：罗大佑</div>
                    <div class="introduce">百度技术总监：互联网基础服务领域，从事虚拟主机、云服
                                务器、域名。曾任新网高级技术经理，负责技术研发、团队管
                                理与建设。</div>
                </div>
            </div>
        </div>
    </div>


    <!-- 合作企业商标 -->
    <div class="firms-logo">战略合作企业</div>
    <div class="container">
        <div class="row bg-logo">
            <div class="col text-center logo">
                <img src="../images/alibaba.jpg">
            </div>
            <div class="col text-center logo">
                <img src="../images/jinshanyun.jpg">
            </div>
            <div class="col text-center logo">
                <img src="../images/huanxin.jpg">
            </div>
            <div class="col text-center logo">
                <img src="../images/ronglian.jpg">
            </div>
            <div class="col text-center logo">
                <img src="../images/qiniu.jpg">
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
    
    


    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-12">
                    <div class="footer-box">
                        <div class="contact">技能树 — 改变你我</div>
                        <div><span>关于我们</span> | <span>联系我们</span> | <span>合作企业</span></div> 
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="footer-box">
                        <div>旗下网站</div>
                        <div class="website"><span>草船云孵化器</span> <span>最强IT特训营</span></div>
                        <div><span>葡萄藤轻游戏</span> <span>桌游精灵</span></div>
                    </div>
                </div>
                <div class="col-md-2 col-sm-12">
                    <div class="footer-box">
                        <div class="wechat">微信工作平台</div>
                        <div><img src="../images/QR-code.png"></div>
                    </div>
                </div>
            </div>
        </div>
    </footer>    
    



<div class="copyright-information">
    Copyright © 2015技能树 www.jnshu.com  All Rights Reserved | 京ICP备13005880号
</div>
</body>
</html>


