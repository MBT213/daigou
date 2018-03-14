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
    
    <title>时尚美妆</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/goods.css">
	 <link rel="stylesheet" href="<%=basePath%>css/style.css">
	 <link rel="shortcut icon" href="<%=basePath%>images/1128.png">
    </head>
 <ul>
      <img src="images/logo.jpg"  width="80" height="80">  <!-- LOGO -->
      <li class="banner">Goods Show</li>
      <br>
      <nav>
   <ul>
      <li><a href="main.jsp"> 首页</a></li>
      <li><a href="clock.jsp">钟表</a></li>
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
       <img src="images/h1.jpg"  style="float:left; margin-left:30px;"></div>
       <p>SHISEIDO 资生堂 UNO 男士洗面奶 黑炭控油型 130克</p>
      <h1>￥45.00</h1>
         <br>
    <h3>含吸附力强的天然黑炭，“珍珠层洁净配方”充分吸收毛孔里的油脂和污垢。强效控油，彻底清洁皮肤、清除油光，洗后清爽不黏腻。加水揉搓可产生微细绵密泡沫，
    给脸部带来柔软感受的同时清洁毛孔，触感清凉，洁面后清爽不紧绷。不含磨砂，避免因揉搓磨砂颗粒而给肌肤带来的损伤，同时有效清洁面部肌肤，温和不刺激。
    活性炭增量160%，不添加香料，长效保持肌肤清洁。</h3><br>
    <button class="button" onClick="location.href='order_message.jsp';">提交订单</button>
    <br><hr>
    <div>
       <img src="images/h2.jpg"  style="float:left; margin-left:30px "></div>
       <p>It'S SKIN 伊思 晶钻美肌蜗牛修复洗面奶 150毫升</p>
      <h1>￥49.90</h1>
         <br>
    <h3>泡沫细腻不拔干。大名鼎鼎的蜗牛霜同系列洁面，内含1500mg蜗牛原液和EGF成分，细致肌肤，毛孔缩小看的见。挤一点点随便搓搓就有丰富的泡沫，超级省，
    泡泡多到可以敷泡泡面膜。温和不刺激，干敏肌肤也可以使用。“蜗牛萃取液”，天然皮肤再生成分，解决各种皮肤问题。“E.G.F”，表皮生产因子恢复肌肤活力，
    “蘑菇精华成分”，保湿滋养给面部提供充足水分。</h3><br>
       <button class="button" onClick="location.href='order_message.jsp';">提交订单</button>
    <br><hr>
    <div>
       <img src="images/h4.jpg"  style="float:left; margin-left:30px"></div>
       <p>A.H.C 第二代B5玻尿酸补水保湿控油爽肤水乳组合120毫升+120毫升</p>
      <h1>￥149.00</h1>
         <br>

    <h3>#重现润亮肌肤# A.H.C 第二代B5玻尿酸补水保湿控油爽肤水乳组合， 浓郁的玻尿酸精华，控油清爽补水保湿。新款二代乳液、爽肤水，配方全面升级改良，
    轻盈质地非常适合春夏季。含有高浓度的玻尿酸，比起胶原蛋白分子只能携带30倍的水分要强大得多。    更加细腻的水分子，可以瞬间携带1000倍营养进入肌肤底层，
    即刻舒缓干燥皮肤，让肌肤注满水分，倍感柔嫩清新。</h3><br>
   <button class="button" onClick="location.href='order_message.jsp';">提交订单</button>
    <br><hr>

  </body>
</html>
