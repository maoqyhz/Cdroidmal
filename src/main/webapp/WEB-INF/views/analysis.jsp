<%--
  Created by IntelliJ IDEA.
  User: Chingyu Mo
  Date: 2017/11/2
  Time: 18:04
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="description" content="android恶意检测平台">
    <meta name="author" content="Qingyu Mao">
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <title>文件上传</title>
</head>

<body style="margin-top:50px">
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
            <%--<ul class="nav navbar-nav">--%>
                <%--<li><a href="#">恶意分析</a></li>--%>
                <%--<li><a href="#">搜索</a></li>--%>
                <%--<li><a href="./upload.html">应用提交</a></li>--%>
                <%--<li><a href="#">关于</a></li>--%>
            <%--</ul>--%>
            <%--<ul class="nav navbar-nav navbar-right">--%>
                <%--<li><a href="./login.html">登录</a></li>--%>
                <%--<li><a href="./register.html">注册</a></li>--%>
            <%--</ul>--%>
        </div>
    </div>
</nav>
<div class="container">
    <div class="row" style="width:115%;background-image: url(/images/top-block.svg);background-repeat: no-repeat;background-position: center center;background-size: cover;">
        <div class="col-md-12" style="text-align:center;">
            <!-- <img src="./static/images/logoblack.png" alt="" style="width:200px;"> -->
            <h1>优盾移动应用安全检测平台</h1>
        </div>
        <h2 class="ng-binding">
            <div class="row" >

                <div class="meta-info col-md-3">
                    <img src="/images/apk.png" style="margin-left:25px">
                </div>
                <%--<div class="meta-info col-md-1">--%>
                <%--</div>--%>
                <div class="meta-info col-md-8">
                    <div class="row" >
                        <div class="col-md-12">
                            <h4 >应用名称</h4>
                            <div class="content ">${apk.app}</div>
                        </div>
                        <div class="meta-info col-md-12">
                            <h4>包名</h4>
                            <div class="content ">${apk.package_name}</div>
                        </div>
                        <%--<div class="meta-info col-md-12">--%>
                        <%--<div class="title">上传时间</div>--%>
                        <%--<div class="content">--%>
                        <%--<fmt:formatDate value="${apk.created_on}" pattern="yyyy-MM-dd HH:mm:ss"/>--%>
                        <%--</div>--%>
                        <%--</div>--%>
                        <div class="meta-info col-md-12">
                            <h4 >应用大小</h4>
                            <div class="content"><fmt:formatNumber type="number" value="${apk.size/1024/1024}" pattern="0.00" maxFractionDigits="2"/>M</div>
                        </div>
                        <div class="meta-info col-md-12">
                            <h4>检测结果</h4>
                            <div class="content ">
                                <small style="font-size:16px;" >
                                    <c:forEach items="${apk.tags}" var="t" varStatus="vs">
                                        <span class="label label-danger ml" data-toggle="tooltip" data-placement="bottom" title="${t.note}">${t.tag}</span>
                                    </c:forEach>
                                </small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%--${apk.app}--%>
            <br>

            <small>
                <%--${apk.package_name}--%>
            </small>
        </h2>
    </div>
    <div class="row">
        <ul class="nav nav-tabs" role="tablist">
            <%--<li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">基本报告</a></li>--%>
            <li role="presentation" class="active"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">详细报告</a></li>
            <%--<li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">代码图像</a></li>--%>
        </ul>
        <div class="tab-content">
            <%--<div role="tabpanel" class="tab-pane active" id="home">--%>
                <%--<input type="hidden" id="app-sha256-cn" value="${apk.sha256}">--%>
                <%--<div class="row" style="margin-top:15px;height: 70%;">--%>
                    <%--<div class="col-md-12 col-sm-12 col-xs-12 appinfo">--%>
                        <%--<div id="basic-info-cn" >--%>

                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
            <div role="tabpanel" class="tab-pane active" id="profile">
                <div class="row">
                    <div class="col-md-12">
                        <h3>基本信息</h3>
                    </div>
                </div>
                <input type="hidden" id="app-sha256" value="${apk.sha256}">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12 appinfo">
                        <div id="basic-info">
                            <div class="row">
                                <div class="meta-info col-md-2">
                                    <div class="title">App name</div>
                                    <div class="content ">${apk.app}</div>
                                </div>
                                <div class="meta-info col-md-2">
                                    <div class="title">Package</div>
                                    <div class="content ">${apk.package_name}</div>
                                </div>
                                <div class="meta-info col-md-2">
                                    <div class="title">Developer</div>
                                    <div class="content ">${apk.company}</div>
                                </div>
                                <div class="meta-info col-md-2">
                                    <div class="title">Displayed version</div>
                                    <div class="content ">${apk.displayed_version}</div>
                                </div>
                                <div class="meta-info col-md-2">
                                    <div class="title">Date added</div>
                                    <div class="content">
                                        <fmt:formatDate value="${apk.created_on}" pattern="yyyy-MM-dd HH:mm:ss"/>
                                    </div>
                                </div>
                                <div class="meta-info col-md-2">
                                    <div class="title">APK size</div>
                                    <div class="content">${apk.size}</div>
                                </div>
                                <div class="meta-info col-md-2"></div>
                            </div>
                            <div class="row">
                                <div class="meta-info col-md-6">
                                    <div class="title">SHA256</div>
                                    <div class="content ">
                                        ${apk.sha256}
                                    </div>
                                </div>
                                <div class="meta-info col-md-3">
                                    <div class="title">SHA1</div>
                                    <div class="content "> ${apk.sha1}</div>
                                </div>
                                <div class="meta-info col-md-3">
                                    <div class="title">MD5</div>
                                    <div class="content "> ${apk.md5}</div>
                                </div>
                                <%--<div class="meta-info col-md-3">--%>
                                <%--<div class="title">代码图片</div>--%>
                                <%--<div class="content">--%>
                                <%--<img src="/upload/apkimg/${apk.sha256}.png">--%>
                                <%--</div>--%>
                                <%--</div>--%>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <h3>分析报告</h3>
                    </div>
                </div>
                <div class="row analysis">
                    <div class="col-md-12">
                        <h5>General info </h5>
                    </div>
                </div>
                <div class="enum-container" style="width: 65%;float: left;">
                    <div class="enum">
                        <strong>Minimum SDK version: </strong>${report.androguard.min_sdk_version}
                    </div>
                    <div class="enum">
                        <strong>App name: </strong>${report.androguard.app_name}
                    </div>
                    <div class="enum">
                        <strong>Package name: </strong>${report.androguard.package_name}
                    </div>
                    <div class="enum">
                        <strong>Signature name: </strong>${report.androguard.signature_name}
                    </div>
                    <div class="enum">
                        <strong>Version code: </strong>${report.androguard.version_code}
                    </div>
                    <div class="enum">
                        <strong>Displayed version: </strong>${report.androguard.displayed_version}
                    </div>
                    <div class="enum">
                        <strong>Target SDK Version: </strong>${report.androguard.target_sdk_version}
                    </div>
                    <div class="enum">
                        <strong>Max SDK Version: </strong>${report.androguard.max_sdk_version}
                    </div>


                </div>
                <div class="enum" style="float: right;">
                    <strong>代码图片: </strong><img src="/upload/apkimg/${apk.sha256}.png">
                </div>
                <div class="row analysis">
                    <div class="col-md-12">
                        <h5>Permissions</h5>
                    </div>
                </div>
                <div clas="enum-container">
                    <c:forEach items="${report.androguard.permissions}" var="permission" varStatus="vs">
                        <div class="enum">
                                ${permission}
                        </div>
                    </c:forEach>
                </div>
                <div class="row analysis">
                    <div class="col-md-12">
                        <h5>Activities</h5>
                    </div>
                </div>
                <div clas="enum-container">
                    <c:forEach items="${report.androguard.activities}" var="activity" varStatus="vs">
                        <div class="enum">
                                ${activity}
                        </div>
                    </c:forEach>
                </div>

                <div class="row analysis">
                    <div class="col-md-12">
                        <h5>Receivers</h5>
                    </div>
                </div>
                <div clas="enum-container">
                    <c:forEach items="${report.androguard.receivers}" var="receiver" varStatus="vs">
                        <div class="enum">
                                ${receiver}
                        </div>
                    </c:forEach>
                </div>

                <div class="row analysis">
                    <div class="col-md-12">
                        <h5>Urls</h5>
                    </div>
                </div>
                <div clas="enum-container">
                    <c:forEach items="${report.androguard.urls}" var="url" varStatus="vs">
                        <div class="enum">
                                ${url}
                        </div>
                    </c:forEach>
                </div>

                <div class="row analysis">
                    <div class="col-md-12">
                        <h5>Services</h5>
                    </div>
                </div>
                <div clas="enum-container">
                    <c:forEach items="${report.androguard.services}" var="service" varStatus="vs">
                        <div class="enum">
                                ${service}
                        </div>
                    </c:forEach>
                </div>

                <div class="row analysis">
                    <div class="col-md-12">
                        <h5>Filters</h5>
                    </div>
                </div>
                <div clas="enum-container">
                    <c:forEach items="${report.androguard.filters}" var="filter" varStatus="vs">
                        <div class="enum">
                                ${filter}
                        </div>
                    </c:forEach>
                </div>

                <div class="row analysis">
                    <div class="col-md-12">
                        <h5>Providers</h5>
                    </div>
                </div>
                <div clas="enum-container">
                    <c:forEach items="${report.androguard.providers}" var="provider" varStatus="vs">
                        <div class="enum">
                                ${provider}
                        </div>
                    </c:forEach>
                </div>

                <div class="row analysis">
                    <div class="col-md-12">
                        <h5>Certificate</h5>
                    </div>
                </div>
                <div clas="enum-container">
                    <div clas="enum-container">
                        <div class="enum">
                            <strong>sha1</strong>${report.androguard.certificate.sha1}
                        </div>
                        <div class="enum">
                            <strong>not_after</strong>${report.androguard.certificate.not_after}
                        </div>
                        <div class="enum">
                            <strong>issuerDN</strong>${report.androguard.certificate.issuerDN}
                        </div>
                        <div class="enum">
                            <strong>subjectDN</strong>${report.androguard.certificate.subjectDN}
                        </div>
                        <div class="enum">
                            <strong>serial</strong>${report.androguard.certificate.serial}
                        </div>
                        <div class="enum">
                            <strong>not_before</strong>${report.androguard.certificate.not_before}
                        </div>
                    </div>
                    <hr/>
                    <div class="enum-container" id="functions">
                    </div>
                </div>
            </div>
            <div role="tabpanel" class="tab-pane" id="messages">3</div>
        </div>
    </div>



    <!-- Bootstrap core JavaScript -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
        $(function () {
            fixFooter()
            var data = ${str};
            var func = data.androguard.functionalities;
            $.each(func, function (idx, obj) {
                var f = obj;
                var $title = $(
                    "<div class=\"row analysis\"><div class=\"col-md-12\"><h5>Functionalities -" +
                    idx + "</h5></div></div>");
                var lines = '';
                $.each(f, function (idx, obj) {
                    lines += "<tr><td class=\"col-md-6\"><code>" + obj.code + "</code></td><td class=\"col-md-3\"> " +
                        obj.class + "</td><td class=\"col-md-3\">" +
                        obj.method + "</td></tr>";
                });
                var $table = $(
                    "<div class=\"enum-container\"><div class=\"enum\"><table class=\"table func-table\"><tr id=\"line\"><th>Code</th><th>Class</th><th>Method</th></tr>" +
                    lines + "</table></div></div></div>"
                );
                $title.appendTo($('#functions'));
                $table.appendTo($('#functions'));

            });
        });
        $(window).resize(function () {
            fixFooter()
        });

        function fixFooter() {
            height = $(window).height();
            //  中间内容宽度和屏幕高度比较
            if (height - 110 > 402)
                $('body').css('height', height - 110);
        }
        $('#someTab').tab('show')
        $(function () {
            $('[data-toggle="tooltip"]').tooltip()
        })
        document.documentElement.style.overflowX = 'hidden'
    </script>
</body>
<footer >
    <div class="container ">
        <div class="row">
            <div class="col-md-12">
                <%--<img alt="Brand" src="${pageContext.request.contextPath}/images/logo_aw.png" style="width:70px;">--%>
                This
                site is managed for ZJUT ACIS.
                | © 2017 Ushied. All rights reserved.
            </div>
        </div>
    </div>
</footer>
</html>