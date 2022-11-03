<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 확인</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="common.css">
</head>
<body>
<div class="fr">
	<h2>아이디 중복 확인</h2>
	<form action="<%=request.getContextPath()%>/IdCheckCtrl" method="post" class="form-control" onsubmit="return invalidCheck(this)">
		<input type="text" name="id" id="id" placeholder="8~12문자 및 숫자 입력" required autofocus>
		<input type="submit" value="중복확인">
	</form>
	<script>
	function invalidCheck(f){
		var cusId = f.cusId.value;
		cusId = cusId.trim();
		if(cusId.length<8 || cusId.length>12){
			alert("아이디의 글자수는 8글자 이상 12글자 이하로 작성하여야 합니다.");
			return false;
		}
	} 
	</script>
</div>
</body>
</html>