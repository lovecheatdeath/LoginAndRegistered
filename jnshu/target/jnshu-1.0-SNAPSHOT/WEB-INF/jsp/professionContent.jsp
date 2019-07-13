<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/18
  Time: 19:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../includes/includes.jsp"%>
<div class="container">
    <p class="home">首页><span>职业</span></p>
    <p class="classify">方向 ：</p>
    <p class="profession">全部</p>
    <p class="profession"><a href="#qianduan">前端开发</a></p>
    <p class="profession"><a href="#houduan">后端开发</a></p>
    <p class="profession"><a href="#yidong">移动开发</a></p>
    <p class="profession"><a href="#zhengzhan">整站开发</a></p>
    <p class="profession"><a href="#yunying">运营维护</a></p>
    <c:forEach var="professions" items="${professionList}">
    <p class="profession-name"><a name="qianduan">${professions.key}</a></p>
    <div class="row">
        <c:forEach var="profession" items="${professions.value}">
        <div class="col-lg-4 col-md-6 col-sm-12">
            <div class="container">
                <table>
                    <tr class="row1">
                        <td colspan="10">
                            <img src="${pageContext.request.contextPath}/${profession.img}">
                            <div class="intro">
                                <p class="intro-name">${profession.name}</p>
                                <p class="intro-info">${profession.introduce}</p>
                            </div>
                        </td>
                    </tr>
                    <tr class="row2">
                        <td class="row2-col1" colspan="5"><span>门槛</span><img src="${pageContext.request.contextPath}/images/star.png"></td>
                        <td class="row2-col2" colspan="5"><span>难易程度</span><img src="${pageContext.request.contextPath}/images/star.png"><img src="../images/star.png"></td>
                    </tr>
                    <tr class="row3">
                        <td class="row3-col1" colspan="5">成长周期<span>1-3</span>年</td>
                        <td class="row3-col2" colspan="5">稀缺程度<span>${profession.needed}</span>家公司需要</td>
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
                        <td colspan="10">有<span>${profession.studing}</span>人正在学</td>
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
        </c:forEach>
    </div>
    </c:forEach>
