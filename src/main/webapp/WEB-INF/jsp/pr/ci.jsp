<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=1280">
<title>소프트아이텍 - CI</title>
</head>
<body class="sub-page">
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
	<!-- 서브 페이지 1-->
	<div class="sub-page-content">
		<h2 class="sub-page-title">인재상</h2>

		<!-- 인사말 -->
		<div class="sub-page1-area">
		<!-- 슬로건 및 설명 -->
		
			<h3 class="slogan">혁신적 사고와 협력으로 지속 가능한 가치를 만들어가는 소프트아이텍</h3>

			<!-- 이미지와 CEO 인사말 내용 -->
			<div class="pr-message-content">

			</div>	
		</div>	
		
	<!-- CI -->

        <section class="pr-section">
            <div class="pr-text top-text">
                <h1>CI</h1>
                <h2>(Corporate Identity)</h2>
            </div>
            <div class="pr-row">
                <div class="pr-item">
                    <img src="/img/ci_logo01.png" alt="소프트아이텍 로고" class="pr-image">
                </div>
            </div>
            <div class="pr-text bottom-text">
                <p>혁신적인 기술을 상징하는 SOFTITECH은 인류의 편리한 삶을 끊임없이 노력하는 IT기업으로서의 전문성과 신뢰를 의미합니다.<br>
                기술 혁신과 사람 중심의 접근을 결합한 전체적인 조형은 SIT 그룹이 축하는 핵심 가치입니다.<br>
                물결치는 듯한 동적인 이미지는 빠르게 변화하는 IT 세계에서 변함없이 성장하는 SIT의 기상을 표현합니다.</p>
            </div>
           <button class="download-button"><a href="/img/ci_logo01.png" download style="color: #fff">CI 다운로드</a></button>
        </section>        

        <div class="ci-info-section">
            <h2>Logo Type</h2>

		<div class="logo-type">
			<div class="logo-item">
				<div class="logo-box">
					<img src="/img/ci_logo01.png" alt="국문 타입 로고">
				</div>
				<p>국문타입</p>
			</div>
			<div class="logo-item">
				<div class="logo-box">
					<img src="/img/ci_logo02.png" alt="영문 타입 로고">
				</div>
				<p>영문타입</p>
			</div>
		</div>

            <div class="color-system">
                <h3>Color System</h3>
                <div class="color-items">
                    <div class="color-item" style="background-color: #163c8a;">
                        <p>#3960ac<span>C: 98 M: 86 Y: 20 K 0</span></p>
                    </div>
                    <div class="color-item" style="background-color: #3450a1;">
                        <p>#3450a1<span>C: 87 M: 74 Y: 8 K 0</span></p>
                    </div>
                    <div class="color-item" style="background-color: #3960ac;">
                        <p>#3960ac<span>C: 83 M: 64 Y: 7 K 0</span></p>
                    </div>
                </div>
            </div>
        </div>

	

	<!--  //CI -->	


	</div>
	<!--// 서브 전체내용 1 -->
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</body>
</html>