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
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
	 <link rel="stylesheet" href="<%=basePath%>css/style.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	<link rel="stylesheet"  href="<%=basePath%>css/bootstrap.css">
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
<form action="order/order_queryOrders" class="navbar-form navbar-right"  method="post">
          <input type="text" class="form-control" placeholder="Search" name="goods.goodsname">
        <button type="submit" class="btn btn-default">查询订单</button>
     </form>
  </ul>

    <main>        
	  <div class="bs-example" data-example-id="simple-table">
    <table class="table">
      <caption>购物车</caption>
      <thead>
        <tr> 
              <th>订单号</th> 
	          <th>商品</th>
	          <th>单价</th> 
	          <th>数量</th>  
	          <th>总价</th>      
	            </tr>
      </thead>
      <tbody>
        <s:iterator value="orderList" status="status">
	          <tr>
	            <td><s:property value="#status.index+1"></s:property></td>
	          
	            <td><s:property value="goods.goodsname"></s:property></td>
	            <td><s:property value="goods.price"></s:property></td>
	            <td><s:property value="goodsnum"></s:property></td>
	            <td><s:property value="total"></s:property></td>
	          </tr>
	         </s:iterator>
      </tbody>
    </table>
  </div>
  
	</main>
  </body>
</html>