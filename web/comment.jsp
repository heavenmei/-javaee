<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>写评论</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" name="viewport">
    <link rel="stylesheet" href="dist/modules/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="dist/modules/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="dist/modules/fontawesome/web-fonts-with-css/css/fontawesome-all.min.css">

    <link rel="stylesheet" href="dist/modules/summernote/summernote-lite.css">
    <link rel="stylesheet" href="dist/modules/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="dist/css/demo.css">
    <link rel="stylesheet" href="dist/css/style.css">
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Custom Theme files -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Custom Theme files -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--webfont-->
    <link href='http://fonts.useso.com/css?family=Raleway:400,100,200,300,500,600,700,800,900' rel='stylesheet' type='text/css'>
    <link href='http://fonts.useso.com/css?family=Roboto:400,900italic,900,700italic,700,500italic,500,400italic,300,300italic,100italic,100' rel='stylesheet' type='text/css'>
    <script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#horizontalTab').easyResponsiveTabs({
                type: 'default', //Types: default, vertical, accordion
                width: 'auto', //auto or any width like 600px
                fit: true   // 100% fit in a container
            });
        });
    </script>
    <script src="js/jquery.easydropdown.js"></script>
</head>
<body>
<!-- header-starts -->
<div class="page-header">
    <div class="container">
        <div class="page-header-info">
            <div class="page-header-info-head text-center">
                <a href="index.html"><h1>Travelica</h1></a>
            </div>
            <!-- start h_menu4 -->
            <div class="h_menu4">
                <a class="toggleMenu" href="">Menu</a>
                <ul class="nav p-nav">
                    <li class="active"><a href="search.jsp">主页</a></li>
                    <li><a href="booking.html">酒店简介</a>
                        <ul>
                            <li><a href="booking.html">booking</a></li>
                            <li><a href="rooms.html">rooms</a></li>
                            <li><a href="reservation.html">reservation</a></li>
                            <li><a href="booking.html">large city hotels</a></li>
                            <li><a href="booking.html">small city hotels</a></li>
                        </ul>
                    </li>
                    <li><a href="hist.action">历史订单记录</a>
                        <ul>
                            <li><a href="payment.html">payment</a></li>
                            <li><a href="search.html">search</a></li>
                            <li><a href="search.html">list</a></li>
                        </ul>
                    </li>
                    <li><a href="login.jsp" class="root">登录</a>
                        <ul>
                            <li><a href="destination.html">philippines</a></li>
                            <li><a href="destination.html">brazil</a></li>
                            <li><a href="destination.html">new york</a></li>
                        </ul>
                    </li>
                    <li><a href="register.jsp">注册</a></li>
                </ul>
                <script type="text/javascript" src="js/nav.js"></script>
            </div>
            <!-- end h_menu4 -->
        </div>
    </div>
</div>
<!-- header-ends -->
<!-- content-section-starts -->
<div class="main-content">
    <section class="section">
        <%--        <h1 class="section-header">--%>
        <%--            <div>Tables</div>--%>
        <%--        </h1>--%>
        <div class="section-body">
            <div class="row">
                <div class="col-lg-5 col-md-12 col-12 col-lg-10">
                    <form action="comment.action" method="post" class="needs-validation" novalidate>
                        <div class="card">
                            <div class="card-header">
                                <h3>评论</h3>
                            </div>
                            <div class="card-body">
<%--                                <div class="form-group">--%>
<%--                                    <label>Title</label>--%>
<%--                                    <input type="text" name="title" class="form-control" required>--%>
<%--                                    <div class="invalid-feedback">--%>
<%--                                        Please fill in the title--%>
<%--                                    </div>--%>
<%--                                </div>--%>
                                <div class="form-group">
                                    <label><strong>评论</strong></label>
                                    <br/>
                                    <textarea  name="com" class="summernote-simple"></textarea>
                                </div>
                            </div>
                            <div class="card-footer">
                                <button class="btn btn-primary">提交</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- footer-section-starts -->
<div class="footer">
    <div class="copy-rights text-center">
        <p>Copyright &copy; 2015.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
    </div>
</div>

<script src="dist/modules/jquery.min.js"></script>
<script src="dist/modules/popper.js"></script>
<script src="dist/modules/tooltip.js"></script>
<script src="dist/modules/bootstrap/js/bootstrap.min.js"></script>
<script src="dist/modules/nicescroll/jquery.nicescroll.min.js"></script>
<script src="dist/modules/scroll-up-bar/dist/scroll-up-bar.min.js"></script>
<script src="dist/js/sa-functions.js"></script>

<script src="dist/modules/chart.min.js"></script>
<script src="dist/modules/summernote/summernote-lite.js"></script>

<script>
    var ctx = document.getElementById("myChart").getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
            datasets: [{
                label: 'Statistics',
                data: [460, 458, 330, 502, 430, 610, 488],
                borderWidth: 2,
                backgroundColor: 'rgb(87,75,144)',
                borderColor: 'rgb(87,75,144)',
                borderWidth: 2.5,
                pointBackgroundColor: '#ffffff',
                pointRadius: 4
            }]
        },
        options: {
            legend: {
                display: false
            },
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true,
                        stepSize: 150
                    }
                }],
                xAxes: [{
                    gridLines: {
                        display: false
                    }
                }]
            },
        }
    });
</script>
<script src="dist/js/scripts.js"></script>
<script src="dist/js/custom.js"></script>
<script src="dist/js/demo.js"></script>



<%--<form action="comment.action" method="post">--%>
<%--<table><tr><td><input type="text" name="com"></td><td><input type="submit" value="提交"></td></tr></table>--%>
<%--</form>--%>
</body>
</html>