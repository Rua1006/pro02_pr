<%@page import="java.util.ArrayList"%>
<%@page import="kr.co.myshop.view.GetIndexProductListCtrl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, java.text.*, kr.co.myshop.vo.*" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>메인페이지</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="common.css">
<style>
.in_container { clear:both; width:1400px; margin:0 auto; }
.in_container:after { content:""; display:block; clear:both;}
.mainpng {width : 100%;}
</style>
</head>
<body>
<%
	GetIndexProductListCtrl indexPro = new GetIndexProductListCtrl();
	ArrayList<Product> bestPro = indexPro.bestProduct();
	ArrayList<Product> newPro = indexPro.newProduct();
	ArrayList<Product> hotPro = indexPro.hotProduct();

%>
<%@ include file="header.jsp" %>
	<div class="mainbanner">
        <img src="./img/brand/main.png" class="mainpng" alt="mainbanner">
    </div>
<div class="container" id="content">
	
	<br><hr><br>
	<h3>BEST</h3>
	<ul class="row" id="best">
		<% for(int i=0; i<bestPro.size(); i++) { 
			Product vo = bestPro.get(i);
		%>
		<li class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
		<div class="card" style="width: 18rem;">
		  <img src="upload/<%=vo.getProPic() %>" class="card-img-top" alt="<%=vo.getProName()%>">
		  <div class="card-body">
		    <h5 class="card-title"><%=vo.getProName()%></h5>
		    <p class="card-text"><%=vo.getProSpec()%></p>
		    <a href="<%=request.getContextPath()%>/GetProductDetailCtrl?proNo=<%=vo.getProNo()%>" class="btn btn-outline-warning">Detail</a>
		  </div>
		</div>
		</li>
		<%} %>
	</ul>
	<br><hr><br>
	<h3>NEW</h3>
	<ul class="row" id="new">
		<% for(int i=0; i<newPro.size(); i++) { 
			Product vo = newPro.get(i);
		%>
		<li class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
		<div class="card" style="width: 18rem;">
		  <img src="upload/<%=vo.getProPic() %>" class="card-img-top" alt="<%=vo.getProName()%>">
		  <div class="card-body">
		    <h5 class="card-title"><%=vo.getProName()%></h5>
		    <p class="card-text"><%=vo.getProSpec()%></p>
		    <a href="<%=request.getContextPath()%>/GetProductDetailCtrl?proNo=<%=vo.getProNo()%>" class="btn btn-outline-warning">Detail</a>
		  </div>
		</div>
		</li>
		<%} %>
	</ul>
	<br><hr><br>
	<h3>HOT</h3>
	<ul class="row" id="hot">
		<% for(int i=0; i<hotPro.size(); i++) { 
			Product vo = hotPro.get(i);
		%>
		<li class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
		<div class="card" style="width: 18rem;">
		  <img src="upload/<%=vo.getProPic() %>" class="card-img-top" alt="<%=vo.getProName()%>">
		  <div class="card-body">
		    <h5 class="card-title"><%=vo.getProName()%></h5>
		    <p class="card-text"><%=vo.getProSpec()%></p>
		    <a href="<%=request.getContextPath()%>/GetProductDetailCtrl?proNo=<%=vo.getProNo()%>" class="btn btn-outline-warning">Detail</a>
		  </div>
		</div>
		</li>
		<%} %>
	</ul>	
</div>
</body>
<%@ include file="footer.jsp" %>
</html>