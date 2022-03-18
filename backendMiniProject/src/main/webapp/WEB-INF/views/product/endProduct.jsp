<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>감사합니다 </title>
		<link href="<c:url value='/css/menu1.css'/>" rel="stylesheet" type="text/css">
		<link href="<c:url value='/css/menu5.css'/>" rel="stylesheet" type="text/css">
		
		<style>
			.completeArea{
				text-align:center;
			}
		</style>
	</head>
	<body>
		<!-- TOP -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />
		<div id='emptyBox'></div>
		
		<div id="completArea">
			<section>
				<div class="titleArea">
					<div class="completeArea">
						<img src="<c:url value='/images/goodluck.jfif'/>">
						<h1>투자해주셔서 감사합니다~!</h1>
						<br><br><br>
						<span class="homeBtn"><a href="<c:url value='/'/>">HOME</a></span>
						<span class="listViewBtn"><a href="<c:url value='/product/listAllProduct'/>">전체 상품 목록</a></span>
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