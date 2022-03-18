<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
	<!-- footer 바닥, 위로 올라가기 -->
		<footer id="footerBox">
			<h1>회사정보</h1>
			<div>
				<div id="bottomMenuBox">
					<ul id="bottomMenuItem">
						<li><a href="#">회사소개</a></li>
						<li><a href="#">이용약관</a></li>
						<li><a href="#">개인정보 처리방침</a></li>
						<li><a href="#">전자금융거래약관</a></li>
						<li><a href="#">보안센터</a></li>
						<li><a href="#">채용정보 인재환영</a></li>
					</ul>
					<p>
						Home : Location Log : Tag Log : Media Log : Guestbook :
							Admin : New Post COPYRIGHT Ⓒ NUGUNA's BLOG / DESIGNED BY NUGUNA
					</p>
					
				</div>
				<div id="moveToTopBox">
					<img id="moveToTop" src="<c:url value='/images/moveToTop.png'/>">
				</div>
				<div id="companyLogo">
					<img src="<c:url value='/images/logo4.jpg'/>" alt="NUGUNA">
				</div>
			</div>
		</footer>
	</body>
</html>