<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>전체글보기</title>
		<link href="<c:url value='/css/commonMenu.css'/>" rel="stylesheet" type="text/css">
		<link href="<c:url value='/css/css.css'/>" rel="stylesheet" type="text/css">
		<link href="<c:url value='/css/media.css'/>" rel="stylesheet" type="text/css">
		<link href="<c:url value='/css/style.css'/>" rel="stylesheet" type="text/css">
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/commonMenu.js'/>"></script>
	</head>
	<body>
		<!-- TOP  -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />
		<div class="board_wrap">
			<div class="board_title">
				<strong>커뮤니티 게시판</strong>
				<p>커뮤니티 게시판 입니다.</p>
			</div>
			<div class="board_list_wrap">
				<div class="board_list">
					<div class="top">
						<div class="num">번호</div>
						<div class="title">제목</div>
						<div class="writer">글쓴이</div>
						<div class="date">작성일</div>
						<div class="count">조회</div>
					</div>
					<c:forEach items="${comlist}" var="com">
						<div>
						<div class="num">${com.comNo}</div>
						<div class="title" id="comTitle">
							<a href="<c:url value='/listview/${com.comNo}'/>">${com.comTitle}</a>
						</div>
						<div class="writer" id="comId">${com.memId}</div>
						<div class="date" id="comDate">${com.comDate}</div>
						<div class="count" id="comCount">${com.comCount}</div>
					</div>
					</c:forEach>
				</div>
				<div class="board_page">
					<a href="#" class="bt first"></a> <a href="#" class="bt prev"></a>
					<a href="#" class="num on">1</a> <a href="#" class="num">2</a> <a
						href="#" class="num">3</a> <a href="#" class="num">4</a> <a
						href="#" class="num">5</a> <a href="#" class="bt next"></a> <a
						href="#" class="bt last"></a>
				</div>
				<div class="bt_wrap">
					<a href="<c:url value='/write'/>" class="on">등록</a>
				</div>
			</div>
		</div>
	
		<!-- BOTTOM  -->
		<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
	</body>
</html>