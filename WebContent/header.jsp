<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sid = (String) session.getAttribute("sid");
	String sname = (String) session.getAttribute("sname");
%>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	  <a class="navbar-brand" href="<%=request.getContextPath()%>/index.jsp">Dr.Dog</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	
	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item">
	        <a class="nav-link" href="#">브랜드</a>
	      </li>
	      <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
	          	제품
	        </a>
	        <div class="dropdown-menu">
	          <a class="dropdown-item" href="<%=request.getContextPath()%>/GetProductListCtrl">사료</a>
	          <a class="dropdown-item" href="#">디저트</a>
	          <div class="dropdown-divider"></div>
	          <a class="dropdown-item" href="#">건식</a>
	          <a class="dropdown-item" href="#">습식</a>
	        </div>
	      </li>
	      <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
	          	커뮤니티
	        </a>
	        <div class="dropdown-menu">
	          <a class="dropdown-item" href="#">이벤트</a>
	          <a class="dropdown-item" href="#">제휴문의</a>
	          <a class="dropdown-item" href="#">급여량계산기</a>
	        </div>
	      </li>
	      <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="true">
	          	고객지원
	        </a>
	        <div class="dropdown-menu">
	          <a class="dropdown-item" href="<%=request.getContextPath()%>/GetBoardListCtrl">공지사항</a>
	          <a class="dropdown-item" href="#">고객문의</a>
	          <a class="dropdown-item" href="#">사용후기</a>
	        </div>
	      </li>
	    </ul>
	    <ul class="nav justify-content-end">
		  <% if(sid!=null) { %>
			  <li class="nav-item">
			    <span class="nav-link text-warning"><%=sname %>님</span>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link text-warning" href="<%=request.getContextPath() %>/LogOutCtrl">로그아웃</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link text-warning" href="<%=request.getContextPath() %>/GetCustomInfoCtrl">회원정보</a>
			  </li>
			  <% if(sid.equals("admin")) { %>
			  	<li class="nav-item">
				 <a class="nav-link text-warning" href="<%=request.getContextPath() %>/admin/index.jsp">관리자 페이지로</a>
			  	 </li>
			 <% } else { %>
			  <li class="nav-item">
			    <a class="nav-link text-warning" href="<%=request.getContextPath() %>/GetMemberSalesInfoCtrl">구매내역</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link text-warning" href="<%=request.getContextPath() %>/GetMemberCartListCtrl">장바구니</a>
			  </li>
			  <% } %>
			  <% } else { %>
				  <li class="nav-item">
				    <a class="nav-link text-warning" href="<%=request.getContextPath() %>/custom/login.jsp">로그인</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link text-warning" href="<%=request.getContextPath() %>/custom/memberShip.jsp">회원가입</a>
				  </li>
			  <% } %>
				  <li>
				    <a class="nav-link text-warning" href="#">Contact Us</a>
				  </li>
		</ul>
	  </div>
	</nav>