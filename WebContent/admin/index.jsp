<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*, java.sql.*, kr.co.myshop.vo.*" %>
<!DOCTYPE>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>관리자페이지</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="common.css">
</head>
<body>
<%@ include file="../header.jsp" %>
<div class="container-fluid" id="content">
	<div class="row" id="content_row">
		<%@ include file="admin_sidebar.jsp" %>
		<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
				
		</main>
	</div>
</div>
</body>
<%@ include file="../footer.jsp" %>
</html>