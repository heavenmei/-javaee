<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>我的订单</title>
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
    <link rel="stylesheet" href="dist/modules/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="dist/modules/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="dist/modules/fontawesome/web-fonts-with-css/css/fontawesome-all.min.css">

    <link rel="stylesheet" href="dist/css/demo.css">
    <link rel="stylesheet" href="dist/css/style.css">
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
                    <li><a href="show.action">未出行订单</a>
                        <ul>
                            <li><a href="booking.html">booking</a></li>
                            <li><a href="rooms.html">rooms</a></li>
                            <li><a href="reservation.html">reservation</a></li>
                            <li><a href="booking.html">large city hotels</a></li>
                            <li><a href="booking.html">small city hotels</a></li>
                        </ul>
                    </li>
                    <li><a href="hist.action">历史订单</a>
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
<!--start main -->
<div class="main-content">
    <section class="section">
<%--        <h1 class="section-header">--%>
<%--            <div>Tables</div>--%>
<%--        </h1>--%>
        <div class="section-body">
            <div class="row">
                <div class="col-12 col-md-12 col-lg-10">
                    <div class="card">
                        <div class="card-header">
                            <h4>Simple Table</h4>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <tr>
                                        <th>订单号</th>
                                        <th>酒店名称</th>
                                        <th>房间类型</th>
                                        <th>数量</th>
                                        <th>预订时间</th>
                                        <th>状态</th>
                                        <th> </th>
                                    </tr>
                                    <c:forEach var="x" items="${sessionScope.myOrder }">
                                    <c:choose>
                                    <c:when test="${x.getStatu() eq '已预订' }">
                                    <tr>
                                        <td>${x.getOid() }</td>
                                        <td>${x.getHotelname() }</td>
                                        <td>${x.getRoomstyle() }</td>
                                        <td>${x.getOrdernumber() }</td>
                                        <td>${x.getOrderTime() }</td>
                                        <td><div class="badge badge-success">${x.getStatu() }</div></td>
                                        <td><a href="cancel.action?coid=${x.getOid() }"><input type="button" value="取消"></a></td>
                                    </tr>
                                    </c:when>
                                    </c:choose>
                                    </c:forEach>
                                </table>
                            </div>
                        </div>
                        <div class="card-footer text-right">
                            <nav class="d-inline-block">
                                <ul class="pagination mb-0">
                                    <li class="page-item disabled">
                                        <a class="page-link" href="#" tabindex="-1"><i class="ion ion-chevron-left"></i></a>
                                    </li>
                                    <li class="page-item active"><a class="page-link" href="#">1 <span class="sr-only">(current)</span></a></li>
                                    <li class="page-item">
                                        <a class="page-link" href="#">2</a>
                                    </li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item">
                                        <a class="page-link" href="#"><i class="ion ion-chevron-right"></i></a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
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

<%--<table>--%>
<%--<c:forEach var="x" items="${sessionScope.myOrder }">--%>
<%--<c:choose>--%>
<%--<c:when test="${x.getStatu() eq '已预订' }">--%>
<%--<tr><td>${x.getOid() }</td><td>${x.getHotelname() }</td><td>${x.getRoomstyle() }</td><td>${x.getOrdernumber() }</td>--%>
<%--<td>${x.getOrderTime() }</td><td>${x.getStatu() }</td>--%>
<%--<td><a href="cancel.action?coid=${x.getOid() }"><input type="button" value="取消"></a></td></tr>--%>
<%--</c:when>--%>
<%--</c:choose>--%>
<%--</c:forEach>--%>
<%--<tr><td><a href="search.jsp">back</a></td></tr>--%>
<%--</table>--%>



<script src="dist/modules/jquery.min.js"></script>
<script src="dist/modules/popper.js"></script>
<script src="dist/modules/tooltip.js"></script>
<script src="dist/modules/bootstrap/js/bootstrap.min.js"></script>
<script src="dist/modules/nicescroll/jquery.nicescroll.min.js"></script>
<script src="dist/modules/scroll-up-bar/dist/scroll-up-bar.min.js"></script>
<script src="dist/js/sa-functions.js"></script>

<script src="dist/js/scripts.js"></script>
<script src="dist/js/custom.js"></script>
<script src="dist/js/demo.js"></script>
</body>
</html>