<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加房间</title>
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
            <form class="form-inline mr-auto" action="selectDel" method="post">
                <ul class="navbar-nav mr-3">
                    <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg"><i class="ion ion-navicon-round"></i></a></li>
                    <li><a href="#" data-toggle="search" class="nav-link nav-link-lg d-sm-none"><i class="ion ion-search"></i></a></li>
                </ul>
                <div class="search-element">
                    <input class="form-control" type="text" placeholder="Search" aria-label="Search" name="hname">
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
                        <a href="#" class="dropdown-item has-icon">
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
                        <a href="showBH.action" ><i class="ion ion-ios-copy-outline"></i><span>历史订单</span></a>
                    </li>


                    <li class="menu-header">More</li>
                </ul>
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
                        <div class="col-lg-5 col-md-12 col-12 col-sm-12">
                            <form action="addRoom" method="post" class="needs-validation" novalidate>
                                <div class="card">
                                    <div class="card-header">
                                        <h4>Quick Draft</h4>
                                    </div>
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label><h5>房间类型：</h5></label>
                                            <input type="text" name="r.roomstyle" class="form-control" required>
                                            <div class="invalid-feedback">
                                                Please fill in the title
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label><h5>早餐：</h5></label>
                                            <input type="text" name="r.breakfast" class="form-control" required>
                                            <div class="invalid-feedback">
                                                Please fill in the title
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label><h5>价格：</h5></label>
                                            <input type="number" name="r.unit" class="form-control" required>
                                            <div class="invalid-feedback">
                                                Please fill in the title
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label><h5>数量：</h5></label>
                                            <input type="text" name="r.amount" class="form-control" required>
                                            <div class="invalid-feedback">
                                                Please fill in the title
                                            </div>
                                        </div>
                                        <div class="form-group">
<%--                                            <label><h5>数量：</h5></label>--%>
                                            <input type="hidden" name="r.discount" value="无">
                                            <div class="invalid-feedback">
                                                Please fill in the title
                                            </div>
                                        </div>
                                        <%--                                        <div class="form-group">--%>
                                        <%--                                            <label>Content</label>--%>
                                        <%--                                            <textarea class="summernote-simple"></textarea>--%>
                                        <%--                                        </div>--%>
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
        <footer class="main-footer">
            <div class="footer-left">
                Copyright &copy; 2018 <div class="bullet"></div> More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
            </div>
            <div class="footer-right"></div>
        </footer>
    </div>
</div>





<%--<form action="addRoom" method="post">--%>
<%--<table>--%>
<%--<tr><td>房间类型：</td><td><input type="text" name="r.roomstyle"></td></tr>--%>
<%--<tr><td>早餐：</td><td><input type="text" name="r.breakfast"></td></tr>--%>
<%--<tr><td>价格：</td><td><input type="number" name="r.unit"></td></tr>--%>
<%--<tr><td>数量：</td><td><input type="text" name="r.amount"><input type="hidden" name="r.discount" value="无"></td></tr>--%>
<%--<tr><td><input type="submit" value="提交"></td></tr>--%>
<%--</table>--%>
<%--</form>--%>

</body>
</html>