<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About 소프트아이텍 - company</title>
</head>
<body>
	<!-- 상단 -->
	<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
    <main>
        <section class="company-overview">
            <h2>회사소개</h2>
            <div class="video-container">
                <iframe src="/video/pro.mp4" frameborder="0" allowfullscreen></iframe>
            </div>
        </section>
        <section class="vision">
            <h2>경영이념</h2>
            <div class="vision-chart">
                <img src="/img/aboutSIT.png" alt="경영이념">
            </div>
        </section>
    </main>
	<!-- 하단 -->
	<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</body>
</html>