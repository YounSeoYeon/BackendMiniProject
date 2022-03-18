<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>listview화면</title>
		<link href="<c:url value='/css/css.css'/>" rel="stylesheet" type="text/css">
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
	</head>
	<body>
	
		<!-- TOP  -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />
		
		<div class="board_wrap">
        <div class="board_title">
            <strong>커뮤니티 게시판</strong>
            <p>커뮤니티 게시판 입니다.</p>
        </div>
	        <div class="board_view_wrap">
	            <div class="board_view">
	                <div class="title">
	                    ${vo.comTitle}
	                </div>
	                <div class="info">
	                    <dl>
	                        <dt>번호</dt>
	                        <dd>${vo.comNo}</dd>
	                    </dl>
	                    <dl>
	                        <dt>글쓴이</dt>
	                        <dd>${vo.memId}</dd>
	                    </dl>
	                    <dl>
	                        <dt>작성일</dt>
	                        <dd>${vo.comDate}</dd>
	                    </dl>
	                    <dl>
	                        <dt>조회</dt>
	                        <dd>${vo.comCount}</dd>
	                    </dl>
	                </div>
	                <div class="cont">
	                    ${vo.comComent}<br>
	                    <br>
	                    <br>
	                    <br>
	                    <br>
	                    <br>
	                    <br>
	                </div>
	            </div>
	            <div class="bt_wrap">
	                <a href="<c:url value='/lista'/>" class="on">목록</a>
	                <a href="edit.html">수정</a>
	            </div>
	        </div>
	    </div>
	    
	    <!-- BOTTOM  -->
		<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
		
	</body>
</html>