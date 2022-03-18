<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
        <title>로그인 폼</title>
        <link rel="stylesheet" href="<c:url value='/css/login.cs'/>">
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <script src="<c:url value='/js/login.js'/>"></script>
        
   </head>
   
  <body>
	<div class="wrap">
			<!-- TOP -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />
		<div id='emptyBox'></div>
	</div>
		<!-- Header 끝 -->
          
      
      
      <div class="wrap">
      
      
           <div id="joinBox">
	           <section>
	        		<h1 id="title">로그인</h1>
	        		<form id="loginForm" name="loginForm">
		          		<table>
				            <tr><th> ID</th><td><input type="text" id="id" name="id" ></td></tr>
				            <tr><th>비밀번호</th><td><input type="password" id="pwd" name="pwd"></td></tr>
				             <tr>
				                <td colspan="2" align="center" id="button">
				                    <br><input type="submit" value="로그인">
				                    <input type="reset" value="취소">
				                </td>
				            </tr>
	            		</table>
		            	<div id='createOrFind'>
	                		<a href = '../login/join.html' id='joinBtn'>회원가입</a>
	                		<a href = '../main.html' id='findBtn'>ID/비밀번호 찾기</a>
	            		</div>
		        	</form>	
	        	</section>
               
                <!-- <div id='createOrFind'>
                	<a href = '../login/join.html' id='joinBtn'>회원가입</a>
                	<a href = '../main.html' id='findBtn'>ID/비밀번호 찾기</a>
            	</div> -->
            	
      		</div>
      <br><br><br><br><br><br>
     </div>
     
       <!-- footer 바닥, 위로 올라가기 -->
	    <div class="wrap">
			<!-- BOTTOM -->
			<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
	      
	      
	   </div>

      
   </body>
</html>