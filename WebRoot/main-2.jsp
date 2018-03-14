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
           <img src="images/bnr-1.jpg" class="img-responsive" alt="First slide">
         </div>
         <div class="item">
           <img src="images/bnr-2.jpg" class="img-responsive" alt="Second slide">
         </div>
         <div class="item">
           <img src="images/bnr-3.jpg" class="img-responsive" alt="Third slide">
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
						<img class="img-responsive" src="images/abt-1.jpg" alt=""/>
						<figcaption>
							<h2>Nulla maximus nunc</h2>
							<p>In sit amet sapien eros Integer dolore magna aliqua</p>	
						</figcaption>			
					</figure>
				</div>
				<div class="col-md-4 about-left">
					<figure class="effect-bubba">
						<img class="img-responsive" src="images/abt-2.jpg" alt=""/>
						<figcaption>
							<h4>Mauris erat augue</h4>
							<p>In sit amet sapien eros Integer dolore magna aliqua</p>	
						</figcaption>			
					</figure>
				</div>
				<div class="col-md-4 about-left">
					<figure class="effect-bubba">
						<img class="img-responsive" src="images/abt-3.jpg" alt=""/>
						<figcaption>
							<h4>Cras elit mauris</h4>
							<p>In sit amet sapien eros Integer dolore magna aliqua</p>	
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
							<a href="goodShow.jsp" class="mask"><img class="img-responsive zoom-img" src="images/p-1.png" alt="" /></a>
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
							<a href="goodShow.jsp" class="mask"><img class="img-responsive zoom-img" src="images/p-2.png" alt="" /></a>
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
							<a href="goodShow.jsp" class="mask"><img class="img-responsive zoom-img" src="images/p-3.png"  alt="" /></a>
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
							<a href="goodShow.jsp" class="mask"><img class="img-responsive zoom-img" src="images/p-4.png" alt="" /></a>
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
							<a href="goodShow.jsp" class="mask"><img class="img-responsive zoom-img" src="images/p-5.png" alt="" /></a>
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
							<a href="goodShow.jsp" class="mask"><img class="img-responsive zoom-img" src="images/p-6.png" alt="" /></a>
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
							<a href="goodShow.jsp" class="mask"><img class="img-responsive zoom-img" src="images/p-7.png" alt="" /></a>
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
							<a href="goodShow.jsp" class="mask"><img class="img-responsive zoom-img" src="images/p-8.png" alt="" /></a>
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

	
  </body>
</html>
