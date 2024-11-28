<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=1280">
<title>소프트아이텍 - About</title>
</head>
<body class="sub-page">
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
	<!-- //전체 화면 메뉴 -->
	
	<!-- 서브 페이지 1-->
	<div class="sub-page-content">
		<h2 class="sub-page-title">회사소개</h2>

		<!-- 인사말 -->
		<div class="sub-page1-area">
		<!-- 슬로건 및 설명 -->
			<h3 class="slogan">지속적인 혁신을 통해 세상의 변화를 이끈다.</h3>
			<!-- 이미지와 CEO 인사말 내용 -->
			<div class="ceo-message-content">
				<p class="ceo-message-text">

우리는 고객 맞춤형 IT 서비스를 통해 고객의 비즈니스 효율성을 높이고,  <br>성공적인 디지털 환경 구축을 지원하고 있습니다.
또한, 클라우드 서비스를 적극적으로 활용하여 더 안정적이고 유연한 시스템 인프라를 제공합니다.<br>

소프트아이텍은 미래를 준비하며 디지털 혁신을 선도하기 위해 최신 기술 연구와 개발에 힘쓰고 있습니다.

					<span>우리는 고객의 비즈니스 경쟁력을 강화하고, 성공적인 디지털 전환을 이루는 신뢰받는 파트너가 되겠습니다.</span>
				</p>
				<p class="ceo-message-thanks">감사합니다</p>
			</div>	
		</div>	
		<!-- 미션  -->
<div class="mission-vision-core">
    <div class="innovation-section">
        <div class="innovation">
            <h2>미션</h2>
            <p class="subtitle">MISSION</p>
            <p class="description">
				<span>최고의 IT 솔루션을 통해 고객의 성공과 성장을 지원합니다.</span><br>
                우리는 최신 기술과 창의적인 아이디어를 통해 고객의 비즈니스 목표를 실현합니다. 고객의 신뢰를 바탕으로 문제를 해결하고, 최적의 솔루션을 제공하여 함께 성장하는 비즈니스 파트너가 되겠습니다.
        </div>

        <div class="prosperity">
            <h2>비전</h2>
            <p class="subtitle">VISION</p>
            <p class="description">
               <span>디지털 혁신을 선도하며, 신뢰받는 글로벌 IT 리더로 성장합니다..</span> <br>
                우리는 변화와 혁신의 중심에서 고객과 함께 새로운 가치를 창출합니다. 기술적 전문성과 지속적인 발전을 통해 세상을 연결하고, 모두가 신뢰할 수 있는 IT 기업으로 자리잡겠습니다.
            </p>
        </div>
    </div>
    <div class="core-value-section">
        <h2 class="core-value-title">핵심 가치</h2>
        <p > CORE VALUE</p>
        <div class="core-values-items">
            <div class="core-value-box">
                <img src="../img/ico_com1.png" alt="고객중심 아이콘">
                <h3>고객중심</h3>
                <p class="core-value-subtitle">Customer-centric</p>
                <p>고객의 요구를 최우선으로 고려하며 최적의 솔루션을 제공합니다.</p>
            </div>
            <div class="core-value-box">
                <img src="../img/ico_com2.png" alt="균형사고 아이콘">
                <h3>책임감</h3>
                <p class="core-value-subtitle">Responsibility</p>
                <p>우리는 맡은 일에 책임감을 가지고 신뢰할 수 있는 서비스를 제공합니다.</p>
            </div>
            <div class="core-value-box">
                <img src="../img/ico_com3.png" alt="협업중시 아이콘">
                <h3>협업</h3>
                <p class="core-value-subtitle">Collaboration</p>
                <p>효율적인 협업을 통해 최상의 결과를 창출합니다.</p>
            </div>
            <div class="core-value-box">
                <img src="../img/ico_com4.png" alt="지속학습 아이콘">
                <h3>지속적인 발전</h3>
                <p class="core-value-subtitle">Continuous Improvement</p>
                <p>지속적인 학습과 혁신을 통해 더욱 나은 서비스를 제공합니다.</p>
            </div>
        </div>
    </div>
</div>
		<!-- // 미션  -->


	</div>
	<!--// 서브 전체내용 1 -->
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</body>
</html>