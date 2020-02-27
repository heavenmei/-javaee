<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>旅店详情</title>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Custom Theme files -->
    <link rel="stylesheet" href="css/font-awesome.css">
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
    <script src="js/jquery.easydropdown.js" type="text/javascript"></script>
    <!---strat-date-piker---->
    <link rel="stylesheet" href="css/jquery-ui.css" />
    <script src="js/jquery-ui.js"></script>
    <script>
        $(function() {
            $( "#datepicker,#datepicker1" ).datepicker();
        });
    </script>
    <!---/End-date-piker---->
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
                    <li><a href="show.action">未完成订单</a>
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
<div class="main_bg">
    <div class="container">
        <div class="online_reservation">
            <div class="b_room">
                <div class="booking_room">
                    <h4>book a room online</h4>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
                </div>
                <div class="reservation">
                    <form action="addOrder.action" method="post">
                    <ul>
                        <li class="span1_of_1">
                            <h5>房间类型</h5>
                            <!----------start section_room----------->
                            <div class="section_room">
<%--                                <input type="hidden" value="">--%>
                                <select id="country1" onchange="change_country(this.value)" class="frm-field required" name="po.roomstyle">
                                    <c:forEach var="x" items="${sessionScope.RoomList }">
                                    <option value=${x.getRoomstyle() }>${x.getRoomstyle()}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </li>
                        <li  class="span1_of_1 left">
                            <h5>入住时间</h5>
                            <div class="book_date">
<%--                                <form>--%>
                                    <input name="po.checkinTime" class="date" id="datepicker" type="text" value="DD/MM/YY" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'DD/MM/YY';}">
<%--                                </form>--%>

                            </div>
                        </li>
                        <li  class="span1_of_1 left">
                            <h5>退房时间</h5>
                            <div class="book_date">

                                    <input name="po.checkoutTime" class="date" id="datepicker1" type="text" value="DD/MM/YY" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'DD/MM/YY';}">

                            </div>
                        </li>
                        <li class="span1_of_2 left">
                            <h5>房间数量</h5>
                            <!----------start section_room----------->
                            <div class="section_room">
                                <select name="po.ordernumber" id="country"  class="frm-field required" type="text" >
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </li>
                        <li class="span1_of_3">
                            <div class="date_btn">

                                    <input type="submit" value="book now" />

                            </div>
                        </li>
                        <div class="clearfix"></div>
                    </ul></form>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!--start grids_of_3 -->
        <div class="grids_of_3">
            <div class="grid1_of_3">
                <div class="grid1_of_3_img">
                    <a href="details.html">
                        <img src="images/b-pic2.jpg" alt="" />
                        <span class="next"> </span>
                    </a>
                </div>
                <h4><a href="#">单床房<span>120$</span></a></h4>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
            </div>
            <div class="grid1_of_3">
                <div class="grid1_of_3_img">
                    <a href="details.html">
                        <img src="images/b-pic1.jpg" alt="" />
                        <span class="next"> </span>
                    </a>
                </div>
                <h4><a href="#">双床房<span>180$</span></a></h4>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
            </div>
            <div class="grid1_of_3">
                <div class="grid1_of_3_img">
                    <a href="details.html">
                        <img src="images/b-pic3.jpg" alt="" />
                        <span class="next"> </span>
                    </a>
                </div>
                <h4><a href="#">大床房<span>210$</span></a></h4>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
            </div>
            <div class="grid1_of_3">
                <div class="grid1_of_3_img">
                    <a href="details.html">
                        <img src="images/b-pic2.jpg" alt="" />
                        <span class="next"> </span>
                    </a>
                </div>
                <h4><a href="#">single room<span>120$</span></a></h4>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
            </div>
            <div class="grid1_of_3">
                <div class="grid1_of_3_img">
                    <a href="details.html">
                        <img src="images/b-pic1.jpg" alt="" />
                        <span class="next"> </span>
                    </a>
                </div>
                <h4><a href="#">double room<span>180$</span></a></h4>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
            </div>
            <div class="grid1_of_3">
                <div class="grid1_of_3_img">
                    <a href="details.html">
                        <img src="images/b-pic3.jpg" alt="" />
                        <span class="next"> </span>
                    </a>
                </div>
                <h4><a href="#">suite room<span>210$</span></a></h4>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--start main -->
<!-- content-section-ends -->
<!-- footer-section-starts -->
<div class="footer">
    <div class="copy-rights text-center">
        <p>Copyright &copy; 2015.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
    </div>
</div>
<!-- footer-section-ends -->





<%--<table>--%>
<%--<c:forEach var="x" items="${sessionScope.RoomList }">--%>
<%--<tr><td>${x.getRoomstyle() }</td><td>${x.getBreakfast() }</td><td>${x.getUnit() }</td><td>${x.getAmount() }</td>--%>
<%--<c:choose>--%>
<%--<c:when test="${sessionScope.user.getUseridentity() eq '普通用户' }">--%>
<%--<td><a href="orderRid.action?rid=${x.getRoomId() }"><input type="button" value="下单"></a></td></c:when>--%>
<%--<c:otherwise>--%>
<%--<td><a href="delRoom.action?drid=${x.getRoomId() }&hid=${x.getHotelId()}"><input type="button" value="删除"></a></td>--%>
<%--</c:otherwise>--%>
<%--</c:choose>--%>
<%--</tr>--%>
<%--</c:forEach>--%>
<%--</table>--%>
<%--<table>--%>
<%--<c:forEach var="x" items="${sessionScope.commentList }">--%>
<%--<tr><td>${x.getUsername() }</td><td>${x.getCom() }</td>--%>
<%--</tr>--%>
<%--</c:forEach>--%>



<%--<c:choose>--%>
<%--<c:when test="${sessionScope.user.getUseridentity() eq '普通用户' }">--%>
<%--<tr><td><a href="search.jsp">back</a></td></tr>--%>
<%--</c:when>--%>
<%--<c:otherwise>--%>
<%--<tr><td><a href="operator.jsp">back</a></td></tr>--%>
<%--</c:otherwise>--%>
<%--</c:choose>--%>
<%--</table>--%>





</body>
</html>