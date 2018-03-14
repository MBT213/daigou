<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加商品页面</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/logreg.css">
 <link rel="shortcut icon" href="<%=basePath%>images/1128.png">
	
  </head>  
  
  <body>
   	
  
   	
  		<div class="container">
        	<h1>添加商品页面</h1>
        </div>  	
  	
   <div class="form-box">
    	<div class="form-top">
        	<div class="form-top-left">
            	<h3>请输入商品名称和价格：</h3>
            
            </div>
            <div class="form-top-right">
                <i class="fa fa-lock"></i>
            </div>
        </div>
        
        <div class="form-bottom">
		  <form action="goods/goods_addGoods" method="post">
		    
		      <div class="form-group">
		      <input type="text" name="goods.goodsname" label="名称" class="btn" placeholder="商品名称"  >
		      </div>
		      
		      <div class="form-group">
		      <input type="text" name="goods.price" class="btn" label="价格" placeholder="商品价格"  >
		      </div>
		      
		      <button type="submit" class="btn">提交</button>
		    </form>
	    </div>
   	</div>
         
  </body>
</html>
    
  </body>
</html>
