<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<nav class="navbar navbar-expand-lg navbar-light bg-warning">
	  <a class="navbar-brand" href="index.jsp">Dr.dog</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	
	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item active">
	        <a class="nav-link" href="#">Dr.dog<span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">Service</a>
	      </li>
	      <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
	          	제품
	        </a>
	        <div class="dropdown-menu">
	          <a class="dropdown-item" href="#">사료</a>
	          <a class="dropdown-item" href="#">디저트</a>
	          <div class="dropdown-divider"></div>
	          <a class="dropdown-item" href="#">건식</a>
	          <a class="dropdown-item" href="#">습식</a>
	        </div>
	      </li>
	      <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="true">
	          	커뮤니티
	        </a>
	        <div class="dropdown-menu">
	          <a class="dropdown-item" href="GetBoardListCtrl">공지사항</a>
	          <a class="dropdown-item" href="#">질문</a>
	          <a class="dropdown-item" href="#">사용후기</a>
	        </div>
	      </li>
	    </ul>
	    <form class="form-inline my-2 my-lg-0">
	      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
	      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
	    </form>
	  </div>
	</nav>