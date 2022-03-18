<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ex1</title>
	<link href="<c:url value='/css/main.css'/>" rel="stylesheet" type="text/css">
	<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
	<script src="<c:url value='/js/main.js'/>"></script>
	
	<!-- 공통 CSS & JS -->
	<link href="<c:url value='/css/commonMenu.css'/>" rel="stylesheet" type="text/css">
	<script src="<c:url value='/js/commonMenu.js'/>"></script>
	
</head>

	<body>
		<section class="wrap">
			<h1>메인화면</h1>
			<!-- ----------------------------------------------------------------------------------------- -->
			<div class="container">
				<header class="headBox">
					<div class="mainmenuBox">
						<ul class="logo">
							<li><a href="<c:url value='/'/>"><img id="logoimg" src="<c:url value='/images/logo4.jpg'/>" alt="NUGUNA"></a></li>
						</ul>
						<ul class="mainmenu">
							<li class="dropBox"><a href="#">커뮤니티</a>
								<ul class="dropmenu">
									<li><a class="dropdown-item" href="<c:url value='/lista'/>">전체글보기</a></li>
									<li><a class="dropdown-item" href="<c:url value='/write'/>">글쓰기</a></li>
								</ul>
							</li>
							<li class="dropBox"><a href="#">투자하기</a>
								<ul class="dropmenu">
									<li><a class="dropdown-item" href="<c:url value='/product/listAllProduct'/>">전체투자상품</a></li>
									<li><a class="dropdown-item" href="<c:url value='/product/detailViewProduct'/>">개별상품조회</a></li>
									<li><a class="dropdown-item" href="<c:url value='/end'/>">투자하기</a></li>
								</ul>
							</li>
							<li class="dropBox"><a href="#">로그인</a>
								<ul class="dropmenu">
									<li><a class="dropdown-item" href="<c:url value='/loginForm'/>">로그인</a></li>
									<li><a class="dropdown-item" href="/joinForm">회원가입</a></li>
								</ul>
							</li>
							<li class="dropBox"><a href="#">고객센터</a>
								<ul class="dropmenu">
									<li><a class="dropdown-item" href="customer/CustomerCenter.html">자주묻는질문</a></li>
									<li><a class="dropdown-item" href="customer/Chatting.html">1:1문의</a></li>
								</ul>
							</li>
							<li class="dropBox"><a href="#">수익현황</a>
								<ul class="dropmenu">
									<li><a class="dropdown-item" href="customer/Status.html">수익현황조회</a></li>
								</ul>
							</li>
							
						</ul>
					</div>
				</header>
			</div>
		</section>
	</body>
</html>