</div>

        <%--<div class="col-lg-4 col-md-6 col-sm-12">--%>
            <%--<div class="container">--%>
                <%--<table>--%>
                    <%--<tr class="row1">--%>
                        <%--<td colspan="10">--%>
                            <%--<img src="../images/profession.png">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="intro-name">Web前端工程师</p>--%>
                                <%--<p class="intro-info">Web前端开发工程师，主要职责是利用(X)HTML/CSS/Javascript/flash等各种Web技术进行产品的开发。</p>--%>
                            <%--</div>--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row2">--%>
                        <%--<td class="row2-col1" colspan="5"><span>门槛</span><img src="../images/star.png"></td>--%>
                        <%--<td class="row2-col2" colspan="5"><span>难易程度</span><img src="../images/star.png"><img src="../images/star.png"></td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row3">--%>
                        <%--<td class="row3-col1" colspan="5">成长周期<span>1-3</span>年</td>--%>
                        <%--<td class="row3-col2" colspan="5">稀缺程度<span>345</span>家公司需要</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row4">--%>
                        <%--<td rowspan="3" class="row4-col1" colspan="3">薪资待遇</td>--%>
                        <%--<td class="row4-col2" colspan="7">0-1年<span>5k-10k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td class="row4-col2" colspan="7">1-3年<span>10k-20k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td class="row4-col2" colspan="7">0-1年<span>20k-50k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row5">--%>
                        <%--<td colspan="10">有<span>286</span>人正在学</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row6">--%>
                        <%--<td colspan="10">提示：在你学习之前你应该已经掌握XXXXX、XXXXX、XX等语言基础</td>--%>
                    <%--</tr>--%>
                <%--</table>--%>
                <%--<div class="mask">--%>
                    <%--<p class="ios">ios工程师</p>--%>
                    <%--<p class="ios-info">--%>
                        <%--iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样，也是以Darwin为基础的，因此同样属--%>
                        <%--于类Unix的商业操作系统。国内iOS开--%>
                        <%--发起步相对较晚，人才培养机制更是远--%>
                        <%--远跟不上市场发展速度。有限的iOS开--%>
                        <%--发人才成了国内企业必争的资源。国内  iOS开发起步相对较晚，人才培养机制--%>
                        <%--更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。--%>
                    <%--</p>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="col-lg-4 col-md-6 col-sm-12">--%>
            <%--<div class="container">--%>
                <%--<table>--%>
                    <%--<tr class="row1">--%>
                        <%--<td colspan="10">--%>
                            <%--<img src="../images/profession.png">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="intro-name">Web前端工程师</p>--%>
                                <%--<p class="intro-info">Web前端开发工程师，主要职责是利用(X)HTML/CSS/Javascript/flash等各种Web技术进行产品的开发。</p>--%>
                            <%--</div>--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row2">--%>
                        <%--<td class="row2-col1" colspan="5"><span>门槛</span><img src="../images/star.png"></td>--%>
                        <%--<td class="row2-col2" colspan="5"><span>难易程度</span><img src="../images/star.png"><img src="../images/star.png"></td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row3">--%>
                        <%--<td class="row3-col1" colspan="5">成长周期<span>1-3</span>年</td>--%>
                        <%--<td class="row3-col2" colspan="5">稀缺程度<span>345</span>家公司需要</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row4">--%>
                        <%--<td rowspan="3" class="row4-col1" colspan="3">薪资待遇</td>--%>
                        <%--<td class="row4-col2" colspan="7">0-1年<span>5k-10k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td class="row4-col2" colspan="7">1-3年<span>10k-20k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td class="row4-col2" colspan="7">0-1年<span>20k-50k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row5">--%>
                        <%--<td colspan="10">有<span>286</span>人正在学</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row6">--%>
                        <%--<td colspan="10">提示：在你学习之前你应该已经掌握XXXXX、XXXXX、XX等语言基础</td>--%>
                    <%--</tr>--%>
                <%--</table>--%>
                <%--<div class="mask">--%>
                    <%--<p class="ios">ios工程师</p>--%>
                    <%--<p class="ios-info">--%>
                        <%--iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样，也是以Darwin为基础的，因此同样属--%>
                        <%--于类Unix的商业操作系统。国内iOS开--%>
                        <%--发起步相对较晚，人才培养机制更是远--%>
                        <%--远跟不上市场发展速度。有限的iOS开--%>
                        <%--发人才成了国内企业必争的资源。国内  iOS开发起步相对较晚，人才培养机制--%>
                        <%--更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。--%>
                    <%--</p>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>



