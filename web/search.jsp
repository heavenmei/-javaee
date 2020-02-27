<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>欢迎！</title>
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
<div class="header">
    <div class="container">
        <div class="header-info">
            <div class="header-info-head text-center">
                <a href="index.html"><h1>Travelica</h1></a>
                <h2>Plan your Perfect trip with us</h2>
            </div>
            <div class="top-search">
                <form action="search.action" method="post">
<%--                <table>--%>
                    <input type="text"name="area">

<%--                    <tr><td><a href="show.action">我的订单</a></td></tr>--%>
<%--                    <tr><td><a href="hist.action">历史记录</a></td></tr>--%>
<%--                </table>--%>
            </div>


                <div class="dropdown-button">
<%--                    <select class="dropdown" tabindex="9" data-settings='{"wrapperClass":"flat"}' type="submit" value="查询">--%>
<%--                    </select>--%>
                  <input value="搜索酒店" type="submit" style="padding: 15px 0px 11px 12px;background-color: #d66f11;color: #e1edf7;width: 150px">
<%--                  <input class="selected"  tabindex="9" data-settings='{"wrapperClass":"flat"}' type="submit" value="查询">--%>
                </div>
            </form>

            <div class="clearfix"></div>
            <!-- start h_menu4 -->
            <div class="h_menu4">
                <a class="toggleMenu" href="">Menu</a>
                <ul class="nav">
                    <li class="active"><a href="#">主页</a></li>
                    <li><a href="show.action">未完成订单</a>
                    </li>
                    <li><a href="hist.action">我的历史订单</a>
                    </li>
                    <li><a href="login.jsp" class="root">登录</a>
                    </li>
                    <li><a href="register.jsp">注册</a></li>
                </ul>
                <script type="text/javascript" src="js/nav.js"></script>
            </div>
            <!-- end h_menu4 -->
            <i class="flow"></i>
        </div>
    </div>
