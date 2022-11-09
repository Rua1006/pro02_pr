<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>로그인</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="../common.css">
<style>
.page_title { padding-top: 1em; font-weight:bolder; font-size: 50px;  text-align: center; margin-top: 30px;}
.form_fr {padding: 24px; width: 700px; margin:50px auto;}
.title { padding-top:36px; padding-bottom:20px;}
.btn-group { margin:10px auto; padding: 24px; display:block; float:right; }
</style>
</head>
<body>
<%@ include file="../header.jsp" %>
<div class="content container" id="content">
<h2 class="page_title">로그인</h2>
<form name="frm1" id="frm1" action="<%=request.getContextPath() %>/LoginCtrl" method="post">
	<table class="table">
		<tbody>
			<tr>
			<th>아이디</th>
			<td>
				<input type="text" id="cusId" name="cusId" class="form-control" placeholder="아이디입력" autofocus required>
			</td>
			</tr>
			<tr>
			<th>비밀번호</th>
			<td>
				<input type="password" id="cusPw" name="cusPw" class="form-control" placeholder="비밀번호입력" required>
			</td>
			</tr>
		</tbody>
	</table>
	<div class="btn-group">
		<input type="submit" name="submit-btn" class="btn btn-outline-warning" value="로그인">
		<input type="reset" name="reset-btn" class="btn btn-outline-warning" value="취소">
		<a href="<%=request.getContextPath() %>/custom/memberShip.jsp" class="btn btn-outline-warning">회원가입</a>
	</div>
</form>
</div>
</body>
<%@ include file="../footer.jsp" %>
</html>