<%--<div class="container">--%>
    <%--<p class="profession-name"><a name="houduan">后端开发方向</a></p>--%>
    <%--<div class="row">--%>
        <%--<div class="col-lg-4 col-md-6 col-sm-12">--%>
            <%--<div class="container">--%>
                <%--<table>--%>
                    <%--<tr class="row1">--%>
                        <%--<td colspan="10">--%>
                            <%--<img src="../images/profession.png">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="intro-name">Web前端工程师</p>--%>
                                <%--<p class="intro-info">Web前端开发工程师，主要职责是利用(X)HTML/CSS/Javascript/flash等各种Web技术进行产品的开发。</p>--%>
                            <%--</div>--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row2">--%>
                        <%--<td class="row2-col1" colspan="5"><span>门槛</span><img src="../images/star.png"></td>--%>
                        <%--<td class="row2-col2" colspan="5"><span>难易程度</span><img src="../images/star.png"><img src="../images/star.png"></td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row3">--%>
                        <%--<td class="row3-col1" colspan="5">成长周期<span>1-3</span>年</td>--%>
                        <%--<td class="row3-col2" colspan="5">稀缺程度<span>345</span>家公司需要</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row4">--%>
                        <%--<td rowspan="3" class="row4-col1" colspan="3">薪资待遇</td>--%>
                        <%--<td class="row4-col2" colspan="7">0-1年<span>5k-10k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td class="row4-col2" colspan="7">1-3年<span>10k-20k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td class="row4-col2" colspan="7">0-1年<span>20k-50k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row5">--%>
                        <%--<td colspan="10">有<span>286</span>人正在学</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row6">--%>
                        <%--<td colspan="10">提示：在你学习之前你应该已经掌握XXXXX、XXXXX、XX等语言基础</td>--%>
                    <%--</tr>--%>
                <%--</table>--%>
                <%--<div class="mask">--%>
                    <%--<p class="ios">ios工程师</p>--%>
                    <%--<p class="ios-info">--%>
                        <%--iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样，也是以Darwin为基础的，因此同样属--%>
                        <%--于类Unix的商业操作系统。国内iOS开--%>
                        <%--发起步相对较晚，人才培养机制更是远--%>
                        <%--远跟不上市场发展速度。有限的iOS开--%>
                        <%--发人才成了国内企业必争的资源。国内  iOS开发起步相对较晚，人才培养机制--%>
                        <%--更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。--%>
                    <%--</p>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="col-lg-4 col-md-6 col-sm-12">--%>
            <%--<div class="container">--%>
                <%--<table>--%>
                    <%--<tr class="row1">--%>
                        <%--<td colspan="10">--%>
                            <%--<img src="../images/profession.png">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="intro-name">Web前端工程师</p>--%>
                                <%--<p class="intro-info">Web前端开发工程师，主要职责是利用(X)HTML/CSS/Javascript/flash等各种Web技术进行产品的开发。</p>--%>
                            <%--</div>--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row2">--%>
                        <%--<td class="row2-col1" colspan="5"><span>门槛</span><img src="../images/star.png"></td>--%>
                        <%--<td class="row2-col2" colspan="5"><span>难易程度</span><img src="../images/star.png"><img src="../images/star.png"></td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row3">--%>
                        <%--<td class="row3-col1" colspan="5">成长周期<span>1-3</span>年</td>--%>
                        <%--<td class="row3-col2" colspan="5">稀缺程度<span>345</span>家公司需要</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row4">--%>
                        <%--<td rowspan="3" class="row4-col1" colspan="3">薪资待遇</td>--%>
                        <%--<td class="row4-col2" colspan="7">0-1年<span>5k-10k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td class="row4-col2" colspan="7">1-3年<span>10k-20k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td class="row4-col2" colspan="7">0-1年<span>20k-50k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row5">--%>
                        <%--<td colspan="10">有<span>286</span>人正在学</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row6">--%>
                        <%--<td colspan="10">提示：在你学习之前你应该已经掌握XXXXX、XXXXX、XX等语言基础</td>--%>
                    <%--</tr>--%>
                <%--</table>--%>
                <%--<div class="mask">--%>
                    <%--<p class="ios">ios工程师</p>--%>
                    <%--<p class="ios-info">--%>
                        <%--iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样，也是以Darwin为基础的，因此同样属--%>
                        <%--于类Unix的商业操作系统。国内iOS开--%>
                        <%--发起步相对较晚，人才培养机制更是远--%>
                        <%--远跟不上市场发展速度。有限的iOS开--%>
                        <%--发人才成了国内企业必争的资源。国内  iOS开发起步相对较晚，人才培养机制--%>
                        <%--更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。--%>
                    <%--</p>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="col-lg-4 col-md-6 col-sm-12">--%>
            <%--<div class="container">--%>
                <%--<table>--%>
                    <%--<tr class="row1">--%>
                        <%--<td colspan="10">--%>
                            <%--<img src="../images/profession.png">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="intro-name">Web前端工程师</p>--%>
                                <%--<p class="intro-info">Web前端开发工程师，主要职责是利用(X)HTML/CSS/Javascript/flash等各种Web技术进行产品的开发。</p>--%>
                            <%--</div>--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row2">--%>
                        <%--<td class="row2-col1" colspan="5"><span>门槛</span><img src="../images/star.png"></td>--%>
                        <%--<td class="row2-col2" colspan="5"><span>难易程度</span><img src="../images/star.png"><img src="../images/star.png"></td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row3">--%>
                        <%--<td class="row3-col1" colspan="5">成长周期<span>1-3</span>年</td>--%>
                        <%--<td class="row3-col2" colspan="5">稀缺程度<span>345</span>家公司需要</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row4">--%>
                        <%--<td rowspan="3" class="row4-col1" colspan="3">薪资待遇</td>--%>
                        <%--<td class="row4-col2" colspan="7">0-1年<span>5k-10k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td class="row4-col2" colspan="7">1-3年<span>10k-20k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td class="row4-col2" colspan="7">0-1年<span>20k-50k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row5">--%>
                        <%--<td colspan="10">有<span>286</span>人正在学</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row6">--%>
                        <%--<td colspan="10">提示：在你学习之前你应该已经掌握XXXXX、XXXXX、XX等语言基础</td>--%>
                    <%--</tr>--%>
                <%--</table>--%>
                <%--<div class="mask">--%>
                    <%--<p class="ios">ios工程师</p>--%>
                    <%--<p class="ios-info">--%>
                        <%--iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样，也是以Darwin为基础的，因此同样属--%>
                        <%--于类Unix的商业操作系统。国内iOS开--%>
                        <%--发起步相对较晚，人才培养机制更是远--%>
                        <%--远跟不上市场发展速度。有限的iOS开--%>
                        <%--发人才成了国内企业必争的资源。国内  iOS开发起步相对较晚，人才培养机制--%>
                        <%--更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。--%>
                    <%--</p>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="col-lg-4 col-md-6 col-sm-12">--%>
            <%--<div class="container">--%>
                <%--<table>--%>
                    <%--<tr class="row1">--%>
                        <%--<td colspan="10">--%>
                            <%--<img src="../images/profession.png">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="intro-name">Web前端工程师</p>--%>
                                <%--<p class="intro-info">Web前端开发工程师，主要职责是利用(X)HTML/CSS/Javascript/flash等各种Web技术进行产品的开发。</p>--%>
                            <%--</div>--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row2">--%>
                        <%--<td class="row2-col1" colspan="5"><span>门槛</span><img src="../images/star.png"></td>--%>
                        <%--<td class="row2-col2" colspan="5"><span>难易程度</span><img src="../images/star.png"><img src="../images/star.png"></td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row3">--%>
                        <%--<td class="row3-col1" colspan="5">成长周期<span>1-3</span>年</td>--%>
                        <%--<td class="row3-col2" colspan="5">稀缺程度<span>345</span>家公司需要</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row4">--%>
                        <%--<td rowspan="3" class="row4-col1" colspan="3">薪资待遇</td>--%>
                        <%--<td class="row4-col2" colspan="7">0-1年<span>5k-10k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td class="row4-col2" colspan="7">1-3年<span>10k-20k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td class="row4-col2" colspan="7">0-1年<span>20k-50k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row5">--%>
                        <%--<td colspan="10">有<span>286</span>人正在学</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row6">--%>
                        <%--<td colspan="10">提示：在你学习之前你应该已经掌握XXXXX、XXXXX、XX等语言基础</td>--%>
                    <%--</tr>--%>
                <%--</table>--%>
                <%--<div class="mask">--%>
                    <%--<p class="ios">ios工程师</p>--%>
                    <%--<p class="ios-info">--%>
                        <%--iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样，也是以Darwin为基础的，因此同样属--%>
                        <%--于类Unix的商业操作系统。国内iOS开--%>
                        <%--发起步相对较晚，人才培养机制更是远--%>
                        <%--远跟不上市场发展速度。有限的iOS开--%>
                        <%--发人才成了国内企业必争的资源。国内  iOS开发起步相对较晚，人才培养机制--%>
                        <%--更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。--%>
                    <%--</p>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="col-lg-4 col-md-6 col-sm-12">--%>
            <%--<div class="container">--%>
                <%--<table>--%>
                    <%--<tr class="row1">--%>
                        <%--<td colspan="10">--%>
                            <%--<img src="../images/profession.png">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="intro-name">Web前端工程师</p>--%>
                                <%--<p class="intro-info">Web前端开发工程师，主要职责是利用(X)HTML/CSS/Javascript/flash等各种Web技术进行产品的开发。</p>--%>
                            <%--</div>--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row2">--%>
                        <%--<td class="row2-col1" colspan="5"><span>门槛</span><img src="../images/star.png"></td>--%>
                        <%--<td class="row2-col2" colspan="5"><span>难易程度</span><img src="../images/star.png"><img src="../images/star.png"></td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row3">--%>
                        <%--<td class="row3-col1" colspan="5">成长周期<span>1-3</span>年</td>--%>
                        <%--<td class="row3-col2" colspan="5">稀缺程度<span>345</span>家公司需要</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row4">--%>
                        <%--<td rowspan="3" class="row4-col1" colspan="3">薪资待遇</td>--%>
                        <%--<td class="row4-col2" colspan="7">0-1年<span>5k-10k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td class="row4-col2" colspan="7">1-3年<span>10k-20k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td class="row4-col2" colspan="7">0-1年<span>20k-50k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row5">--%>
                        <%--<td colspan="10">有<span>286</span>人正在学</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row6">--%>
                        <%--<td colspan="10">提示：在你学习之前你应该已经掌握XXXXX、XXXXX、XX等语言基础</td>--%>
                    <%--</tr>--%>
                <%--</table>--%>
                <%--<div class="mask">--%>
                    <%--<p class="ios">ios工程师</p>--%>
                    <%--<p class="ios-info">--%>
                        <%--iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样，也是以Darwin为基础的，因此同样属--%>
                        <%--于类Unix的商业操作系统。国内iOS开--%>
                        <%--发起步相对较晚，人才培养机制更是远--%>
                        <%--远跟不上市场发展速度。有限的iOS开--%>
                        <%--发人才成了国内企业必争的资源。国内  iOS开发起步相对较晚，人才培养机制--%>
                        <%--更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。--%>
                    <%--</p>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>

