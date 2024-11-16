<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=1280">
<title>소프트아이텍 - 채용정보</title>
</head>
<body class="sub-page">
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
	<!-- 서브 페이지 1-->
	<div class="sub-page-content job-detail-page">
		<h2 class="sub-page-title">채용공고 상세</h2>

		<!-- 채용 공고 상세 정보 -->
		<section class="job-detail-section">
			<div class="job-detail-header">
				<h1 class="job-title">Java 운영 경력 SM 인재 채용</h1>
				<p class="job-summary">소프트아이텍의 내부 프로젝트를 이끌어갈 경력직을 찾습니다.</p>
			</div>
			<div class="job-detail-info">
				<div class="job-detail-row">
					<h4>담당 업무</h4>
					<p>- 당사 솔루션 도입 후 주요 고객사 시스템 유지 및 관리</p>
				</div>
				<div class="job-detail-row">
					<h4>자격 요건</h4>
					<p>- Java 경력 2년 이상 보유<br>- RESTful API 설계 및 개발 경험<br>- RDBMS 기반의 데이터 모델 설계 능력</p>
				</div>
				<div class="job-detail-row">
					<h4>우대 사항</h4>
					<p>- 대규모 웹 애플리케이션 개발 경험<br>- HTML, CSS, JavaScript 활용 가능<br>- 고객과의 원활한 커뮤니케이션</p>
				</div>
				<div class="job-detail-row">
					<h4>근무지</h4>
					<p>서울특별시 강남구</p>
				</div>
			</div>
		</section>
		
		<section class="job-application-section">
			<h3>지원하기</h3>
			<form action="/submitApplication" method="post" enctype="multipart/form-data">
				<!-- 성명 -->
				<div class="form-row">
					<label for="name">성명*</label>
					<input type="text" id="name" name="name" required>
				</div>
				<!-- 이메일 -->
				<div class="form-row">
					<label for="email">이메일*</label>
					<input type="email" id="email" name="email" required>
				</div>
				<!-- 전화번호 -->
				<div class="form-row">
					<label for="phone">전화번호*</label>
					<input type="tel" id="phone" name="phone" placeholder="010-1234-5678" required>
				</div>
				<!-- 이력서 -->
				<div class="form-row">
					<label for="resume">이력서*</label>
					<input type="file" id="resume" name="resume" required>
				</div>
				<!-- 포트폴리오 -->
				<div class="form-row">
					<label for="portfolio">포트폴리오</label>
					<input type="file" id="portfolio" name="portfolio">
				</div>
				<!-- 개인정보 동의 -->
				<div class="privacy-agree">
					<input type="checkbox" id="agree" name="agree" required>
					<label for="agree">개인정보처리방침에 동의합니다.</label>
				</div>
				<!-- 버튼 -->
				<div class="form-buttons">
					<button type="button" class="form-cancel">취소</button>
					<button type="submit" class="form-submit">지원하기</button>
				</div>
			</form>
		</section>
		<div class="job-admin-buttons">
			<button type="button" onclick="location.href='/job/edit/1'" class="edit-button">공고 수정</button>
		</div>
	</div>

	<!--// 서브 전체내용 1 -->
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</body>
</html>