<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>소프트아이텍 - 로그인</title>
	<link rel="stylesheet" href="/css/login/login.css" type="text/css">
</head>
<body>
	<!-- 상단 -->
	<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
	<!-- 로그인 섹션 -->
	<section id="login">
		<div class="login-container">
			<h2 class="login-title">로그인</h2>
			<form action="/login/executeLogin" method="POST" class="login-form">
				<div class="form-group">
					<label for="id">사용자 ID</label>
					<input type="text" id="id" name="id" required>
				</div>
				<div class="form-group">
					<label for="password">비밀번호</label>
					<input type="password" id="password" name="password" required>
				</div>
				<div class="form-group">
					<button type="submit" class="btn-login">로그인</button>
				</div>
			</form>
		</div>
	</section>
	<c:if test="${loginFail == true}">
		<script>
			// 로그인 실패 시
			alert("로그인에 실패하였습니다.");
		</script>
	</c:if>
	<!-- 하단 -->
	<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</body>
</html>
