<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>boardList</title>

</head>
<body>
<%
	List<Notice> notList = (ArrayList<Notice>) request.getAttribute("notiList");
%>
	<h2>공지사항</h2>
	<table>
		<thead>
			<tr>
				<th>번호</th><th>제목</th><th>작성일</th>
			</tr>
		</thead>
		<tbody>
		<%
		for(int i=0; i<notList.size(); i++){
			Notice vo = notList.get(i);
		%>
			<tr>
				<th><%=vo.getNotiNo()%></th>
				<th><a href="BoardDetailCtrl?notiNO<%=vo.getNotiNo()%>"><%=vo.getTitle()%></a></th>
				<th><%=vo.getResDate()%></th>
			</tr>
		<%
		}
		%>
		</tbody>
	</table>

</body>
</html>