</div>
<!-- header-ends -->
<!-- content-section-starts -->
<div class="content-section">
    <div class="services-section">
        <div class="services-section-left">
            <h3>Hot Iclands</h3>
            <h5>From $990</h5>
            <h3>Duis autem, Mirum Nulla ipsum</h3>
        </div>
        <div class="services-section-right">
            <div class="services-section-image">
                <img src="images/serviceimg.jpg" alt="" />
            </div>
            <div class="services-section-right-text">
                <p><img src="images/quotes.png" alt="" />Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                <p class="end-q">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.<img src="images/quot.png" alt="" /></p>
                <a href="#">John Smith</a>
                <span>Traveller</span>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="call-us text-center">
        <h3><i class="phone"></i>Call Us : +1 500 2587 6589 , +1 600 2547 5873</h3>
    </div>
    <div class="planning-section">
        <div class="container">
            <div class="col-md-8 planning-section-left">
                <h3>Travel Planning Tips</h3>
                <h4>& Advice for Everyone</h4>
                <div class="sap_tabs">
                    <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
                        <ul class="resp-tabs-list">
                            <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>Restaurants</span></li>
                            <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Hotels</span></li>
                            <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>Destinations</span></li>
                            <div class="clearfix"></div>
                        </ul>
                        <div class="resp-tabs-container">
                            <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
                                <ul class="tab_img">
                                    <li>
                                        <div class="view view-first">
                                            <img src="images/pic1.jpg" class="img-responsive" alt=""/>
                                            <div class="info1"> </div>
                                            <div class="mask">
                                            </div>
                                            <div class="tab_desc">
                                                <h5>Thailand</h5>
                                                <span>From $990</span>
                                                <a href="#">Book Now</a>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="view view-first">
                                            <img src="images/pic6.jpg" class="img-responsive" alt=""/>
                                            <div class="mask">
                                                <div class="info1"> </div>
                                            </div>
                                            <div class="tab_desc">
                                                <h5>Thailand</h5>
                                                <span>From $990</span>
                                                <a href="#">Book Now</a>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="last">
                                        <div class="view view-first">
                                            <img src="images/pic3.jpg" class="img-responsive" alt=""/>
                                            <div class="mask">
                                                <div class="info1"> </div>
                                            </div>
                                            <div class="tab_desc">
                                                <h5>Thailand</h5>
                                                <span>From $990</span>
                                                <a href="#">Book Now</a>
                                            </div>
                                        </div>
                                    </li>
                                    <div class="clearfix"></div>
                                </ul>
                            </div>
                            <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
                                <ul class="tab_img">
                                    <li>
                                        <div class="view view-first">
                                            <img src="images/pic8.jpg" class="img-responsive" alt=""/>
                                            <div class="mask">
                                                <div class="info1"> </div>
                                            </div>
                                            <div class="tab_desc">
                                                <h5>Thailand</h5>
                                                <span>From $990</span>
                                                <a href="#">Book Now</a>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="view view-first">
                                            <img src="images/pic7.jpg" class="img-responsive" alt=""/>
                                            <div class="mask">
                                                <div class="info1"> </div>
                                            </div>
                                            <div class="tab_desc">
                                                <h5>Thailand</h5>
                                                <span>From $990</span>
                                                <a href="#">Book Now</a>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="last">
                                        <div class="view view-first">
                                            <img src="images/pic9.jpg" class="img-responsive" alt=""/>
                                            <div class="mask">
                                                <div class="info1"> </div>
                                            </div>
                                            <div class="tab_desc">
                                                <h5>Thailand</h5>
                                                <span>From $990</span>
                                                <a href="#">Book Now</a>
                                            </div>
                                        </div>
                                    </li>
                                    <div class="clearfix"></div>
                                </ul>
                            </div>
                            <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
                                <ul class="tab_img">
                                    <li>
                                        <div class="view view-first">
                                            <img src="images/pic10.jpg" class="img-responsive" alt=""/>
                                            <div class="mask">
                                                <div class="info1"> </div>
                                            </div>
                                            <div class="tab_desc">
                                                <h5>Thailand</h5>
                                                <span>From $990</span>
                                                <a href="#">Book Now</a>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="view view-first">
                                            <img src="images/pic2.jpg" class="img-responsive" alt=""/>
                                            <div class="mask">
                                                <div class="info1"> </div>
                                            </div>
                                            <div class="tab_desc">
                                                <h5>Thailand</h5>
                                                <span>From $990</span>
                                                <a href="#">Book Now</a>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="last">
                                        <div class="view view-first">
                                            <img src="images/pic12.jpg" class="img-responsive" alt=""/>
                                            <div class="mask">
                                                <div class="info1"> </div>
                                            </div>
                                            <div class="tab_desc">
                                                <h5>Thailand</h5>
                                                <span>From $990</span>
                                                <a href="#">Book Now</a>
                                            </div>
                                        </div>
                                    </li>
                                    <div class="clearfix"></div>
                                </ul>
                            </div>
                            <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-3">
                                <ul class="tab_img">
                                    <li>
                                        <div class="view view-first">
                                            <img src="images/pic10.jpg" class="img-responsive" alt=""/>
                                            <div class="mask">
                                                <div class="info1"> </div>
                                            </div>
                                            <div class="tab_desc">
                                                <h5>Thailand</h5>
                                                <span>From $990</span>
                                                <a href="#">Book Now</a>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="view view-first">
                                            <img src="images/pic2.jpg" class="img-responsive" alt=""/>
                                            <div class="mask">
                                                <div class="info1"> </div>
                                            </div>
                                            <div class="tab_desc">
                                                <h5>Thailand</h5>
                                                <span>From $990</span>
                                                <a href="#">Book Now</a>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="view view-first">
                                            <img src="images/pic9.jpg" class="img-responsive" alt=""/>
                                            <div class="mask">
                                                <div class="info1"> </div>
                                            </div>
                                            <div class="tab_desc">
                                                <h5>Thailand</h5>
                                                <span>From $990</span>
                                                <a href="#">Book Now</a>
                                            </div>
                                        </div>
                                    </li>
                                    <div class="clearfix"></div>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>
            <div class="col-md-4 planning-section-right">
                <div class="planning-section-right-grid">
                    <div class="yup-text">
                        <h3>lorem Ipsum Restaurants</h3>
                    </div>
                    <div class="image">
                        <img src="images/yup.jpg" alt="" />
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="planning-section-right-grid2">
                    <div class="couple-text">
                        <h3>lorem Ipsum Honey moons</h3>
                    </div>
                    <div class="couple-image">
                        <img src="images/couple.png" alt="" />
                    </div>
                    <div class="clearfix"></div>
                </div>
                <h4>Newsletter :</h4>
                <div class="news-search-box">

                    <form>
                        <input type="text" class="text" value="" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '';}">
                        <input type="submit" value>
                    </form>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="mail text-center">
        <h3><i class="msg"></i>Email : mail@demolink.org</h3>
    </div>

    <div class="mail text-center">
        <h3><i class="location"></i>7854 Mirum place, Lorem 54.</h3>
    </div>
    <div class="contact-section">
        <div class="container">
            <input type="text" class="text" value="Name" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Name';}">
            <input type="text" class="text" value="Phone" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Phone';}">
            <input type="text" class="text" value="Email" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Email';}">
            <textarea value="Message" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Message';}">Message</textarea>
            <input type="submit" value="Send">
        </div>
    </div>
</div>
<!-- content-section-ends -->
<!-- footer-section-starts -->
<div class="footer">
    <div class="copy-rights text-center">
        <p>Copyright &copy; 2015.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
    </div>
</div>
<!-- footer-section-ends -->

<style>
input.btn1{
    color: #d66f11;
    /*padding: 11 0 11 12;*/
}
</style>
</body>
</html>