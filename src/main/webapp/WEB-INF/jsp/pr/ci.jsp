<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
<head>
<meta charset="UTF-8">
<title>소프트아이텍 - CI</title>
<link rel="stylesheet" href="/css/pr/ci.css" type="text/css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/image-map-resizer/1.0.10/js/imageMapResizer.min.js"></script>
</head>
<body>
	<section>
	    <div class="ci-image-container">
	       <img src="/img/Sit_Ci_.png" alt="소프트아이텍 CI" usemap="#ci-map">
	        <!-- 이미지 맵 정의 -->
	        <map name="ci-map">
	            <!-- Simbol Mark 다운로드 버튼 -->
	            <area shape="rect" coords="590,420,860,470" alt="AI 다운로드" href="/img/ci/ci_simbol_AI.ai" title="AI 다운로드">
	            <area shape="rect" coords="890,420,1160,470" alt="PNG 다운로드" href="/img/ci/ci_simbol_PNG.png" title="PNG 다운로드">
	        </map>
	    </div>
	</section>
</body>
<!-- 이미지 맵 리사이즈 스크립트 -->
<script>
    $(document).ready(function() {
        $('map').imageMapResize();
    });
</script>
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</html>