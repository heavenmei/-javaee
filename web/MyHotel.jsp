<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>我的旅店</title>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" name="viewport">
    <title>Dashboard &mdash; Stisla</title>

    <link rel="stylesheet" href="dist/modules/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="dist/modules/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="dist/modules/fontawesome/web-fonts-with-css/css/fontawesome-all.min.css">

    <link rel="stylesheet" href="dist/modules/summernote/summernote-lite.css">
    <link rel="stylesheet" href="dist/modules/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="dist/css/demo.css">
    <link rel="stylesheet" href="dist/css/style.css">
</head>
<body>
<div id="app">
    <div class="main-wrapper">
        <div class="navbar-bg"></div>
        <nav class="navbar navbar-expand-lg main-navbar">
            <form class="form-inline mr-auto">
                <ul class="navbar-nav mr-3">
                    <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg"><i class="ion ion-navicon-round"></i></a></li>
                    <li><a href="#" data-toggle="search" class="nav-link nav-link-lg d-sm-none"><i class="ion ion-search"></i></a></li>
                </ul>
                <div class="search-element">
                    <input class="form-control" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn" type="submit"><i class="ion ion-search"></i></button>
                </div>
            </form>
            <ul class="navbar-nav navbar-right">
                <li class="dropdown dropdown-list-toggle"><a href="#" data-toggle="dropdown" class="nav-link notification-toggle nav-link-lg beep"><i class="ion ion-ios-bell-outline"></i></a>
                    <div class="dropdown-menu dropdown-list dropdown-menu-right">
                        <div class="dropdown-header">Notifications
                            <div class="float-right">
                                <a href="#">View All</a>
                            </div>
                        </div>
                        <div class="dropdown-list-content">
                            <a href="#" class="dropdown-item dropdown-item-unread">
                                <img alt="image" src="dist/img/avatar/avatar-1.jpeg" class="rounded-circle dropdown-item-img">
                                <div class="dropdown-item-desc">
                                    <b>Kusnaedi</b> has moved task <b>Fix bug header</b> to <b>Done</b>
                                    <div class="time">10 Hours Ago</div>
                                </div>
                            </a>
                            <a href="#" class="dropdown-item dropdown-item-unread">
                                <img alt="image" src="dist/img/avatar/avatar-2.jpeg" class="rounded-circle dropdown-item-img">
                                <div class="dropdown-item-desc">
                                    <b>Ujang Maman</b> has moved task <b>Fix bug footer</b> to <b>Progress</b>
                                    <div class="time">12 Hours Ago</div>
                                </div>
                            </a>
                            <a href="#" class="dropdown-item">
                                <img alt="image" src="dist/img/avatar/avatar-3.jpeg" class="rounded-circle dropdown-item-img">
                                <div class="dropdown-item-desc">
                                    <b>Agung Ardiansyah</b> has moved task <b>Fix bug sidebar</b> to <b>Done</b>
                                    <div class="time">12 Hours Ago</div>
                                </div>
                            </a>
                            <a href="#" class="dropdown-item">
                                <img alt="image" src="dist/img/avatar/avatar-4.jpeg" class="rounded-circle dropdown-item-img">
                                <div class="dropdown-item-desc">
                                    <b>Ardian Rahardiansyah</b> has moved task <b>Fix bug navbar</b> to <b>Done</b>
                                    <div class="time">16 Hours Ago</div>
                                </div>
                            </a>
                            <a href="#" class="dropdown-item">
                                <img alt="image" src="dist/img/avatar/avatar-5.jpeg" class="rounded-circle dropdown-item-img">
                                <div class="dropdown-item-desc">
                                    <b>Alfa Zulkarnain</b> has moved task <b>Add logo</b> to <b>Done</b>
                                    <div class="time">Yesterday</div>
                                </div>
                            </a>
                        </div>
                    </div>
                </li>
                <li class="dropdown"><a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg">
                    <i class="ion ion-android-person d-lg-none"></i>
                    <div class="d-sm-none d-lg-inline-block">Hi, Ujang Maman</div></a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a href="#" class="dropdown-item has-icon">
                            <i class="ion ion-android-person"></i> Profile
                        </a>
                        <a href="login.jsp" class="dropdown-item has-icon">
                            <i class="ion ion-log-out"></i> Logout
                        </a>
                    </div>
                </li>
            </ul>
        </nav>
        <div class="main-sidebar">
            <aside id="sidebar-wrapper">
                <div class="sidebar-brand">
                    <a href="#">Stisla Lite</a>
                </div>
                <div class="sidebar-user">
                    <div class="sidebar-user-picture">
                        <img alt="image" src="dist/img/avatar/avatar-1.jpeg">
                    </div>
                    <div class="sidebar-user-details">
                        <div class="user-name">Ujang Maman</div>
                        <div class="user-role">
                            Administrator
                        </div>
                    </div>
                </div>
                <ul class="sidebar-menu">
                    <li class="menu-header">主页</li>
                    <li class="active">
                        <a href="operator.jsp"><i class="ion ion-speedometer"></i><span>主页</span></a>
                    </li>

                    <li class="menu-header">功能板块</li>
                    <!-- <li>
                      <a href="#" class="has-dropdown"><i class="ion ion-ios-albums-outline"></i><span>Components</span></a>
                      <ul class="menu-dropdown">
                        <li><a href="general.html"><i class="ion ion-ios-circle-outline"></i> Basic</a></li>
                        <li><a href="components.html"><i class="ion ion-ios-circle-outline"></i> Main Components</a></li>
                        <li><a href="buttons.html"><i class="ion ion-ios-circle-outline"></i> Buttons</a></li>
                        <li><a href="toastr.html"><i class="ion ion-ios-circle-outline"></i> Toastr</a></li>
                      </ul>
                    </li>
                    <li>
                      <a href="#" class="has-dropdown"><i class="ion ion-flag"></i><span>Icons</span></a>
                      <ul class="menu-dropdown">
                        <li><a href="ion-icons.html"><i class="ion ion-ios-circle-outline"></i> Ion Icons</a></li>
                        <li><a href="fontawesome.html"><i class="ion ion-ios-circle-outline"></i> Font Awesome</a></li>
                        <li><a href="flag.html"><i class="ion ion-ios-circle-outline"></i> Flag</a></li>
                      </ul>
                    </li> -->
                    <li>
                        <a href="addHotel.jsp"><i class="ion ion-clipboard"></i><span>添加旅店</span></a>
                    </li>
                    <li>
                        <a href="MyHotel.action"><i class="ion ion-stats-bars"></i><span>我的旅店</span></a>
                    </li>
                    <li>
                        <a href="showB.action"><i class="ion ion-ios-location-outline"></i><span>我的订单</span></a>
                    </li>
                    <li>
                        <!-- <a href="#" class="has-dropdown"><i class="ion ion-ios-copy-outline"></i><span>Examples</span></a> -->
                        <a href="showBH.action" ><i class="ion ion-ios-copy-outline"></i><span>历史订单</span></a>
                        <!-- <ul class="menu-dropdown">
                          <li><a href="login.html"><i class="ion ion-ios-circle-outline"></i> Login</a></li>
                          <li><a href="register.html"><i class="ion ion-ios-circle-outline"></i> Register</a></li>
                          <li><a href="forgot.html"><i class="ion ion-ios-circle-outline"></i> Forgot Password</a></li>
                          <li><a href="reset.html"><i class="ion ion-ios-circle-outline"></i> Reset Password</a></li>
                          <li><a href="404.html"><i class="ion ion-ios-circle-outline"></i> 404</a></li>
                        </ul> -->
                    </li>

                    <li class="menu-header">More</li>
                    <!-- <li>
                      <a href="#" class="has-dropdown"><i class="ion ion-ios-nutrition"></i> Click Me</a>
                      <ul class="menu-dropdown">
                        <li><a href="#"><i class="ion ion-ios-circle-outline"></i> Menu 1</a></li>
                        <li><a href="#" class="has-dropdown"><i class="ion ion-ios-circle-outline"></i> Menu 2</a>
                          <ul class="menu-dropdown">
                            <li><a href="#"><i class="ion ion-ios-circle-outline"></i> Child Menu 1</a></li>
                            <li><a href="#"><i class="ion ion-ios-circle-outline"></i> Child Menu 2</a></li>
                            <li><a href="#" class="has-dropdown"><i class="ion ion-ios-circle-outline"></i> Child Menu 3</a>
                              <ul class="menu-dropdown">
                                <li><a href="#"><i class="ion ion-ios-circle-outline"></i> Child Menu 1</a></li>
                                <li><a href="#"><i class="ion ion-ios-circle-outline"></i> Child Menu 2</a></li>
                                <li><a href="#"><i class="ion ion-ios-circle-outline"></i> Child Menu 3</a></li>
                              </ul>
                            </li>
                            <li><a href="#"><i class="ion ion-ios-circle-outline"></i> Child Menu 4</a></li>
                          </ul>
                        </li>
                      </ul>
                    </li> -->
                    <!-- <li>
                      <a href="#"><i class="ion ion-heart"></i> Badges <div class="badge badge-primary">10</div></a>
                    </li> -->
                    <!-- <li>
                      <a href="credits.html"><i class="ion ion-ios-information-outline"></i> Credits</a>
                    </li> -->          </ul>
                <div class="p-3 mt-4 mb-4">
                    <a href="#" class="btn btn-danger btn-shadow btn-round has-icon has-icon-nofloat btn-block">
                        <i class="ion ion-help-buoy"></i> <div>Go PRO!</div>
                    </a>
                </div>
            </aside>
        </div>
        <div class="main-content">
            <section class="section">
                <h1 class="section-header">
                    <div>Dashboard</div>
                </h1>
                <div class="section-body">
                    <div class="row">
                        <div class="col-12 col-md-6 col-lg-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4>Simple Table</h4>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-bordered">
                                            <tr>
                                                <th>#</th>
                                                <th>酒店名字</th>
                                                <th>酒店电话</th>
                                                <th>酒店城市</th>
                                                <th>酒店地点</th>
                                                <th>查看</th>
                                                <th>添加房间</th>
                                            </tr>
                                            <c:forEach var="x" items="${sessionScope.MyHotel }">
                                            <tr>
                                                <td>${x.getHotelId() }</td>
                                                <td>${x.getHotelname() }</td>
                                                <td>${x.getPhone() }</td>
                                                <td><div class="badge badge-success">${x.getArea() }</div></td>
                                                <td>${x.getPlace() }</td>
                                                <td><a href="hotelDetail.action?hid=${x.getHotelId() }"><input type="button" value="查看"></a></td>
                                                <td><a href="RoomHid.action?rhid=${x.getHotelId() }"><input type="button" value="添加房间"></a></td>
                                            </tr>
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




        <footer class="main-footer">
            <div class="footer-left">
                Copyright &copy; 2020 <div class="bullet"></div>潘伟航<a href="http://www.cssmoban.com/" target="_blank" title="模板之家">@javaee课程设计</a> designed by <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">pwh</a>
            </div>
            <div class="footer-right"></div>
        </footer>
    </div>
</div>

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



<%--<table>--%>
<%--<c:forEach var="x" items="${sessionScope.MyHotel }">--%>
<%--<tr><td>${x.getHotelname() }</td><td>${x.getPhone() }</td>--%>
<%--<td><a href="hotelDetail.action?hid=${x.getHotelId() }"><input type="button" value="查看"></a></td>--%>
<%--<td><a href="RoomHid.action?rhid=${x.getHotelId() }"><input type="button" value="添加房间"></a></td>--%>
<%--</tr>--%>
<%--</c:forEach>--%>
<%--</table>--%>



</body>
</html>