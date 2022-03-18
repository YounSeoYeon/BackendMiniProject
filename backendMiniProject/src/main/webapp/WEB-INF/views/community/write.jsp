<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>커뮤니티 글쓰기</title>
		<link href="<c:url value='/css/css.css'/>" rel="stylesheet" type="text/css">
		<link href="<c:url value='/css/media.css'/>" rel="stylesheet" type="text/css">
		<link href="<c:url value='/css/style.css'/>" rel="stylesheet" type="text/css">
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/writeOn.js'/>"></script>
	</head>
	<body>
	<!-- TOP  -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />
		<div class="board_wrap">
        <div class="board_title">
            <strong>커뮤니티 게시판</strong>
            <p>커뮤니티 게시판 입니다.</p>
        </div>
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">
                    <dl>
                        <dt>제목</dt>
                        <dd><input id="comTitle" name="comTitle" type="text" placeholder="제목 입력"></dd>
                    </dl>
                </div>
                <div class="info">
                    <dl>
                        <dt>글쓴이</dt>
                        <dd><input id="memId" name="memId" type="text" placeholder="글쓴이 입력" readonly="readonly" value="hong"></dd>
                    </dl>
                    <dl>
                        <dt>비밀번호</dt>
                        <dd><input id="comPwd" name="comPwd" type="password" placeholder="비밀번호 입력"></dd>
                    </dl>
                </div>
                <div class="cont">
                    <textarea id="comComent" name="comComent" placeholder="내용 입력"></textarea>
                </div>
            </div>
            <div class="bt_wrap">
                <a href="<c:url value='/insertview'/>" class="on" id="writeOn">등록</a>
                <a href="<c:url value='/lista'/>">취소</a>
            </div>
        </div>
    </div>
    <!-- BOTTOM  -->
		<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
    
	</body>
</html>