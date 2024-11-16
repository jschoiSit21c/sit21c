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
	<div class="sub-page-content">
		<h2 class="sub-page-title">채용정보</h2>

		<!-- 인사말 -->
		<div class="sub-page1-area">
		<!-- 슬로건 및 설명 -->
		
			<h3 class="slogan">소프트아이텍은 정기/수시 채용제도를 통해, 능력 있는 인재들이 지원할 수 있도록 가능성을 열어두고 있습니다.</h3>

			<!-- 이미지와 CEO 인사말 내용 -->
			<div class="employ-message-content">

			</div>	
		</div>	
		
		<section class="job-list-section">
			<div class="job-table-wrapper">
				<!-- 채용 목록 테이블 -->
				<table class="job-table">
					<thead>
						<tr>
							<th>채용 제목</th>
							<th>요약</th>
							<th>근무지</th>
							<th>상세보기</th>
						</tr>
					</thead>
					<tbody>
						<tr onclick="location.href='/recruit/recruitmentDetail?id=1'">
							<td>IT개발 경력 SM 인재 채용</td>
							<td>Java 운영 경력자를 모집합니다.</td>
							<td>서울</td>
							<td><button class="job-apply-button">자세히 보기</button></td>
						</tr>
						<tr onclick="location.href='/jobDetail?id=2'">
							<td>데이터 분석 전문가</td>
							<td>데이터 기반 인사이트 제공.</td>
							<td>부산</td>
							<td><button class="job-apply-button">자세히 보기</button></td>
						</tr>
						<tr onclick="location.href='/jobDetail?id=3'">
							<td>클라우드 인프라 엔지니어</td>
							<td>AWS 환경 구축 및 운영.</td>
							<td>대전</td>
							<td><button class="job-apply-button">자세히 보기</button></td>
						</tr>
					</tbody>
				</table>
		
				<!-- 페이징 영역 -->
				<div class="pagination">
					<a href="#">&laquo;</a>
					<a href="#" class="active">1</a>
					<a href="#">2</a>
					<a href="#">3</a>
					<a href="#">4</a>
					<a href="#">5</a>
					<a href="#">&raquo;</a>
				</div>
				<security:authorize access="hasRole('SA')">
					<!-- 글쓰기 버튼, 관리자 로그인시에만 보임 -->
					<button class="write-button" onclick="location.href='/jobWrite'">글쓰기</button>
				</security:authorize>
			</div>
		</section>


	</div>

	<!--// 서브 전체내용 1 -->
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</body>
</html>