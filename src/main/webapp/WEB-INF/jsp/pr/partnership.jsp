<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소프트아이텍 - PartnerShip</title>
<link rel="stylesheet" href="/css/pr/partnership.css" type="text/css">
</head>
<body>
	<!-- 상단 -->
	<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
    <!-- 솔루션 섹션 -->
    <section id="partnerShip">
    <div class="container mt-5">
        <h2 class="partnership-title">Partner Ship</h2>
        <p class="partnership-description">
            저희 [회사 이름]은 소중한 파트너들과의 협력을 자랑스럽게 생각합니다. 
            우리는 함께 우수한 성과를 이루고, 산업에서 혁신을 선도하기 위해 노력하고 있습니다. 
            파트너들과의 강력한 관계를 매우 소중히 여기며, 앞으로도 함께 성공을 이어가기를 기대합니다.
        </p>
        <div class="partner-logos">
            <!-- 각 이미지에 대한 반복적인 구성 -->
            <div class="partner-logo">
                <img src="path/to/logo1.png" alt="고객사 1">
            </div>
            <div class="partner-logo">
                <img src="path/to/logo2.png" alt="고객사 2">
            </div>
            <div class="partner-logo">
                <img src="path/to/logo3.png" alt="고객사 3">
            </div>
            <div class="partner-logo">
                <img src="path/to/logo4.png" alt="고객사 4">
            </div>
            <!-- 추가적인 고객사 이미지는 여기에 계속 추가 -->
        </div>
    </div>
    </section>
	<!-- 하단 -->
	<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</body>
</html>