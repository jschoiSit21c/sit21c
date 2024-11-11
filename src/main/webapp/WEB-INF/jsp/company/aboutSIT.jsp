<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>소프트아이텍 - About</title>
</head>
<body class="sub-page">
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
	<!-- 서브 페이지 1-->
	<div class="sub-page-content">
		<h2 class="sub-page-title">About</h2>

		<!-- 인사말 -->
		<div class="sub-page1-area">
		<!-- 슬로건 및 설명 -->
			<h3 class="slogan">지속적인 혁신을 통해 세상의 변화를 이끈다.</h3>
			<!-- 이미지와 CEO 인사말 내용 -->
			<div class="ceo-message-content">
				<p class="ceo-message-text">
					소프트아이텍을 찾아주신 여러분께 감사드립니다. 우리는 AI, 빅데이터, 클라우드 컴퓨팅 등 혁신적인 기술을 통해 고객 맞춤형 디지털 서비스를 제공합니다.
					<span>우리는 최신 기술을 활용하여 고객의 비즈니스 경쟁력을 강화하고, 디지털 전환을 선도하고 있습니다.</span>
				</p>
				<p class="ceo-message-thanks">감사합니다</p>
			</div>	
		</div>	
		<!-- 미션  -->
		<div class="mission-vision-core">
			<div class="mission">
				<h2>MISSION</h2>
				<p>최고의 IT 솔루션을 통해 고객의 성공과 성장을 지원한다.</p>
				<p class="sub-text">"Supporting clients' success and growth through top-tier IT solutions."</p>
			</div>
			<div class="divider"></div> <!-- 그레이 바 -->
			<div class="vision">
				<h2>VISION</h2>
				<p>디지털 혁신을 선도하며, 신뢰받는 IT 파트너.</p>
				<p class="sub-text">"Leading digital innovation and becoming a trusted IT partner."</p>
			</div>
			<div class="core-value-section">
				<h2 class="core-value-title">CORE VALUE</h2>
				<div class="core-values-items">
					<div class="core-value-box">
						<img src="/img/ico_com1.png" alt="고객중심 아이콘">
						<h3>고객중심</h3>
						<p class="core-value-subtitle">Customer-centric</p>
						<p>고객의 요구를 최우선으로 고려하며 최적의 솔루션을 제공합니다.</p>
					</div>
					<div class="core-value-box">
						<img src="/img/ico_com2.png" alt="균형사고 아이콘">
						<h3>책임감</h3>
						<p class="core-value-subtitle">Responsibility</p>
						<p>우리는 맡은 일에 책임감을 가지고 신뢰할 수 있는 서비스를 제공합니다.</p>
					</div>
					<div class="core-value-box">
						<img src="/img/ico_com3.png" alt="협업중시 아이콘">
						<h3>협업</h3>
						<p class="core-value-subtitle">Collaboration</p>
						<p>효율적인 협업을 통해 최상의 결과를 창출합니다.</p>
					</div>
					<div class="core-value-box">
						<img src="/img/ico_com4.png" alt="지속학습 아이콘">
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