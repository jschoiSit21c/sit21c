<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=1280">

<title>소프트아이텍 - 전자공시</title>
</head>
<body class="sub-page">
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
	<!-- 서브 페이지 1-->
	<div class="sub-page-content job-detail-page">
		<h2 class="sub-page-title">전자공시 상세</h2>

		<!--//전자공시 내용-->    	
        <section class="job-detail-section">
			<div class="job-detail-info">
				<div class="job-detail-row">
					${item.disclosureContent}
				</div>
			</div>

        </section>
		
		<div class="job-admin-buttons">
			<button type="button" class="form-submit" onclick="location.href='/pr/eDisclosureMain'">목록</button>
			<!-- 관리자만 수정 가능하게끔 -->
			<security:authorize access="hasRole('SA')">			
				<button type="button" class="form-submit" onclick="location.href='/pr/eDisclosureUpdate?id=${item.id}'">전자공시 수정</button>
			</security:authorize>
		</div>
		
	</div>
	<!--// 서브 전체내용 1 -->


<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</body>
</html>