<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
<head>
<meta charset="UTF-8">
<title>About 소프트아이텍 - CEO 메시지</title>
<link rel="stylesheet" href="/css/company/ceo.css" type="text/css">
</head>
<body>
    <!-- 솔루션 섹션 -->
    <section id="company">
		<div class="content-container">
		  <div class="ceo-message-title">CEO 메시지</div>
		  <div class="ceo-message">
			${item.content}
		  </div>
		  <security:authorize access="hasRole('SA')">
		  	<!-- 관리자 로그인시에만 보이게끔 수정 -->
		  	<button class="edit-button" onclick="location.href='/company/openWriteCeo'">수정</button>
		  </security:authorize>
		</div>
    </section>
</body>
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</html>