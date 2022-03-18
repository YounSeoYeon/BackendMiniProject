<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상품 목록 정보 </title>
		<link href="<c:url value='/css/menu1.css'/>" rel="stylesheet" type="text/css">
		<link href="<c:url value='/css/menu2.css'/>" rel="stylesheet" type="text/css">
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		
	</head>
	<body>
	
		<!-- TOP -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />
		
		<div id="severalArea">
		<div id='emptyBox'></div>
			<section>
				<div class="titleArea">
					<h3 class="title">프랜차이즈</h3>
					<div class="menuArea">
						<span class="foodBtn">음식점</span>
						<span class="cafeBtn">카페</span>
						<span class="clothBtn">옷가게</span>
						<span class="shopBtn">화장품</span>
					</div>
					<div class="itemArea">
						
						<c:forEach items="${prdList }" var="prd">
						<div class="item">
							<a href="<c:url value='/product/detailViewProduct/${prd.prdName}'/>">
								 	 <img src="<c:url value='/images/${prd.prdName}.jpg'/>" /></a>
							<h4>${prd.prdName }</h4>
						</div>
						</c:forEach>
						
					
					</div>
				</div>
			</section>
		</div>
		
		<div class="clear"></div>
		

	 	<!-- footer 바닥, 위로 올라가기 -->
	    <div class="wrap">
	    
			<!-- BOTTOM -->
			<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
			
		</div>
				
	</body>
</html>