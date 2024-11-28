<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=1280">
<title>소프트아이텍 - About</title>
</head>
<body class="sub-page">
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
	<!-- //전체 화면 메뉴 -->
	
	<!-- 서브 페이지 1-->
	<div class="sub-page-content">
		<h2 class="sub-page-title">인증/수상</h2>

		<!-- 인사말 -->
		<div class="sub-page1-area">
		<!-- 슬로건 및 설명 -->
			<h3 class="slogan">탁월한 성과와 신뢰로 인증받는 소프트아이텍의 여정</h3>
			<!-- 이미지와 CEO 인사말 내용 -->
			<div class="cerfi-content">


			</div>	
		</div>	
			
		<!-- 연혁  -->

	<!--// 서브 전체내용 1 -->
		<!-- 인증서 -->			
		<div class="sub-page3-area">
			<div class="s_title">인증서, 주요수상경력</div>
				<div class="certificate-container">
					<div class="certificate-item">
						<img src="/img/cer_01.png" alt="ISO/IEC 20000-1: 2018 인증">
						<p>ISO/IEC 20000-1: 2018 인증</p>
					</div>
					<div class="certificate-item">
						<img src="/img/cer_02.png" alt="ISO/IEC 27001: 2014 인증">
						<p>ISO/IEC 27001: 2014 인증</p>
					</div>
					<div class="certificate-item">
						<img src="/img/cer_03.png" alt="ISO9001 2015 인증 획득">
						<p>ISO9001 2015 인증 획득</p>
					</div>
					<div class="certificate-item">
						<img src="/img/cer_04.png" alt="기술혁신형 중소기업 확인서">
						<p>기술혁신형 중소기업 확인서</p>
					</div>
					<div class="certificate-item">
						<img src="/img/cer_05.png" alt="기업부설연구소 인정서">
						<p>기업부설연구소 인정서</p>
					</div>
					<div class="certificate-item">
						<img src="/img/certif_01.png" alt="ISO9001 2015 인증 획득">
						<p>이백억원 매출의탑 </p>
					</div>
					<div class="certificate-item">
						<img src="/img/certif_02.png" alt="기술혁신형 중소기업 확인서">
						<p>사백억원 매출의탑 </p>
					</div>
					<div class="certificate-item">
						<img src="/img/certif_03.png" alt="기업부설연구소 인정서">
						<p>육백억원 매출의탑 </p>
					</div>
				</div>		

		</div>
		<!-- //인증서 -->
	</div>
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</body>
</html>