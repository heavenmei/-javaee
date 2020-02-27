<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>注册</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/form-elements.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="assets/ico/favicon.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
</head>
<body>
<!-- Top menu -->
<nav class="navbar navbar-inverse navbar-no-bg" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-navbar-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">Bootstrap Flat Registration Form Template</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="top-navbar-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
							<span class="li-text">
								Put some text or
							</span>
                    <a href="#"><strong>links</strong></a>
                    <span class="li-text">
								here, or some icons:
							</span>
                    <span class="li-social">
								<a href="#"><i class="fa fa-facebook"></i></a>
								<a href="#"><i class="fa fa-twitter"></i></a>
								<a href="#"><i class="fa fa-envelope"></i></a>
								<a href="#"><i class="fa fa-skype"></i></a>
							</span>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Top content -->
<div class="top-content">

    <div class="inner-bg">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 text">
                    <h1><strong>Bootstrap</strong> Flat Registration Form</h1>
                    <div class="description">
                        <p>
                            This is a free responsive flat registration form made with Bootstrap.
                            Download it on <a href="#"><strong>AZMIND</strong></a>, customize and use it as you like!
                        </p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 phone">
                    <img src="assets/img/iphone.png" alt="">
                </div>
                <div class="col-sm-5 form-box">
                    <div class="form-top">
                        <div class="form-top-left">
                            <h3>Register to our App</h3>
                            <p>Fill in the form below to get instant access:</p>
                        </div>
                        <div class="form-top-right">
                            <i class="fa fa-pencil"></i>
                        </div>
                        <div class="form-top-divider"></div>
                    </div>

                    <div class="form-bottom" >
                        <form role="form" action="useregister.action" method="post" class="registration-form">
                            <div class="form-group">
                                <label class="sr-only" for="form-first-name">用户名</label>
                                <input type="text" name="pu.username"  placeholder="用户名" class="form-first-name form-control" id="form-first-name">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="form-last-name">密码</label>
                                <input type="password" name="pu.password" placeholder="密码" class="form-last-name form-control" id="form-last-name">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" >性别</label>
                                <input type="text" name="pu.sex" placeholder="性别" class="form-email form-control" id="form-email2">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" >电话</label>
                                <input type="text" name="pu.phone" placeholder="电话" class="form-email form-control" id="form-email1">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" >身份</label>
<%--                                <input type="text" name="pu.useridentity" placeholder="身份" class="form-email form-control" id="form-email">--%>
                                <select
                            </div>
                            <button type="submit" class="btn">注册</button>
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </div>

</div>


<!-- Javascript -->
<script src="assets/js/jquery-1.11.1.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.backstretch.min.js"></script>
<script src="assets/js/retina-1.1.0.min.js"></script>
<script src="assets/js/scripts.js"></script>

<!--[if lt IE 10]>
<script src="assets/js/placeholder.js"></script>
<![endif]-->



<%--<h1>用户</h1>--%>
<%--<form action="useregister" method="post">--%>
<%--<table>--%>
<%--<tr><td>用户名:</td><td><input type="text" name="pu.username"></td></tr>--%>
<%--<tr><td>密码:</td><td><input type="password" name="pu.password"></td></tr>--%>
<%--<tr><td>性别:</td><td><input type="text" name="pu.sex"></td></tr>--%>
<%--<tr><td>电话:</td><td><input type="tel" name="pu.phone"></td></tr>--%>
<%--<tr><td>身份:</td><td><input type="text" name="pu.useridentity"></td></tr>--%>
<%--<tr><td><input type="submit" value="注册"></td></tr>--%>
<%--</table>--%>

</body>
</html>