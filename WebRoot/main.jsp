<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>所有Goods</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
	 <link rel="stylesheet" href="<%=basePath%>css/style.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	 <script  type="text/javascript" src="js/jquery.min.js"></script>
	  <script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="shortcut icon" href="<%=basePath%>images/1128.png">

  </head>
<body>
  <div class="top-header">
		<div class="container">
			<div class="top-header-main">
				<div class="col-md-6 top-header-left">
				    <div class="box">
		                   <c:choose>
		                     <c:when test="${user.name ==null}">
		                    <p> <a href="reg.jsp">注册</a>
		                      <a href="login.jsp">登录</a> </p>
		                       </c:when>
		                      <c:otherwise>
		               <div class="yonghuming"><c:out value="${user.name}"></c:out>, 欢迎您!</div>
		                    </c:otherwise>
		                </c:choose>
                   </div>
               </div>
			   <div class="col-md-6 top-header-left">
					<div class="cart box_1">
						<a href="main.jsp">
					 		 <div class="total">
								<span class="simpleCart_total"></span></div>
								<img src="images/cart-1.png" alt=""></a>
						<p><a href="order_main.jsp" class="simpleCart_empty">Empty Cart</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>



	
<div class="logo">
		<a href="main.jsp"><h1>BUY All YOU WANT</h1></a>
	</div>
<ul class="nav nav-pills">
<li class="active"><a href="main.jsp">首页</a></li>
<li><a href="main-1.jsp">大牌彩妆</a></li>
<li><a href="main-1.jsp">高定限量</a></li>
<li><a href="main-1.jsp">欧美流行</a></li>
<li><a href="main-2.jsp">钟表王国</a></li>
<li><a href="main-1.jsp">关于我们</a></li>
<form class="navbar-form navbar-right" action="goods/goods_queryGoods" method="post">
          <input type="text" class="form-control" placeholder="Search" name="keyWords">
        <button type="submit" class="btn btn-default">Submit</button>
     </form>
  </ul>

 
 
  <script>  
      $('.carousel').carousel({
  interval: 1000
})</script>  
      
      <div id="myCarousel" class="carousel slide">
        <!-- 轮播（Carousel）指标 -->
        <ol class="carousel-indicators">
         <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
         <li data-target="#myCarousel" data-slide-to="1"></li>
         <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>  
        <!-- 轮播（Carousel）项目 -->
        <div class="carousel-inner">
         <div class="item active">
           <img src="images/2031.jpg" class="img-responsive" alt="First slide">
         </div>
         <div class="item">
           <img src="images/2032.jpg" class="img-responsive" alt="Second slide">
         </div>
         <div class="item">
           <img src="images/2033.jpg" class="img-responsive" alt="Third slide">
         </div>
        </div>
        <!-- 轮播（Carousel）导航 -->
        <a class="carousel-control left" href="#myCarousel"
         data-slide="prev">‹</a>
        <a class="carousel-control right" href="#myCarousel"
         data-slide="next">›</a>
      </div> 


	

<div class="about"> 
    <div class="container">
			<div class="about-top grid-1">
				<div class="col-md-4 about-left">
					<figure class="effect-bubba">
						<img class="img-responsive" src="images/3850.png" alt=""/>
						<figcaption>
							<h2>Channel</h2>
							<p>on sale</p>	
						</figcaption>			
					</figure>
				</div>
				<div class="col-md-4 about-left">
					<figure class="effect-bubba">
						<img class="img-responsive" src="images/3826.png" alt=""/>
						<figcaption>
							<h4>Givenchy</h4>
							<p>on sale</p>	
						</figcaption>			
					</figure>
				</div>
				<div class="col-md-4 about-left">
					<figure class="effect-bubba">
						<img class="img-responsive" src="images/2213.png" alt=""/>
						<figcaption>
							<h4>Tom Ford</h4>
							<p>on sale</p>	
						</figcaption>			
					</figure>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>



