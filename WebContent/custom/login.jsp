<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
.content {padding: 24px; width: 1000px; margin:50px auto;}
.page_title { padding-top: 1em; font-weight:bolder; font-size: 50px;  text-align: center; margin-top: 30px;}
.form_fr {padding: 24px; width: 700px; margin:50px auto;}
.title { padding-top:36px; padding-bottom:20px;}
.btn-group { margin:10px auto; padding: 24px; display:block; float:right; }
</style>
</head>
<body>
<%@ include file="../header.jsp" %>
<div class="content">
<h2 class="page_title">로그인</h2>
<table class="table">
	<tbody>
		<tr>
		<th><label for="cusId">아이디</label></th>
		<td>
			<input type="text" id="cusId" name="cudId" class="form-control" placeholder="아이디입력" autofocus required>
		</td>
		</tr>
		<tr>
		<th><label for="cusPw">비밀번호</label></th>
		<td>
			<input type="password" id="cusPw" name="cusPw" class="form-control" placeholder="비밀번호입력" required>
		</td>
		</tr>
	</tbody>
</table>
<div class="btn-group">
<button type="button" id="in_btn1" name="in_btn1" class="btn btn-outline-warning">로그인</button>
<button type="button" id="in_btn1" name="in_btn1" class="btn btn-outline-warning">취소</button>
</div>
</div>
</body>
</html>