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
				<h1 class="job-title">${item.recruitTitle}</h1>
				<p class="job-summary">소프트아이텍의 함께할 직원을 찾습니다.</p>
			</div>
			<div class="job-detail-info">
				${item.recruitContent}
				<c:if test="${item.recruitExternalUrl != null}">
					<a href="${item.recruitExternalUrl}" style="color: blue;" target="_blank">사람인으로 지원하기</a>
				</c:if>
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
				<!-- 이력서 및 포트폴리오 -->
				<div class="form-row">
					<label for="resume">이력서*</label>
					<input type="file" id="resume" name="resume" required>
				</div>
				<!-- 개인정보 동의 -->
				<div class="privacy-agree">
					<input type="checkbox" id="agree" name="agree" required>
					<label for="agree">개인정보처리방침에 동의합니다.</label>
				</div>
				<!-- 버튼 -->
				<div class="form-buttons">
					<button type="submit" class="form-submit">지원하기</button>
				</div>
			</form>
		</section>
		<!-- 뒤로가기 버튼 -->
		<div class="back-button-container">
			<button class="back-button" onclick="location.href='/recruit/recruitmentMain'">목록</button>
		</div>
		<security:authorize access="hasRole('SA')">
			<!-- 관리자만 수정 가능하게끔 -->
			<div class="job-admin-buttons">
				<button type="button" onclick="location.href='/recruit/recruitmentUpdate/?recruitId=${param.recruitId}'" class="edit-button">공고 수정</button>
			</div>
		</security:authorize>
	</div>

	<!--// 서브 전체내용 1 -->
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</body>
</html>