<%--<div class="container">--%>

    <%--<p class="profession-name"><a name="yidong">运维开发方向</a></p>--%>
    <%--<div class="row">--%>
        <%--<div class="col-lg-4 col-md-6 col-sm-12">--%>
            <%--<div class="container">--%>
                <%--<table>--%>
                    <%--<tr class="row1">--%>
                        <%--<td colspan="10">--%>
                            <%--<img src="../images/profession.png">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="intro-name">Web前端工程师</p>--%>
                                <%--<p class="intro-info">Web前端开发工程师，主要职责是利用(X)HTML/CSS/Javascript/flash等各种Web技术进行产品的开发。</p>--%>
                            <%--</div>--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row2">--%>
                        <%--<td class="row2-col1" colspan="5"><span>门槛</span><img src="../images/star.png"></td>--%>
                        <%--<td class="row2-col2" colspan="5"><span>难易程度</span><img src="../images/star.png"><img src="../images/star.png"></td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row3">--%>
                        <%--<td class="row3-col1" colspan="5">成长周期<span>1-3</span>年</td>--%>
                        <%--<td class="row3-col2" colspan="5">稀缺程度<span>345</span>家公司需要</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row4">--%>
                        <%--<td rowspan="3" class="row4-col1" colspan="3">薪资待遇</td>--%>
                        <%--<td class="row4-col2" colspan="7">0-1年<span>5k-10k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td class="row4-col2" colspan="7">1-3年<span>10k-20k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td class="row4-col2" colspan="7">0-1年<span>20k-50k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row5">--%>
                        <%--<td colspan="10">有<span>286</span>人正在学</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row6">--%>
                        <%--<td colspan="10">提示：在你学习之前你应该已经掌握XXXXX、XXXXX、XX等语言基础</td>--%>
                    <%--</tr>--%>
                <%--</table>--%>
                <%--<div class="mask">--%>
                    <%--<p class="ios">ios工程师</p>--%>
                    <%--<p class="ios-info">--%>
                        <%--iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样，也是以Darwin为基础的，因此同样属--%>
                        <%--于类Unix的商业操作系统。国内iOS开--%>
                        <%--发起步相对较晚，人才培养机制更是远--%>
                        <%--远跟不上市场发展速度。有限的iOS开--%>
                        <%--发人才成了国内企业必争的资源。国内  iOS开发起步相对较晚，人才培养机制--%>
                        <%--更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。--%>
                    <%--</p>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="col-lg-4 col-md-6 col-sm-12">--%>
            <%--<div class="container">--%>
                <%--<table>--%>
                    <%--<tr class="row1">--%>
                        <%--<td colspan="10">--%>
                            <%--<img src="../images/profession.png">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="intro-name">Web前端工程师</p>--%>
                                <%--<p class="intro-info">Web前端开发工程师，主要职责是利用(X)HTML/CSS/Javascript/flash等各种Web技术进行产品的开发。</p>--%>
                            <%--</div>--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row2">--%>
                        <%--<td class="row2-col1" colspan="5"><span>门槛</span><img src="../images/star.png"></td>--%>
                        <%--<td class="row2-col2" colspan="5"><span>难易程度</span><img src="../images/star.png"><img src="../images/star.png"></td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row3">--%>
                        <%--<td class="row3-col1" colspan="5">成长周期<span>1-3</span>年</td>--%>
                        <%--<td class="row3-col2" colspan="5">稀缺程度<span>345</span>家公司需要</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row4">--%>
                        <%--<td rowspan="3" class="row4-col1" colspan="3">薪资待遇</td>--%>
                        <%--<td class="row4-col2" colspan="7">0-1年<span>5k-10k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td class="row4-col2" colspan="7">1-3年<span>10k-20k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td class="row4-col2" colspan="7">0-1年<span>20k-50k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row5">--%>
                        <%--<td colspan="10">有<span>286</span>人正在学</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row6">--%>
                        <%--<td colspan="10">提示：在你学习之前你应该已经掌握XXXXX、XXXXX、XX等语言基础</td>--%>
                    <%--</tr>--%>
                <%--</table>--%>
                <%--<div class="mask">--%>
                    <%--<p class="ios">ios工程师</p>--%>
                    <%--<p class="ios-info">--%>
                        <%--iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样，也是以Darwin为基础的，因此同样属--%>
                        <%--于类Unix的商业操作系统。国内iOS开--%>
                        <%--发起步相对较晚，人才培养机制更是远--%>
                        <%--远跟不上市场发展速度。有限的iOS开--%>
                        <%--发人才成了国内企业必争的资源。国内  iOS开发起步相对较晚，人才培养机制--%>
                        <%--更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。--%>
                    <%--</p>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="col-lg-4 col-md-6 col-sm-12">--%>
            <%--<div class="container">--%>
                <%--<table>--%>
                    <%--<tr class="row1">--%>
                        <%--<td colspan="10">--%>
                            <%--<img src="../images/profession.png">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="intro-name">Web前端工程师</p>--%>
                                <%--<p class="intro-info">Web前端开发工程师，主要职责是利用(X)HTML/CSS/Javascript/flash等各种Web技术进行产品的开发。</p>--%>
                            <%--</div>--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row2">--%>
                        <%--<td class="row2-col1" colspan="5"><span>门槛</span><img src="../images/star.png"></td>--%>
                        <%--<td class="row2-col2" colspan="5"><span>难易程度</span><img src="../images/star.png"><img src="../images/star.png"></td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row3">--%>
                        <%--<td class="row3-col1" colspan="5">成长周期<span>1-3</span>年</td>--%>
                        <%--<td class="row3-col2" colspan="5">稀缺程度<span>345</span>家公司需要</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row4">--%>
                        <%--<td rowspan="3" class="row4-col1" colspan="3">薪资待遇</td>--%>
                        <%--<td class="row4-col2" colspan="7">0-1年<span>5k-10k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td class="row4-col2" colspan="7">1-3年<span>10k-20k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td class="row4-col2" colspan="7">0-1年<span>20k-50k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row5">--%>
                        <%--<td colspan="10">有<span>286</span>人正在学</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row6">--%>
                        <%--<td colspan="10">提示：在你学习之前你应该已经掌握XXXXX、XXXXX、XX等语言基础</td>--%>
                    <%--</tr>--%>
                <%--</table>--%>
                <%--<div class="mask">--%>
                    <%--<p class="ios">ios工程师</p>--%>
                    <%--<p class="ios-info">--%>
                        <%--iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样，也是以Darwin为基础的，因此同样属--%>
                        <%--于类Unix的商业操作系统。国内iOS开--%>
                        <%--发起步相对较晚，人才培养机制更是远--%>
                        <%--远跟不上市场发展速度。有限的iOS开--%>
                        <%--发人才成了国内企业必争的资源。国内  iOS开发起步相对较晚，人才培养机制--%>
                        <%--更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。--%>
                    <%--</p>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>

