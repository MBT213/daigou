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
    
    <title>所有goods</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
		 <link rel="stylesheet" href="<%=basePath%>css/style.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	<!-- <link rel="stylesheet"  href="<%=basePath%>css/bootstrap.css">-->
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
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
    
    <main>
	    <s:form action="goods/goods_queryGoods" method="post">
	<div class="bs-example" data-example-id="simple-table">
    <table class="table">
	      <caption>商品列表</caption>
      <thead>
        <tr> 
              <th>序号</th> 
	          <th>商品</th>
	          <th>单价</th> 
	          <th>数量</th>  
	          <th>操作</th>      
	            </tr>
      </thead>
      <tbody>
	        
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
	    </s:form>    
	</main>
  </body>
</html>