<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 등록</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%@ include file = "../header.jsp" %>
<% Notice vo = (Notice) request.getAttribute("notice"); %>
<div class="content container">
<h2 class="title">공지사항 작성</h2>
<form name="form1" id="form1" action="<%=request.getContextPath()%>/InsertBoardCtrl" method="post">
	<table class="table">
		<tbody>
			<tr>
				<th>제목</th>
				<td><input type="text" name="title" id="title" placeholder="제목입력" class="form-control" autofocus required></td>
			</tr>
			<tr>
				<th>내용입력</th>
				<td><textarea rows="100" cols="8" name="content" id="content" class="form-control" required></textarea></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="author" id="author" value="admin" class="form-control" readonly></td>
			</tr>
		</tbody>
	</table>
	<div class="btn-group">
		<input type="submit" name="submit_button" class="btn btn-outline-warning" value="작성">
		<input type="reset" name="reset_button" class="btn btn-outline-warning" value="취소">
		<a href="<%=request.getContextPath()%>/GetBoardListCtrl" class="btn btn-outline-warning">글목록</a>
	</div>
</form>
</div>
</body>
<%@ include file="../footer.jsp" %>
</html>