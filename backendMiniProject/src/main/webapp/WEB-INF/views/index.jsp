<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>메인화면</title>
		<link href="<c:url value='/css/main.css'/>" rel="stylesheet" type="text/css">
		<link href="<c:url value='/css/commonMenu.css'/>" rel="stylesheet" type="text/css">
		<link href="<c:url value='/css/slideShow1.css'/>" rel="stylesheet" type="text/css">
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/main.js'/>"></script>
		<script src="<c:url value='/js/slideShow1.js'/>"></script>
		<script src="<c:url value='/js/commonMenu.js'/>"></script>
		<style type="text/css">
			h1{visibility: hidden;}
		</style>
	</head>
	<body>
	<section class="wrap">
		
		<!-- top -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush="true" />
				<!-- main부분 -->
			<section class="midBox">
				<h1>중간박스</h1>
				<div class="LeftRight">
					<section class="Box1">
						<h1>커뮤니티게시판</h1>
						<div class="board_list_wrap" id="board_list_wrap">
							<div class="board_list">
								<div class="top">
									<span class="num">번호</span> <span class="title">제목</span> <span
										class="writer">글쓴이</span> <span class="date">작성일</span> <span
										class="count">조회</span>
								</div>
								<c:forEach items="${comlist}" var="com">
										<div>
											<span class="num">${com.comNo}</span> <span class="title"><a href="<c:url value='/listview/${com.comNo}'/>">${com.comTitle}</a></span>
											<span class="writer">${com.memId}</span>
											<span class="date">${com.comDate}</span> <span class="count">${com.comCount}</span>
										</div>
								</c:forEach>
							</div>
						</div>
					</section>
					<section class="Box2">
					<h1>투자상품소개</h1>
					<div class="slideshow">
						<div class="buttonBox">
							<img class="prev" src="<c:url value='images/prevButton.png'/>" alt="prev"> 
							<img class="next" src="<c:url value='images/nextButton.png'/>" alt="next">
						</div>
						<div class="slideshowBox">
							<div class="slidePanel">
								
								<img src="<c:url value='/images/MUSINSA.jpg'/>" class="slideImage">
								<img src="<c:url value='/images/adidas.jpg'/>" class="slideImage">
								<img src="<c:url value='/images/BHC.jpg'/>" class="slideImage">
							</div>
						</div>
						
						
						
						<div class="control">
							<img src="<c:url value='images/controlButton1.png'/>"
								class="control1"> <img
								src="<c:url value='images/controlButton1.png'/>"
								class="control2"> <img
								src="<c:url value='images/controlButton1.png'/>"
								class="control3">
						</div>
					</div>
				</section>
			</div>
			<div class="clear"></div>
			<section class="companyInfo">
				<h1>회사광고</h1>
				<article>
					<div class="tabBox">
						<div id="tabImage">
							<img src="<c:url value='images/gogo.jpg'/>" alt="왜 투자를 해야하는가?">
						</div>
					</div>
				</article>
			</section>
		</section>

		<!-- bottom -->
			<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush="true" />
			</section>
</body>
</html>

