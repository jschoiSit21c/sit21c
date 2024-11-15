<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>소프트아이텍 - 공공 디지털 서비스</title>
</head>
<body class="sub-page">
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
	<!-- 서브 페이지 1-->
	<div class="sub-page-content">
		<h2 class="sub-page-title">공공디지털 서비스</h2>

		<!-- 인사말 -->
		<div class="sub-page1-area">
		<!-- 슬로건 및 설명 -->
			<h3 class="slogan">소프트아이텍은 공정보화시스템의 설계, 구축부터 운영·유지보수까지<br>전 과정에서 고객이 만족할 수 있는 최상의 서비스를 제공하는 것을 목표로 합니다.</h3>
			<!-- 이미지와 CEO 인사말 내용 -->
			<div class="busi-message-content">

			</div>	
		</div>	
		<!-- 미션  -->
		<div class="digital_info">
			<div class="digital">
				<p><img src="../img/bu_sm1.png" alt="" class=""></p>
				<p><img src="../img/bu_sm2.png" alt="" class=""></p>
			</div>
			<div class="digi_divider"></div> <!-- 그레이 바 -->
				<p><img src="../img/bu_sm3.png" alt="" class=""></p>

		</div>
		<!-- // 미션  -->


	</div>
	<!--// 서브 전체내용 1 -->
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</body>
</html>