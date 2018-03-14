<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@  taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>显示order详情</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="shortcut icon" href="<%=basePath%>images/1128.png">
  </head>
  
  <body>
     <p>订单号：<s:property value="order.orderid"></s:property></p>
     <p>下单顾客：<s:property value="order.user.name"></s:property></p>
     <p>商品：<s:property value="order.goods.goodsname"></s:property></p>
     <p>单价：<s:property value="order.goods.price"></s:property></p>
     <p>数量：<s:property value="order.goodsnum"></s:property></p>
     <p>总价：<s:property value="order.total"></s:property></p>
  </body>
</html>
