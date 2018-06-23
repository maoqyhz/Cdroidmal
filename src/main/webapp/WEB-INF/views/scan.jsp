<%--
  Created by IntelliJ IDEA.
  User: Chingyu Mo
  Date: 2017/11/2
  Time: 18:31
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="description" content="android恶意检测平台">
    <meta name="author" content="Qingyu Mao">
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- icon -->
    <link href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <!-- file upload -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap-fileinput/css/fileinput.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <title>文件上传</title>
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
            <%--<ul class="nav navbar-nav">--%>
            <%--<li><a href="#">恶意分析</a></li>--%>
            <%--<li><a href="#">搜索</a></li>--%>
            <%--<li><a href="/home/scan">应用提交</a></li>--%>
            <%--<li><a href="#">关于</a></li>--%>
            <%--</ul>--%>
            <%--<ul class="nav navbar-nav navbar-right">--%>
            <%--<li><a href="./login.html">登录</a></li>--%>
            <%--<li><a href="./register.html">注册</a></li>--%>
            <%--</ul>--%>
        </div>
    </div>
</nav>
<div class="container height_all ">
    <div class="row ">
        <div class="col-md-12 center">
            <%--<img src="${pageContext.request.contextPath}/images/logoblack.png" alt="" style="width:200px;">--%>
            <h1>优盾移动应用安全检测平台</h1>
        </div>
        <div class="row">
            <div class="col-md-12 center">
                <!-- <h3>文件上传</h3> -->
            </div>
        </div>
        <div class="row">
            <hr/>
        </div>
        <div class="row">
            <div class="col-md-6 col-md-offset-3 center">
                <i class="fa fa-cloud-upload" style="font-size: 200px;color:#23b7e5"></i>
                <div class="progress" id="progressCanvas" style="display: none">
                    <div class="progress-bar"  id="progressBar" role="progressbar" aria-valuenow="0"
                         aria-valuemin="0" aria-valuemax="100" style="width: 0%;">

                        <span class="sr-only">分析中...</span>
                    </div>
                </div>
                <input id="imgUpload" type="file" data-show-preview="false">
                <div style="margin-top:10px;">
                    选择你想要提交的apk文件。提交成功，也就是您默认接受隐私协议。
                </div>
            </div>
        </div>

    </div>
</div>
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <%--<img alt="Brand" src="${pageContext.request.contextPath}/images/logo_aw.png" style="width:70px;"> This--%>
                site is managed for ZJUT ACIS.
                | © 2017 Ushied. All rights reserved.
            </div>
        </div>
    </div>
</footer>

<!-- Bootstrap core JavaScript -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-fileinput/js/fileinput.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-fileinput/js//locales/zh.js"></script>
<script>
    $(document).ready(function () {
        fixFooter();
        $("#imgUpload").fileinput({
            language: 'zh',
            uploadUrl: '${pageContext.request.contextPath}/upload/doUpload/',
            showUpload: true,
            showRemove: true,
            showCaption: true,
            uploadAsync: true,
            enctype: 'multipart/form-data',
//            browseClass: "btn btn-default btn-lg",
            previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
        }).on('fileuploaded', function (e, params) {
//            startProgerss()
            var param = params.response.sha256;
            startProgress(param);
            <%----%>
            <%--$(window).attr('location', "${pageContext.request.contextPath}/analysis/fetchReport?sha256=" + param);--%>
        });
    });


    $(window).resize(function () {
        fixFooter()
    });

    function fixFooter() {
        height = $(window).height();
        //  中间内容宽度和屏幕高度比较
        if (height - 110 > 421)
            $('body').css('height', height - 110);
    }
    function startProgress(param){
        $("#progressCanvas").show();
        var i = 0;

        var flag = setInterval(function () {
            $("#progressBar").css("width",i+"%");
            ks = Math.random() * 10;
            i = i + ks;
            if(i >= 99){
                $("#progressCanvas").hide();
                window.clearInterval(flag);
                $(window).attr('location', "${pageContext.request.contextPath}/analysis/fetchReport?sha256=" + param);
            }
        },500)


    }

</script>
</body>
</html>
