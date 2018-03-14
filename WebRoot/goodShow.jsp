<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    
    <title>商品详情</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/show.css">
<link rel="shortcut icon" href="<%=basePath%>images/1128.png">
    <header>
 <ul>
      <img src="images/u=3432292816,3095443564&fm=27&gp=0.jpg"  width="80" height="80">  <!-- LOGO -->
      <li class="banner">Goods Show</li>
      <br>
      <nav>
   <ul>
      <li><a href="main-2.jsp"> 首页</a></li>
      <li><a href="login.jsp">登录</a></li>
      <li><a href="reg.jsp">注册</a></li>
   </ul>
  </nav>
</ul>
</header>
</head>

<body>

<hr>
    <div>
       <img src="images/201706_20_HCC_1684_02_88851.jpg"  style="float:left; margin-left:30px"></div>
       <p>雍加毕索Yonger& Bresson-Beaumesnil 系列 HCC 1684/01 石英男表</p>
      <h1>￥1,080</h1>
         <br>
    <h3>一颗跳动的法国芯，传承法国制表基地奥尔托250年的精湛工艺。自主研发MPB机芯，准时可靠、持久耐用。纯正的法国血统，100%法国原装进口。</h3><br>
    <button class="button" onClick="location.href='order_message.jsp';">提交订单</button>
    <br><hr>
    <div>
       <img src="images/201708_31_1669_07GO_13531.jpg"  style="float:left; margin-left:30px"></div>
       <p>赫柏林Michel Herbelin-City 都市系列 -法国绅士- 1669/07GO 男士机械表</p>
      <h1>￥4,350</h1>
         <br>
    <button class="button" onClick="location.href='order_message.jsp';">提交订单</button><br>
    <h3>法国总统夫人之选。商务休闲的职场精英，硬朗有型，刚毅典雅。来自法国高雅时尚艺术每一款腕表都是赫柏林表的价值观的体现，及其对浪漫、时尚的诠释。</h3>
   
    <br><hr>
    <div>
       <img src="images/201612_15_027_7202_00_09353.jpg"  style="float:left; margin-left:30px"></div>
       <p>荣汉斯JUNGHANS-大师系列 027/7202.01 机械男表</p>
      <h1>￥19,180</h1>
         <br>
    <button class="button" onClick="location.href='order_message.jsp';">提交订单</button><br>
    <h3>成功源于创新，勇气是成功的关键。荣汉斯的腕表应可界定为坚守民族特性，整体设计干净简练，处处流露出独有低调奢华的风格工艺。</h3>
   
    <br><hr>
  </body>
</html>
