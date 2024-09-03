<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
<head>
<meta charset="UTF-8">
<title>소프트아이텍 - PartnerShip</title>
</head>
<body>
    <!-- 솔루션 섹션 -->
    <section>
		<div class="text-mid title">
			<h1>PartnerShip</h1>
		</div>
        <div class="partner-logos">
            <!-- 각 이미지에 대한 반복적인 구성 -->
            <div class="partner-logo">
                <img src="/img/Sit_Partner_.png" alt="파트너사">
            </div>
            <!-- 추가적인 고객사 이미지는 여기에 계속 추가 -->
        </div>
    </section>
</body>
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</html>