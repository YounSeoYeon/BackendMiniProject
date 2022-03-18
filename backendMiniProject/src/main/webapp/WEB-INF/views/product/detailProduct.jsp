<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상세 정보 </title>
		<link href="<c:url value='/css/menu1.css'/>" rel="stylesheet" type="text/css">
		<link href="<c:url value='/css/menu3.css'/>" rel="stylesheet" type="text/css">
		<style type="text/css">
			a { 	text-decoration:none; }
		</style>
		
		<script type="text/javascript">
			var qty = 1;
			
			// '+'. '-' 버튼 클릭 시 주문수량 증감 처리
			function qtyChange(num){
				qty = qty + num;
				if(qty < 1) qty = 1; // 주문수량이 0이하가 되지 않도록
				calAmount();
			}
			
			// 주문액 계산			
			function calAmount(){
				var cartQty = document.getElementById('cartQty'); // 주문수량 값 읽어오기
				var amount = document.getElementById('amount'); // 주문액 출력
				
				//주문액 계산 = 주문수량 * 상품가격
				var total = qty * ${prd.prdPrice };
								
				cartQty.value = qty; // 변경된 주문수량 출력 
				// 계산액 출력
				amount.innerHTML = total.toLocaleString();
			}
		
		</script>
		
	</head>
	<body>
		<!-- TOP -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />
		
		
		<div id="investBox">
			<section>
				<div class="titleArea">
					
					<h1 class="title">▶${prd.prdName} </h1>
					
					<div class="imgArea">
						<img src="<c:url value='/images/${prd.prdName}.jpg'/>"><br>
					</div>
					<div class="imgListArea">
						<div class="imgArea1">
							<img src="<c:url value='/images/graph.PNG'/>">
						</div>
						<div class="listArea">
							<ul>
								<li>이름 : ${prd.prdName }
								<li>회사 : ${prd.prdCompany }
								<li>투자 최소 금액 : ${prd.prdPrice } 원
								<%-- <tr><td>주문수량</td>
								<td><input type="button" value="-" onClick="qtyChange(-1)">
										<input type="text" id="cartQty" name="cartQty" value="1" size="1" readonly>
										<input type="button" value="+" onClick="qtyChange(1)"> 개
								</td></tr>
					 			<tr><td>구매 예정 금액</td>
					        		<td><span id="amount"><fmt:formatNumber value="${prd.prdPrice }" pattern="#,###" /></span>   원</td></tr> --%>
					        	<li>투자 수량 :	<input type="button" value="-" onClick="qtyChange(-1)">
											 	<input type="text" id="cartQty" name="cartQty" value="1" size="1" readonly>
												<input type="button" value="+" onClick="qtyChange(1)"> 개
								<li>투자할 금액 : <span id="amount"><fmt:formatNumber value="${prd.prdPrice }" pattern="#,###" /></span>   원<br><br>
									<li>결제 정보 입력 :<br>
									<input type="radio" name="pay" value="결제정보" checked>신용카드
			                        <input type="radio" name="pay" value="결제정보">계좌이체
			                        <input type="radio" name="pay" value="결제정보">무통장입금<br>
				                        <select class ="payment">
											<option value="">카드선택
											<option value="NH농협">NH농협
											<option value="전북">전북
											<option value="KB">KB
											<option value="하나">하나
											<option value="신한">신한
											<option value="삼성">삼성
				                        </select><br><br>
			                        동의하시겠습니까?
			                        <input type="radio" name="agree" value="동의정보" checked>예
			                        <input type="radio" name="agree" value="동의정보">아니오<br><br><br>
							</ul>
							<br><br><br><br>
							
						</div>
						<span class="investBtn"><a href="<c:url value='/product/endViewProduct'/>">투자하기</a></span>
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