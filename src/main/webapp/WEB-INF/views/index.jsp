<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Chingyu Mo
  Date: 2017/11/2
  Time: 18:04
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="description" content="ZJUT android恶意检测平台">
    <meta name="author" content="Qingyu Mao">
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css"/>
    <title>Cdroidmal</title>
    <!-- 引入 ECharts 文件 -->
    <%--<script src="${pageContext.request.contextPath}/js/dist/echarts.js"></script>--%>

</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false"
                    aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <a class="navbar-brand" href="${pageContext.request.contextPath}/home/index">
                <img alt="Brand" src="${pageContext.request.contextPath}/images/logo_icon2.png">
            </a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="#" >首页</a></li>
                <%--<li><a href="#">搜索</a></li>--%>
                <li><a href=${pageContext.request.contextPath}/home/scan>应用提交</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container-fluid">
    <div class="container" style="width: 99%;">
        <%--<div class="row">--%>
        <%--<div class="col-md-12" style="text-align:center;">--%>
        <%--<img src="${pageContext.request.contextPath}/images/logoblack.png" alt="" style="width:200px;">--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--<div class="row statistics_bar">--%>
        <%--<div class="col-md-4 col-sm-12 col-xs-12 center">--%>
        <%--<h1><i class="fa fa-search"></i> 761021</h1>--%>
        <%--<span>检测app数量</span>--%>
        <%--</div>--%>
        <%--<div class="col-md-4 col-sm-12 col-xs-12 center">--%>
        <%--<h1><i class="fa fa-bug"></i> 61021</h1>--%>
        <%--<span>恶意app样本</span>--%>
        <%--</div>--%>
        <%--<div class="col-md-4 col-sm-12 col-xs-12 center">--%>
        <%--<h1><i class="fa fa-file-code-o "></i> 507</h1>--%>
        <%--<span>yara规则数</span>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--<div class="row">--%>
            <%--<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 center">--%>
                <%--<h1>浙江工业大学移动应用安全检测平台</h1>--%>
            <%--</div>--%>
        <%--</div>--%>


        <div class="row">
            <div class="col-md-6 col-sm-12 col-xs-12">
                <div class="row">
                    <div class="box panel panel-default center-block ">
                        <div class="panel-heading" >
                            <h3 class="panel-title">应用检测</h3>
                        </div>
                        <div class="panel-body center-block" style="padding:15px;height: 15%;">
                            <table class="table table-striped">
                               <thead>
                               <tr>
                                   <th></th>
                                   <th style="font-size: small !important;">上传数量</th>
                                   <th style="font-size: small !important;">检测数量</th>
                                   <th style="font-size: small !important;">恶意数量</th>
                               </tr>
                               </thead>
                                <tbody>
                                <tr>
                                    <td class="font-size: small !important;center-block">APP应用</td>
                                    <td  style="background-color: #FFCF43;color: white">10346</td>
                                    <td  style="background-color: #FF9E39;color: white">7812</td>
                                    <td  style="background-color: #CC0F26;color: white">6431</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="panel panel-default center-block">
                        <div class="panel-heading">
                            <h3 class="panel-title">实时检测</h3>
                        </div>
                        <div class=""  style="padding:15px;height: 35%;">
                            <table class="table table-striped table-responsive text-center" >
                                <colgroup>
                                    <col style="width: 30%;">
                                    <col style="width: 40%;">
                                    <col style="width: 30%;">
                                </colgroup>
                                <thead class="text-center">
                                <tr class="text-center">
                                    <th  style="font-size: small !important;text-align:center">时间</th>
                                    <th  style="font-size: small !important;text-align:center">MD5</th>
                                    <th style="font-size: small !important;text-align:center">检测结果</th>
                                </tr>
                                </thead>
                                <tbody class="text-center" >
                                <tr >
                                    <td >2018-06-07 21:06:33</td>
                                    <td >b0f80673567fad690f4649f64b364934</td>
                                    <td class="label label-danger" style="padding: 4px;margin-top:6px;display: inline-block">恶意APP</td>
                                </tr>
                                <tr >
                                    <td >2018-06-07 19:14:12</td>
                                    <td >b5df9300b490b69884132d467f67f89e</td>
                                    <td class="label label-danger" style="padding: 4px;margin-top:6px;display: inline-block">恶意APP</td>
                                </tr>
                                <tr >
                                    <td >2018-06-07 17:42:11</td>
                                    <td >5314f08ff18cff3e32587ee6fb6d1956</td>
                                    <td class="label label-success" style="padding: 4px;margin-top:6px;display: inline-block">良性APP</td>
                                </tr>
                                <tr >
                                    <td >2018-06-07 14:23:36</td>
                                    <td >be1e28a00a495c175f718bb5462c3585</td>
                                    <td class="label label-danger" style="padding: 4px;margin-top:6px;display: inline-block">恶意APP</td>
                                </tr>
                                <tr >
                                    <td >2018-06-07 13:45:03</td>
                                    <td >e7bbce0ffd49dc6ade032ec2c57202dd</td>
                                    <td class="label label-danger" style="padding: 4px;margin-top:6px;display: inline-block">恶意APP</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <%--<div class="col-md-6 col-sm-12 col-xs-12">--%>
                <%--<div class="box panel panel-default center-block">--%>
                    <%--<div class="panel-heading">--%>
                        <%--<h3 class="panel-title">恶意程序感染量TOP10城市展示图</h3>--%>
                    <%--</div>--%>
                    <%--<div class="panel-body" id="mapcontainer" style="padding:15px;height:35%">--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="col-md-6 col-sm-12 col-xs-12">--%>
                <%--<div class="box panel panel-default center-block">--%>
                    <%--<div class="panel-heading">--%>
                        <%--<h3 class="panel-title">恶意程序类型分布</h3>--%>
                    <%--</div>--%>
                    <%--<div class="panel-body" id="typecontainer" style="padding:15px;height: 35%;">--%>

                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>

            <div class="col-md-6 col-sm-12 col-xs-12">
                <div class="box panel panel-default center-block">
                    <div class="panel-heading">
                        <h3 class="panel-title">APP上传检测数量</h3>
                    </div>
                    <div class="panel-body" id="uploadcontainer" style="padding:15px;height: 30%;">

                    </div>
                </div>
            </div>
            <div class="col-md-6 col-sm-12 col-xs-12">
                <div class="box panel panel-default center-block">
                    <div class="panel-heading">
                        <h3 class="panel-title">恶意标签</h3>
                    </div>
                    <div class="panel-body" style="padding:15px;height: 20%;">
                        <a class="label label-default" data-toggle="tooltip" data-placement="top" title="添加恶意广告">Ad</a>
                        <a class="label label-primary" data-toggle="tooltip" data-placement="top" title="获取设备的最高权限，搜集账户信息">DroidDeluxe</a>
                        <a class="label label-success" data-toggle="tooltip" data-placement="top" title="上传设备的敏感信息">Basebridge</a>
                        <a class="label label-info" data-toggle="tooltip" data-placement="top" title="发送恶意短信">Adsms</a>
                        <a class="label label-warning" data-toggle="tooltip" data-placement="top" title="上传感染设备的IP地址">Acnetdoor</a>
                        <a class="label label-danger" data-toggle="tooltip" data-placement="top" title="伪装知名应用上架应用市场，安装后后台发送扣费短信等恶意操作">fake-installer</a>
                        <a class="label label-default" data-toggle="tooltip" data-placement="top" title="偷取用户通讯录信息，上传到远端服务器">Ackposts</a>
                        <a class="label label-primary" data-toggle="tooltip" data-placement="top" title="色情">Porn</a>
                        <a class="label label-warning" data-toggle="tooltip" data-placement="top" title="1. 通过钓鱼拿到用户银行身份信息。2. 劫持短信获取验证码。">bankbot</a>

                        <a class="label label-danger" data-toggle="tooltip" data-placement="top" title="木马病毒">Trojan</a>
                        <a class="label label-default" data-toggle="tooltip" data-placement="top" title="应用跟踪智能手机GPS定位">AccuTrack</a>
                        <a class="label label-primary" data-toggle="tooltip" data-placement="top" title="">DressCode</a>
                        <a class="label label-success" data-toggle="tooltip" data-placement="top" title="恶意应用">Malware</a>
                        <a class="label label-warning" data-toggle="tooltip" data-placement="top" title="短信欺诈">SMS</a>
                        <a class="label label-danger" data-toggle="tooltip" data-placement="top" title="">googleplay</a>
                        <a class="label label-primary" data-toggle="tooltip" data-placement="top" title="">apkmonk</a>
                        <a class="label label-default" data-toggle="tooltip" data-placement="top" title="短信欺诈">sms-fraud</a>
                        <a class="label label-danger" data-toggle="tooltip" data-placement="top" title="">wearable</a>
                        <a class="label label-warning" data-toggle="tooltip" data-placement="top" title="">uptodown</a>
                        <a class="label label-primary" data-toggle="tooltip" data-placement="top" title="安卓电视">AndroidTV</a>
                        <a class="label label-default" data-toggle="tooltip" data-placement="top" title="">Jiagu</a>
                        <a class="label label-success" data-toggle="tooltip" data-placement="top" title="使设备安装额外的恶意应用">FakeDoc</a>
                        <a class="label label-default" data-toggle="tooltip" data-placement="top" title="">riskware</a>

                    </div>
                </div>
            </div>

        </div>

        <div class="row">
            <div class="col-md-6 col-sm-12 col-xs-12" style="padding: 0px !important;">
                <div class="box panel panel-default center-block" >
                    <div class="panel-heading">
                        <h3 class="panel-title">恶意程序家族比例</h3>
                    </div>
                    <div class="panel-body" id="homecontainer" style="height: 30%;">

                    </div>
                </div>
            </div>
            <%--<div class="col-md-6 col-sm-12 col-xs-12">--%>
                <%--<div class="box panel panel-default center-block">--%>
                    <%--<div class="panel-heading">--%>
                        <%--<h3 class="panel-title">恶意样本增量</h3>--%>
                    <%--</div>--%>
                    <%--<div class="panel-body" id="yearcontainer" style="padding:15px;height:35%">--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
            <div class="col-md-6 col-sm-12 col-xs-12">
                <div class="box panel panel-default center-block">
                    <div class="panel-heading">
                        <h3 class="panel-title">恶意代码增量</h3>
                    </div>
                    <div class="panel-body" id="typecontainer" style="padding:15px;height: 30%;">

                    </div>
                </div>
            </div>


        </div>

        <div class="row">
            <%--<div class="col-md-12 col-sm-12 col-xs-12">--%>
                <%--<div class="box panel panel-default center-block">--%>
                    <%--<div class="panel-heading">--%>
                        <%--<h3 class="panel-title">恶意程序家族比例</h3>--%>
                    <%--</div>--%>
                    <%--<div class="panel-body" id="homecontainer" style="padding:15px;height: 50%;">--%>

                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="col-md-6 col-sm-12 col-xs-12">--%>
            <%--<div class="box panel panel-default center-block">--%>
            <%--<div class="panel-heading">--%>
            <%--<h3 class="panel-title">平台比例提供恶意APP比例</h3>--%>
            <%--</div>--%>
            <%--<div class="panel-body" id="platformcontainer" style="padding:15px;height:25%">--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>
        </div>
        <div class="row" style="margin-bottom: 30px;">

            <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">木马病毒图片</a></li>
                <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">敏感信息泄漏图片</a></li>
                <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">恶意短信图片</a></li>
                <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">恶意广告图片</a></li>
                <li role="presentation"><a href="#benign" aria-controls="benign" role="tab" data-toggle="tab">良性APP图片</a></li>
            </ul>
            <!-- Tab panes -->
            <div class="tab-content" style="padding: 15px;">
                <div role="tabpanel" class="tab-pane active" id="home" >
                    <img class="col-md-2 col-md-offset-1" src="/upload/exampleimage/01.png">
                    <img class="col-md-2" src="/upload/exampleimage/02.png">
                    <img class="col-md-2" src="/upload/exampleimage/03.png">
                    <img class="col-md-2" src="/upload/exampleimage/04.png">
                    <img class="col-md-2" src="/upload/exampleimage/05.png">
                </div>
                <div role="tabpanel" class="tab-pane" id="profile">
                    <img class="col-md-2 col-md-offset-1" src="/upload/exampleimage/11.png">
                    <img class="col-md-2" src="/upload/exampleimage/12.png">
                    <img class="col-md-2" src="/upload/exampleimage/13.png">
                    <img class="col-md-2" src="/upload/exampleimage/14.png">
                    <img class="col-md-2" src="/upload/exampleimage/15.png">
                </div>
                <div role="tabpanel" class="tab-pane" id="messages">
                    <img class="col-md-2 col-md-offset-1" src="/upload/exampleimage/21.png">
                    <img class="col-md-2" src="/upload/exampleimage/22.png">
                    <img class="col-md-2" src="/upload/exampleimage/23.png">
                    <img class="col-md-2" src="/upload/exampleimage/24.png">
                    <img class="col-md-2" src="/upload/exampleimage/25.png">
                </div>
                <div role="tabpanel" class="tab-pane" id="settings">
                    <img class="col-md-2 col-md-offset-1" src="/upload/exampleimage/31.png">
                    <img class="col-md-2" src="/upload/exampleimage/32.png">
                    <img class="col-md-2" src="/upload/exampleimage/33.png">
                    <img class="col-md-2" src="/upload/exampleimage/34.png">
                    <img class="col-md-2" src="/upload/exampleimage/35.png">
                </div>
                <div role="tabpanel" class="tab-pane" id="benign">
                    <img class="col-md-2 col-md-offset-1" src="/upload/exampleimage/b1.png">
                    <img class="col-md-2" src="/upload/exampleimage/b2.png">
                    <img class="col-md-2" src="/upload/exampleimage/b3.png">
                    <img class="col-md-2" src="/upload/exampleimage/b4.png">
                    <img class="col-md-2" src="/upload/exampleimage/b5.png">
                </div>
            </div>
        </div>
    </div>
</div>
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <img alt="Brand" src="${pageContext.request.contextPath}/images/logo_aw.png" style="width:70px;"> This
                site is managed by ZJUT ACIS.
            </div>
        </div>
    </div>
</footer>
<!-- Bootstrap core JavaScript -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/echarts/4.1.0/echarts-en.common.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
<script type="text/javascript"
        src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ZUONbpqGBsYGXNIYHicvbAbM"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>
<!-- 引入 DATA 文件 -->
<script src="${pageContext.request.contextPath}/js/map.js"></script>
<script src="${pageContext.request.contextPath}/js/type.js"></script>
<script src="${pageContext.request.contextPath}/js/year.js"></script>
<script src="${pageContext.request.contextPath}/js/home.js"></script>
<script src="${pageContext.request.contextPath}/js/upload.js"></script>
<script>
    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
    })

    $('#myTabs a').click(function (e) {
        e.preventDefault()
        $(this).tab('show')
    })
</script>
</body>
</html>
