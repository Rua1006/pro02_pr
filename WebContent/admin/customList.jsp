<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*" %>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="common.css">
<style>

</style>
</head>
<body>
<%@ include file="../header.jsp" %>
<%@ include file="../admin/admin_sidebar.jsp" %>
<% List<Custom> cusList = (ArrayList<Custom>) request.getAttribute("cusList"); %>
<div class="content container" id="content">
<main class="content container">
	<h2 class="title">회원목록</h2>
	<table class="table">
		<thead class="thead-dark">
			<tr>
				<th scope="col">번호</th>
		      	<th scope="col">아이디</th>
		      	<th scope="col">이름</th>
				<th scope="col">가입일</th>
				<th scope="col">회원등급</th>
			</tr>
		</thead>
		<tbody>
		<% for(int i=0;i<cusList.size();i++){
			Custom vo = cusList.get(i);
		%>
		<tr>
			<td><%=cusList.size()-i %></td>
			<td><a href="<%=request.getContextPath() %>/GetCustomDetailCtrl?cusId=<%=vo.getCusId() %>"><%=vo.getCusId() %></a></td>
			<td><%=vo.getCusName() %></td>
			<td><%=vo.getRegDate() %></td>
			<td>
			<%
			if(vo.getLevel()==0){
				out.println("<span>준회원</span>");
			}else if(vo.getLevel()==1){
				out.println("<span>정회원</span>");
			}else if(vo.getLevel()==2){
				out.println("<span>우수회원</span>");
			}else if(vo.getLevel()==3){
				out.println("<span>VIP회원</span>");
			}else{
				out.println("<span>관리자</span>");
			}
			%>
			</td>
		</tr>
		<%}%>
		</tbody>
	</table>
	</main>
</div>
</body>
<%@ include file="../footer.jsp" %>
</html>