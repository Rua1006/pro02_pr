<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
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
<h2 class="page_title">회원가입</h2>
<div class="form_fr">
	<form action="<%=request.getContextPath()%>/InsertCustomCtrl" method="post" name="frm1" id="frm1" onsubmit="return joinAlert(this)">
		<table class="table">
			<tbody>
				<tr>
				<th><label for="cusId">아이디</label></th>
				<td>
					<input type="text" id="cusId" name="cudId" class="form-control" placeholder="아이디입력" autofocus required>
					<button type="button" class="btn btn-outline-warning" onclick="idCheck()">아이디 중복 확인</button>
					<input type="hidden" name="idck" value="no">
				</td>
				</tr>
				<tr>
				<th><label for="cusPw">비밀번호</label></th>
				<td>
					<input type="password" id="cusPw" name="cusPw" class="form-control" placeholder="비밀번호입력" required>
				</td>
				</tr>
				<tr>
				<th><label for="cusPw2">비밀번호 확인</label></th>
				<td>
					<input type="password" id="cusPw2" name="cusPw2" class="form-control" placeholder="비밀번호확인" required>
				</td>
				</tr>
				<tr>
				<th><label for="cusName">이름</label></th>
				<td>
					<input type="text" id="cusName" name="cusName" class="form-control" placeholder="이름입력" required>
				</td>
				</tr>
				<tr>
				<th><label for="address">주소</label></th>
				<td>
					<input type="text" id="address1" name="address1" class="form-control" placeholder="주소입력">
				</td>
				</tr>
				<tr>
				<th><label for="address">상세주소</label></th>
				<td>
					<input type="text" id="address2" name="address2" class="form-control" placeholder="상세주소입력">
				</td>
				</tr>
				<tr>
				<th><label for="tel">전화번호</label></th>
				<td>
					<input type="text" id="tel" name="tel" class="form-control" placeholder="000-0000-0000" required>
				</td>
				</tr>
			</tbody>		
		</table>	
	</form>
</div>
<div class="btn-group">
	<input type="submit" value="가입" class="btn btn-outline-warning">
<button type="button" id="in_btn1" name="in_btn1" class="btn btn-outline-warning">취소</button>
</div>
</div>
<script>
function joinAlert(f){
	if(f.cusPw.value!=f.cusPw2.value){
		alert("비밀번호가 일치하지 않습니다.");
		return false;
	}
	if(f.idck.value!="yes"){
		alert("아이디 중복확인을 하지 않았습니다.");
		return false;
	}
}
function idCheck(){
	var win = window.open("idCheck.jsp", "idCheckWin", "width=600, height=400" );
}

</script>
</body>
</html>