<div class="product"> 
		<div class="container">
			<div class="product-top">
				<div class="product-one">
					<div class="col-md-3 product-left">
						<div class="product-main simpleCart_shelfItem">
							<a href="makeup.jsp" class="mask"><img class="img-responsive zoom-img" src="images/1314.jpg" alt="" /></a>
							<div class="product-bottom">
								<h3>Smart Watches</h3>
								<p>Explore Now</p>
								<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ 329</span></h4>
							</div>
							<div class="srch">
								<span>-50%</span>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-left">
						<div class="product-main simpleCart_shelfItem">
							<a href="makeup.jsp" class="mask"><img class="img-responsive zoom-img" src="images/221.png" alt="" /></a>
							<div class="product-bottom">
								<h3>Smart Watches</h3>
								<p>Explore Now</p>
								<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ 329</span></h4>
							</div>
							<div class="srch">
								<span>-50%</span>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-left">
						<div class="product-main simpleCart_shelfItem">
							<a href="makeup.jsp" class="mask"><img class="img-responsive zoom-img" src="images/130.png"  alt="" /></a>
							<div class="product-bottom">
								<h3>Smart Watches</h3>
								<p>Explore Now</p>
								<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ 329</span></h4>
							</div>
							<div class="srch">
								<span>-50%</span>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-left">
						<div class="product-main simpleCart_shelfItem">
							<a href="makeup.jsp" class="mask"><img class="img-responsive zoom-img" src="images/358.png" alt="" /></a>
							<div class="product-bottom">
								<h3>Smart Watches</h3>
								<p>Explore Now</p>
								<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ 329</span></h4>
							</div>
							<div class="srch">
								<span>-50%</span>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="product-one">
					<div class="col-md-3 product-left">
						<div class="product-main simpleCart_shelfItem">
							<a href="makeup.jsp" class="mask"><img class="img-responsive zoom-img" src="images/258.png" alt="" /></a>
							<div class="product-bottom">
								<h3>Smart Watches</h3>
								<p>Explore Now</p>
								<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ 329</span></h4>
							</div>
							<div class="srch">
								<span>-50%</span>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-left">
						<div class="product-main simpleCart_shelfItem">
							<a href="makeup.jsp" class="mask"><img class="img-responsive zoom-img" src="images/3306.jpg" alt="" /></a>
							<div class="product-bottom">
								<h3>Smart Watches</h3>
								<p>Explore Now</p>
								<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ 329</span></h4>
							</div>
							<div class="srch">
								<span>-50%</span>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-left">
						<div class="product-main simpleCart_shelfItem">
							<a href="makeup.jsp" class="mask"><img class="img-responsive zoom-img" src="images/2222.png" alt="" /></a>
							<div class="product-bottom">
								<h3>Smart Watches</h3>
								<p>Explore Now</p>
								<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ 329</span></h4>
							</div>
							<div class="srch">
								<span>-50%</span>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-left">
						<div class="product-main simpleCart_shelfItem">
							<a href="makeup.jsp" class="mask"><img class="img-responsive zoom-img" src="images/00.png" alt="" /></a>
							<div class="product-bottom">
								<h3>Smart Watches</h3>
								<p>Explore Now</p>
								<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ 329</span></h4>
							</div>
							<div class="srch">
								<span>-50%</span>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>					
			</div>
		</div>
	</div>
	
	<!--  <s:form action="goods/goods_queryGoods" method="post">
	       <div>
	         <s:submit value="查 询" cssClass="search-go"></s:submit>
	         <input class="search" type="text" name="keyWords" placeholder="请输入关键词">
	      </div>
	
	      <table>
	        <tr>  
	          <th>序号</th>  
	          <th>名称</th>
	          <th>单价</th> 
	          <th>操作</th>  
	          <th>操作</th>
	          <th>操作</th>
	        </tr> 
	        <c:forEach var="goods" items="${goodsList}" varStatus="status">
	          <tr>
	            <td><c:out value="${status.index+1}"></c:out></td>
	            <td><a href="goods/goods_showDetail?goods.goodsid=${goods.goodsid}"><c:out value="${goods.goodsname}"></c:out></a></td>
	            <td><c:out value="${goods.price}"></c:out></td>
	            <td><a href="goods/goods_showEdit?goods.goodsid=${goods.goodsid}">编辑</a></td>
	            <td><a href="goods/goods_deleteGoods?goods.goodsid=${goods.goodsid}">删除</a></td>
	            <td><a href="order/order_addOrder?goods.goodsid=${goods.goodsid}&user.name=${user.name}">立即抢购</a></td>
	          </tr>
	        </c:forEach>
	      </table>
	    </s:form>-->
	
  </body>
</html>
