<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加订单</title>
</head>
<body>
<form action="addOrder.action" method="post">
<table>
<tr><td>房间类型:</td><td><input type="text" name="po.roomstyle"></td></tr>
<tr><td>房间数量:</td><td><input type="text" name="po.ordernumber"></td></tr>
<tr><td>入住时间:</td><td><input type="text" name="po.checkinTime"></td></tr>
<tr><td>退房时间:</td><td><input type="text" name="po.checkoutTime"></td></tr>
<tr><td><input type="submit" value="提交"></td><td><a href="search.jsp">back</a></td></tr>
</table>
</form>
</body>
</html>