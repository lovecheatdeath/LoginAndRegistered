<!DOCTYPE html>
<html>
<head>
<meta charset="uft-8" name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<title>task8-2</title>
<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>
<link href="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/css/bootstrap.css" rel="stylesheet">
<script src="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/js/bootstrap.js"></script>
<link type="text/css" rel="stylesheet" href="../../reset.css"/>
<link type="text/css" rel="stylesheet" href="../../style-2.css"/>
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
                    <li class="nav-item">
                        <a href="task8.jsp" class="nav-link">首页</a>
                    </li>
                    <li class="nav-item active">
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
                <li class="nav-item">
                    <a href="task8.jsp" class="nav-link">首页</a>
                </li>
                <li class="nav-item active">
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

    <div class="container">
        <p class="home">首页><span>职业</span></p>
        <p class="classify">方向 ：</p>
        <p class="profession">全部</p>
        <p class="profession"><a href="#qianduan">前端开发</a></p>
        <p class="profession"><a href="#houduan">后端开发</a></p>
        <p class="profession"><a href="#yidong">移动开发</a></p>
        <p class="profession"><a href="#zhengzhan">整站开发</a></p>
        <p class="profession"><a href="#yunying">运营维护</a></p>
        <p class="profession-name"><a name="qianduan">前端开发方向</a></p>
        <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="container">
                    <table>
                    <tr class="row1">
                        <td colspan="10">
                            <img src="../images/profession.png">
                             <div class="intro">
                                <p class="intro-name">Web前端工程师</p>
                                <p class="intro-info">Web前端开发工程师，主要职责是利用(X)HTML/CSS/Javascript/flash等各种Web技术进行产品的开发。</p>
                            </div>
                        </td>
                    </tr>
                    <tr class="row2">
                        <td class="row2-col1" colspan="5"><span>门槛</span><img src="../images/star.png"></td>
                        <td class="row2-col2" colspan="5"><span>难易程度</span><img src="../images/star.png"><img src="../images/star.png"></td>
                    </tr>
                    <tr class="row3">
                        <td class="row3-col1" colspan="5">成长周期<span>1-3</span>年</td>
                        <td class="row3-col2" colspan="5">稀缺程度<span>345</span>家公司需要</td>
                    </tr>
                    <tr class="row4">
                        <td rowspan="3" class="row4-col1" colspan="3">薪资待遇</td>
                        <td class="row4-col2" colspan="7">0-1年<span>5k-10k/月</span></td>
                    </tr>
                    <tr>
                        <td class="row4-col2" colspan="7">1-3年<span>10k-20k/月</span></td>
                    </tr>
                    <tr>
                        <td class="row4-col2" colspan="7">0-1年<span>20k-50k/月</span></td>
                    </tr>
                    <tr class="row5">
                        <td colspan="10">有<span>286</span>人正在学</td>
                    </tr>
                    <tr class="row6">
                        <td colspan="10">提示：在你学习之前你应该已经掌握XXXXX、XXXXX、XX等语言基础</td>
                    </tr>  
                    </table>
                    <div class="mask">
                        <p class="ios">ios工程师</p>
                        <p class="ios-info">
                            iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样，也是以Darwin为基础的，因此同样属
                            于类Unix的商业操作系统。国内iOS开
                            发起步相对较晚，人才培养机制更是远
                            远跟不上市场发展速度。有限的iOS开
                            发人才成了国内企业必争的资源。国内  iOS开发起步相对较晚，人才培养机制
                            更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。
                        </p>   
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="container">
                    <table>
                    <tr class="row1">
                        <td colspan="10">
                            <img src="../images/profession.png">
                             <div class="intro">
                                <p class="intro-name">Web前端工程师</p>
                                <p class="intro-info">Web前端开发工程师，主要职责是利用(X)HTML/CSS/Javascript/flash等各种Web技术进行产品的开发。</p>
                            </div>
                        </td>
                    </tr>
                    <tr class="row2">
                        <td class="row2-col1" colspan="5"><span>门槛</span><img src="../images/star.png"></td>
                        <td class="row2-col2" colspan="5"><span>难易程度</span><img src="../images/star.png"><img src="../images/star.png"></td>
                    </tr>
                    <tr class="row3">
                        <td class="row3-col1" colspan="5">成长周期<span>1-3</span>年</td>
                        <td class="row3-col2" colspan="5">稀缺程度<span>345</span>家公司需要</td>
                    </tr>
                    <tr class="row4">
                        <td rowspan="3" class="row4-col1" colspan="3">薪资待遇</td>
                        <td class="row4-col2" colspan="7">0-1年<span>5k-10k/月</span></td>
                    </tr>
                    <tr>
                        <td class="row4-col2" colspan="7">1-3年<span>10k-20k/月</span></td>
                    </tr>
                    <tr>
                        <td class="row4-col2" colspan="7">0-1年<span>20k-50k/月</span></td>
                    </tr>
                    <tr class="row5">
                        <td colspan="10">有<span>286</span>人正在学</td>
                    </tr>
                    <tr class="row6">
                        <td colspan="10">提示：在你学习之前你应该已经掌握XXXXX、XXXXX、XX等语言基础</td>
                    </tr>  
                    </table>
                    <div class="mask">
                        <p class="ios">ios工程师</p>
                        <p class="ios-info">
                            iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样，也是以Darwin为基础的，因此同样属
                            于类Unix的商业操作系统。国内iOS开
                            发起步相对较晚，人才培养机制更是远
                            远跟不上市场发展速度。有限的iOS开
                            发人才成了国内企业必争的资源。国内  iOS开发起步相对较晚，人才培养机制
                            更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。
                        </p>   
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-12">
                    <div class="container">
                        <table>
                        <tr class="row1">
                            <td colspan="10">
                                <img src="../images/profession.png">
                                 <div class="intro">
                                    <p class="intro-name">Web前端工程师</p>
                                    <p class="intro-info">Web前端开发工程师，主要职责是利用(X)HTML/CSS/Javascript/flash等各种Web技术进行产品的开发。</p>
                                </div>
                            </td>
                        </tr>
                        <tr class="row2">
                            <td class="row2-col1" colspan="5"><span>门槛</span><img src="../images/star.png"></td>
                            <td class="row2-col2" colspan="5"><span>难易程度</span><img src="../images/star.png"><img src="../images/star.png"></td>
                        </tr>
                        <tr class="row3">
                            <td class="row3-col1" colspan="5">成长周期<span>1-3</span>年</td>
                            <td class="row3-col2" colspan="5">稀缺程度<span>345</span>家公司需要</td>
                        </tr>
                        <tr class="row4">
                            <td rowspan="3" class="row4-col1" colspan="3">薪资待遇</td>
                            <td class="row4-col2" colspan="7">0-1年<span>5k-10k/月</span></td>
                        </tr>
                        <tr>
                            <td class="row4-col2" colspan="7">1-3年<span>10k-20k/月</span></td>
                        </tr>
                        <tr>
                            <td class="row4-col2" colspan="7">0-1年<span>20k-50k/月</span></td>
                        </tr>
                        <tr class="row5">
                            <td colspan="10">有<span>286</span>人正在学</td>
                        </tr>
                        <tr class="row6">
                            <td colspan="10">提示：在你学习之前你应该已经掌握XXXXX、XXXXX、XX等语言基础</td>
                        </tr>  
                        </table>
                        <div class="mask">
                            <p class="ios">ios工程师</p>
                            <p class="ios-info">
                                iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样，也是以Darwin为基础的，因此同样属
                                于类Unix的商业操作系统。国内iOS开
                                发起步相对较晚，人才培养机制更是远
                                远跟不上市场发展速度。有限的iOS开
                                发人才成了国内企业必争的资源。国内  iOS开发起步相对较晚，人才培养机制
                                更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。
                            </p>  
                            </div>
                        </div>
                    </div>
        </div>
    </div>

    <div class="container">
            <p class="profession-name"><a name="houduan">后端开发方向</a></p>
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-12">
                    <div class="container">
                        <table>
                        <tr class="row1">
                            <td colspan="10">
                                <img src="../images/profession.png">
                                 <div class="intro">
                                    <p class="intro-name">Web前端工程师</p>
                                    <p class="intro-info">Web前端开发工程师，主要职责是利用(X)HTML/CSS/Javascript/flash等各种Web技术进行产品的开发。</p>
                                </div>
                            </td>
                        </tr>
                        <tr class="row2">
                            <td class="row2-col1" colspan="5"><span>门槛</span><img src="../images/star.png"></td>
                            <td class="row2-col2" colspan="5"><span>难易程度</span><img src="../images/star.png"><img src="../images/star.png"></td>
                        </tr>
                        <tr class="row3">
                            <td class="row3-col1" colspan="5">成长周期<span>1-3</span>年</td>
                            <td class="row3-col2" colspan="5">稀缺程度<span>345</span>家公司需要</td>
                        </tr>
                        <tr class="row4">
                            <td rowspan="3" class="row4-col1" colspan="3">薪资待遇</td>
                            <td class="row4-col2" colspan="7">0-1年<span>5k-10k/月</span></td>
                        </tr>
                        <tr>
                            <td class="row4-col2" colspan="7">1-3年<span>10k-20k/月</span></td>
                        </tr>
                        <tr>
                            <td class="row4-col2" colspan="7">0-1年<span>20k-50k/月</span></td>
                        </tr>
                        <tr class="row5">
                            <td colspan="10">有<span>286</span>人正在学</td>
                        </tr>
                        <tr class="row6">
                            <td colspan="10">提示：在你学习之前你应该已经掌握XXXXX、XXXXX、XX等语言基础</td>
                        </tr>  
                        </table>
                        <div class="mask">
                            <p class="ios">ios工程师</p>
                            <p class="ios-info">
                                iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样，也是以Darwin为基础的，因此同样属
                                于类Unix的商业操作系统。国内iOS开
                                发起步相对较晚，人才培养机制更是远
                                远跟不上市场发展速度。有限的iOS开
                                发人才成了国内企业必争的资源。国内  iOS开发起步相对较晚，人才培养机制
                                更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。
                            </p>   
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-12">
                            <div class="container">
                                <table>
                                <tr class="row1">
                                    <td colspan="10">
                                        <img src="../images/profession.png">
                                         <div class="intro">
                                            <p class="intro-name">Web前端工程师</p>
                                            <p class="intro-info">Web前端开发工程师，主要职责是利用(X)HTML/CSS/Javascript/flash等各种Web技术进行产品的开发。</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row2">
                                    <td class="row2-col1" colspan="5"><span>门槛</span><img src="../images/star.png"></td>
                                    <td class="row2-col2" colspan="5"><span>难易程度</span><img src="../images/star.png"><img src="../images/star.png"></td>
                                </tr>
                                <tr class="row3">
                                    <td class="row3-col1" colspan="5">成长周期<span>1-3</span>年</td>
                                    <td class="row3-col2" colspan="5">稀缺程度<span>345</span>家公司需要</td>
                                </tr>
                                <tr class="row4">
                                    <td rowspan="3" class="row4-col1" colspan="3">薪资待遇</td>
                                    <td class="row4-col2" colspan="7">0-1年<span>5k-10k/月</span></td>
                                </tr>
                                <tr>
                                    <td class="row4-col2" colspan="7">1-3年<span>10k-20k/月</span></td>
                                </tr>
                                <tr>
                                    <td class="row4-col2" colspan="7">0-1年<span>20k-50k/月</span></td>
                                </tr>
                                <tr class="row5">
                                    <td colspan="10">有<span>286</span>人正在学</td>
                                </tr>
                                <tr class="row6">
                                    <td colspan="10">提示：在你学习之前你应该已经掌握XXXXX、XXXXX、XX等语言基础</td>
                                </tr>  
                                </table>
                                <div class="mask">
                                    <p class="ios">ios工程师</p>
                                    <p class="ios-info">
                                        iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样，也是以Darwin为基础的，因此同样属
                                        于类Unix的商业操作系统。国内iOS开
                                        发起步相对较晚，人才培养机制更是远
                                        远跟不上市场发展速度。有限的iOS开
                                        发人才成了国内企业必争的资源。国内  iOS开发起步相对较晚，人才培养机制
                                        更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。
                                    </p>   
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-12">
                                <div class="container">
                                    <table>
                                    <tr class="row1">
                                        <td colspan="10">
                                            <img src="../images/profession.png">
                                             <div class="intro">
                                                <p class="intro-name">Web前端工程师</p>
                                                <p class="intro-info">Web前端开发工程师，主要职责是利用(X)HTML/CSS/Javascript/flash等各种Web技术进行产品的开发。</p>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="row2">
                                        <td class="row2-col1" colspan="5"><span>门槛</span><img src="../images/star.png"></td>
                                        <td class="row2-col2" colspan="5"><span>难易程度</span><img src="../images/star.png"><img src="../images/star.png"></td>
                                    </tr>
                                    <tr class="row3">
                                        <td class="row3-col1" colspan="5">成长周期<span>1-3</span>年</td>
                                        <td class="row3-col2" colspan="5">稀缺程度<span>345</span>家公司需要</td>
                                    </tr>
                                    <tr class="row4">
                                        <td rowspan="3" class="row4-col1" colspan="3">薪资待遇</td>
                                        <td class="row4-col2" colspan="7">0-1年<span>5k-10k/月</span></td>
                                    </tr>
                                    <tr>
                                        <td class="row4-col2" colspan="7">1-3年<span>10k-20k/月</span></td>
                                    </tr>
                                    <tr>
                                        <td class="row4-col2" colspan="7">0-1年<span>20k-50k/月</span></td>
                                    </tr>
                                    <tr class="row5">
                                        <td colspan="10">有<span>286</span>人正在学</td>
                                    </tr>
                                    <tr class="row6">
                                        <td colspan="10">提示：在你学习之前你应该已经掌握XXXXX、XXXXX、XX等语言基础</td>
                                    </tr>  
                                    </table>
                                    <div class="mask">
                                        <p class="ios">ios工程师</p>
                                        <p class="ios-info">
                                            iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样，也是以Darwin为基础的，因此同样属
                                            于类Unix的商业操作系统。国内iOS开
                                            发起步相对较晚，人才培养机制更是远
                                            远跟不上市场发展速度。有限的iOS开
                                            发人才成了国内企业必争的资源。国内  iOS开发起步相对较晚，人才培养机制
                                            更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。
                                        </p>   
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="container">
                                        <table>
                                        <tr class="row1">
                                            <td colspan="10">
                                                <img src="../images/profession.png">
                                                 <div class="intro">
                                                    <p class="intro-name">Web前端工程师</p>
                                                    <p class="intro-info">Web前端开发工程师，主要职责是利用(X)HTML/CSS/Javascript/flash等各种Web技术进行产品的开发。</p>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="row2">
                                            <td class="row2-col1" colspan="5"><span>门槛</span><img src="../images/star.png"></td>
                                            <td class="row2-col2" colspan="5"><span>难易程度</span><img src="../images/star.png"><img src="../images/star.png"></td>
                                        </tr>
                                        <tr class="row3">
                                            <td class="row3-col1" colspan="5">成长周期<span>1-3</span>年</td>
                                            <td class="row3-col2" colspan="5">稀缺程度<span>345</span>家公司需要</td>
                                        </tr>
                                        <tr class="row4">
                                            <td rowspan="3" class="row4-col1" colspan="3">薪资待遇</td>
                                            <td class="row4-col2" colspan="7">0-1年<span>5k-10k/月</span></td>
                                        </tr>
                                        <tr>
                                            <td class="row4-col2" colspan="7">1-3年<span>10k-20k/月</span></td>
                                        </tr>
                                        <tr>
                                            <td class="row4-col2" colspan="7">0-1年<span>20k-50k/月</span></td>
                                        </tr>
                                        <tr class="row5">
                                            <td colspan="10">有<span>286</span>人正在学</td>
                                        </tr>
                                        <tr class="row6">
                                            <td colspan="10">提示：在你学习之前你应该已经掌握XXXXX、XXXXX、XX等语言基础</td>
                                        </tr>  
                                        </table>
                                        <div class="mask">
                                            <p class="ios">ios工程师</p>
                                            <p class="ios-info">
                                                iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样，也是以Darwin为基础的，因此同样属
                                                于类Unix的商业操作系统。国内iOS开
                                                发起步相对较晚，人才培养机制更是远
                                                远跟不上市场发展速度。有限的iOS开
                                                发人才成了国内企业必争的资源。国内  iOS开发起步相对较晚，人才培养机制
                                                更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。
                                            </p>   
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 col-sm-12">
                                        <div class="container">
                                            <table>
                                            <tr class="row1">
                                                <td colspan="10">
                                                    <img src="../images/profession.png">
                                                     <div class="intro">
                                                        <p class="intro-name">Web前端工程师</p>
                                                        <p class="intro-info">Web前端开发工程师，主要职责是利用(X)HTML/CSS/Javascript/flash等各种Web技术进行产品的开发。</p>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="row2">
                                                <td class="row2-col1" colspan="5"><span>门槛</span><img src="../images/star.png"></td>
                                                <td class="row2-col2" colspan="5"><span>难易程度</span><img src="../images/star.png"><img src="../images/star.png"></td>
                                            </tr>
                                            <tr class="row3">
                                                <td class="row3-col1" colspan="5">成长周期<span>1-3</span>年</td>
                                                <td class="row3-col2" colspan="5">稀缺程度<span>345</span>家公司需要</td>
                                            </tr>
                                            <tr class="row4">
                                                <td rowspan="3" class="row4-col1" colspan="3">薪资待遇</td>
                                                <td class="row4-col2" colspan="7">0-1年<span>5k-10k/月</span></td>
                                            </tr>
                                            <tr>
                                                <td class="row4-col2" colspan="7">1-3年<span>10k-20k/月</span></td>
                                            </tr>
                                            <tr>
                                                <td class="row4-col2" colspan="7">0-1年<span>20k-50k/月</span></td>
                                            </tr>
                                            <tr class="row5">
                                                <td colspan="10">有<span>286</span>人正在学</td>
                                            </tr>
                                            <tr class="row6">
                                                <td colspan="10">提示：在你学习之前你应该已经掌握XXXXX、XXXXX、XX等语言基础</td>
                                            </tr>  
                                            </table>
                                            <div class="mask">
                                                <p class="ios">ios工程师</p>
                                                <p class="ios-info">
                                                    iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样，也是以Darwin为基础的，因此同样属
                                                    于类Unix的商业操作系统。国内iOS开
                                                    发起步相对较晚，人才培养机制更是远
                                                    远跟不上市场发展速度。有限的iOS开
                                                    发人才成了国内企业必争的资源。国内  iOS开发起步相对较晚，人才培养机制
                                                    更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。
                                                </p>   
                                                </div>
                                            </div>
                                        </div>
            </div>
    </div>

    <div class="container">
                
                <p class="profession-name"><a name="yidong">运维开发方向</a></p>
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-sm-12">
                        <div class="container">
                            <table>
                            <tr class="row1">
                                <td colspan="10">
                                    <img src="../images/profession.png">
                                     <div class="intro">
                                        <p class="intro-name">Web前端工程师</p>
                                        <p class="intro-info">Web前端开发工程师，主要职责是利用(X)HTML/CSS/Javascript/flash等各种Web技术进行产品的开发。</p>
                                    </div>
                                </td>
                            </tr>
                            <tr class="row2">
                                <td class="row2-col1" colspan="5"><span>门槛</span><img src="../images/star.png"></td>
                                <td class="row2-col2" colspan="5"><span>难易程度</span><img src="../images/star.png"><img src="../images/star.png"></td>
                            </tr>
                            <tr class="row3">
                                <td class="row3-col1" colspan="5">成长周期<span>1-3</span>年</td>
                                <td class="row3-col2" colspan="5">稀缺程度<span>345</span>家公司需要</td>
                            </tr>
                            <tr class="row4">
                                <td rowspan="3" class="row4-col1" colspan="3">薪资待遇</td>
                                <td class="row4-col2" colspan="7">0-1年<span>5k-10k/月</span></td>
                            </tr>
                            <tr>
                                <td class="row4-col2" colspan="7">1-3年<span>10k-20k/月</span></td>
                            </tr>
                            <tr>
                                <td class="row4-col2" colspan="7">0-1年<span>20k-50k/月</span></td>
                            </tr>
                            <tr class="row5">
                                <td colspan="10">有<span>286</span>人正在学</td>
                            </tr>
                            <tr class="row6">
                                <td colspan="10">提示：在你学习之前你应该已经掌握XXXXX、XXXXX、XX等语言基础</td>
                            </tr>  
                            </table>
                            <div class="mask">
                                <p class="ios">ios工程师</p>
                                <p class="ios-info">
                                    iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样，也是以Darwin为基础的，因此同样属
                                    于类Unix的商业操作系统。国内iOS开
                                    发起步相对较晚，人才培养机制更是远
                                    远跟不上市场发展速度。有限的iOS开
                                    发人才成了国内企业必争的资源。国内  iOS开发起步相对较晚，人才培养机制
                                    更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。
                                </p>   
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-12">
                                <div class="container">
                                    <table>
                                    <tr class="row1">
                                        <td colspan="10">
                                            <img src="../images/profession.png">
                                             <div class="intro">
                                                <p class="intro-name">Web前端工程师</p>
                                                <p class="intro-info">Web前端开发工程师，主要职责是利用(X)HTML/CSS/Javascript/flash等各种Web技术进行产品的开发。</p>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="row2">
                                        <td class="row2-col1" colspan="5"><span>门槛</span><img src="../images/star.png"></td>
                                        <td class="row2-col2" colspan="5"><span>难易程度</span><img src="../images/star.png"><img src="../images/star.png"></td>
                                    </tr>
                                    <tr class="row3">
                                        <td class="row3-col1" colspan="5">成长周期<span>1-3</span>年</td>
                                        <td class="row3-col2" colspan="5">稀缺程度<span>345</span>家公司需要</td>
                                    </tr>
                                    <tr class="row4">
                                        <td rowspan="3" class="row4-col1" colspan="3">薪资待遇</td>
                                        <td class="row4-col2" colspan="7">0-1年<span>5k-10k/月</span></td>
                                    </tr>
                                    <tr>
                                        <td class="row4-col2" colspan="7">1-3年<span>10k-20k/月</span></td>
                                    </tr>
                                    <tr>
                                        <td class="row4-col2" colspan="7">0-1年<span>20k-50k/月</span></td>
                                    </tr>
                                    <tr class="row5">
                                        <td colspan="10">有<span>286</span>人正在学</td>
                                    </tr>
                                    <tr class="row6">
                                        <td colspan="10">提示：在你学习之前你应该已经掌握XXXXX、XXXXX、XX等语言基础</td>
                                    </tr>  
                                    </table>
                                    <div class="mask">
                                        <p class="ios">ios工程师</p>
                                        <p class="ios-info">
                                            iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样，也是以Darwin为基础的，因此同样属
                                            于类Unix的商业操作系统。国内iOS开
                                            发起步相对较晚，人才培养机制更是远
                                            远跟不上市场发展速度。有限的iOS开
                                            发人才成了国内企业必争的资源。国内  iOS开发起步相对较晚，人才培养机制
                                            更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。
                                        </p>   
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="container">
                                        <table>
                                        <tr class="row1">
                                            <td colspan="10">
                                                <img src="../images/profession.png">
                                                 <div class="intro">
                                                    <p class="intro-name">Web前端工程师</p>
                                                    <p class="intro-info">Web前端开发工程师，主要职责是利用(X)HTML/CSS/Javascript/flash等各种Web技术进行产品的开发。</p>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="row2">
                                            <td class="row2-col1" colspan="5"><span>门槛</span><img src="../images/star.png"></td>
                                            <td class="row2-col2" colspan="5"><span>难易程度</span><img src="../images/star.png"><img src="../images/star.png"></td>
                                        </tr>
                                        <tr class="row3">
                                            <td class="row3-col1" colspan="5">成长周期<span>1-3</span>年</td>
                                            <td class="row3-col2" colspan="5">稀缺程度<span>345</span>家公司需要</td>
                                        </tr>
                                        <tr class="row4">
                                            <td rowspan="3" class="row4-col1" colspan="3">薪资待遇</td>
                                            <td class="row4-col2" colspan="7">0-1年<span>5k-10k/月</span></td>
                                        </tr>
                                        <tr>
                                            <td class="row4-col2" colspan="7">1-3年<span>10k-20k/月</span></td>
                                        </tr>
                                        <tr>
                                            <td class="row4-col2" colspan="7">0-1年<span>20k-50k/月</span></td>
                                        </tr>
                                        <tr class="row5">
                                            <td colspan="10">有<span>286</span>人正在学</td>
                                        </tr>
                                        <tr class="row6">
                                            <td colspan="10">提示：在你学习之前你应该已经掌握XXXXX、XXXXX、XX等语言基础</td>
                                        </tr>  
                                        </table>
                                        <div class="mask">
                                            <p class="ios">ios工程师</p>
                                            <p class="ios-info">
                                                iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样，也是以Darwin为基础的，因此同样属
                                                于类Unix的商业操作系统。国内iOS开
                                                发起步相对较晚，人才培养机制更是远
                                                远跟不上市场发展速度。有限的iOS开
                                                发人才成了国内企业必争的资源。国内  iOS开发起步相对较晚，人才培养机制
                                                更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。
                                            </p>   
                                            </div>
                                        </div>
                                    </div>
                </div>
    </div>

    <div class="container">
                    <p class="profession-name"><a name="zhengzhan">运维方向</a></p>
                    <div class="row">
                        <div class="col-lg-4 col-md-6 col-sm-12">
                            <div class="container">
                                <table>
                                <tr class="row1">
                                    <td colspan="10">
                                        <img src="../images/profession.png">
                                         <div class="intro">
                                            <p class="intro-name">Web前端工程师</p>
                                            <p class="intro-info">Web前端开发工程师，主要职责是利用(X)HTML/CSS/Javascript/flash等各种Web技术进行产品的开发。</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="row2">
                                    <td class="row2-col1" colspan="5"><span>门槛</span><img src="../images/star.png"></td>
                                    <td class="row2-col2" colspan="5"><span>难易程度</span><img src="../images/star.png"><img src="../images/star.png"></td>
                                </tr>
                                <tr class="row3">
                                    <td class="row3-col1" colspan="5">成长周期<span>1-3</span>年</td>
                                    <td class="row3-col2" colspan="5">稀缺程度<span>345</span>家公司需要</td>
                                </tr>
                                <tr class="row4">
                                    <td rowspan="3" class="row4-col1" colspan="3">薪资待遇</td>
                                    <td class="row4-col2" colspan="7">0-1年<span>5k-10k/月</span></td>
                                </tr>
                                <tr>
                                    <td class="row4-col2" colspan="7">1-3年<span>10k-20k/月</span></td>
                                </tr>
                                <tr>
                                    <td class="row4-col2" colspan="7">0-1年<span>20k-50k/月</span></td>
                                </tr>
                                <tr class="row5">
                                    <td colspan="10">有<span>286</span>人正在学</td>
                                </tr>
                                <tr class="row6">
                                    <td colspan="10">提示：在你学习之前你应该已经掌握XXXXX、XXXXX、XX等语言基础</td>
                                </tr>  
                                </table>
                                <div class="mask">
                                    <p class="ios">ios工程师</p>
                                    <p class="ios-info">
                                        iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样，也是以Darwin为基础的，因此同样属
                                        于类Unix的商业操作系统。国内iOS开
                                        发起步相对较晚，人才培养机制更是远
                                        远跟不上市场发展速度。有限的iOS开
                                        发人才成了国内企业必争的资源。国内  iOS开发起步相对较晚，人才培养机制
                                        更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。
                                    </p>   
                                        </div>
                                    </div>
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