<%--<div class="container">--%>
    <%--<p class="profession-name"><a name="zhengzhan">运维方向</a></p>--%>
    <%--<div class="row">--%>
        <%--<div class="col-lg-4 col-md-6 col-sm-12">--%>
            <%--<div class="container">--%>
                <%--<table>--%>
                    <%--<tr class="row1">--%>
                        <%--<td colspan="10">--%>
                            <%--<img src="../images/profession.png">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="intro-name">Web前端工程师</p>--%>
                                <%--<p class="intro-info">Web前端开发工程师，主要职责是利用(X)HTML/CSS/Javascript/flash等各种Web技术进行产品的开发。</p>--%>
                            <%--</div>--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row2">--%>
                        <%--<td class="row2-col1" colspan="5"><span>门槛</span><img src="../images/star.png"></td>--%>
                        <%--<td class="row2-col2" colspan="5"><span>难易程度</span><img src="../images/star.png"><img src="../images/star.png"></td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row3">--%>
                        <%--<td class="row3-col1" colspan="5">成长周期<span>1-3</span>年</td>--%>
                        <%--<td class="row3-col2" colspan="5">稀缺程度<span>345</span>家公司需要</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row4">--%>
                        <%--<td rowspan="3" class="row4-col1" colspan="3">薪资待遇</td>--%>
                        <%--<td class="row4-col2" colspan="7">0-1年<span>5k-10k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td class="row4-col2" colspan="7">1-3年<span>10k-20k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td class="row4-col2" colspan="7">0-1年<span>20k-50k/月</span></td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row5">--%>
                        <%--<td colspan="10">有<span>286</span>人正在学</td>--%>
                    <%--</tr>--%>
                    <%--<tr class="row6">--%>
                        <%--<td colspan="10">提示：在你学习之前你应该已经掌握XXXXX、XXXXX、XX等语言基础</td>--%>
                    <%--</tr>--%>
                <%--</table>--%>
                <%--<div class="mask">--%>
                    <%--<p class="ios">ios工程师</p>--%>
                    <%--<p class="ios-info">--%>
                        <%--iOS是由苹果公司开发的移动操作统，iOS与苹果的Mac OS X操作系统一样，也是以Darwin为基础的，因此同样属--%>
                        <%--于类Unix的商业操作系统。国内iOS开--%>
                        <%--发起步相对较晚，人才培养机制更是远--%>
                        <%--远跟不上市场发展速度。有限的iOS开--%>
                        <%--发人才成了国内企业必争的资源。国内  iOS开发起步相对较晚，人才培养机制--%>
                        <%--更是远远跟不上市场发展速度。有限的iOS开发人才成了国内企业必争的资源。--%>
                    <%--</p>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>
