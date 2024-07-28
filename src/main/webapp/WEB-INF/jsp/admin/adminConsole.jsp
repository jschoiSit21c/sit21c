<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
<style type="text/css">

</style>
</head>
<body>

	<!-- 상단 -->
	<jsp:include page="adminHeader.jsp"></jsp:include>
    <main>
        <section id="admin-menu">
            <h2>관리자 메뉴</h2>
            <ul class="admin-nav">
                <li><a href="admin-dashboard.html">대시보드</a></li>
                <li><a href="admin-users.html">사용자 관리</a></li>
                <li><a href="admin-settings.html">설정</a></li>
            </ul>
        </section>
    </main>

	<!-- 하단 -->
	<jsp:include page="adminFooter.jsp"></jsp:include>
</body>
</html>