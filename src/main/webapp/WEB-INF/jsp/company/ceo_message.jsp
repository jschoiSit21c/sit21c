<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About 소프트아이텍 - CEO 메시지</title>
<link rel="stylesheet" href="/css/company/ceo.css" type="text/css">
</head>
<body>
	<!-- 상단 -->
	<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
    <!-- 솔루션 섹션 -->
    <section id="company">
		<div class="content-container">
		  <div class="ceo-message-title">CEO 메시지</div>
		  <div class="ceo-message">
		    <p>안녕하십니까, 소프트아이텍 CEO입니다. 저희 회사 홈페이지를 방문해 주셔서 감사드립니다.</p>
		    <p>소프트아이텍은 4차 산업혁명의 중심에 서서, 변화와 혁신을 선도하는 글로벌 소프트웨어 개발 및 공급 전문 기업입니다. 우리는 SM(Service Management)과 SI(System Integration) 영역에서 차별화된 경쟁력을 갖추고 있으며, 이를 통해 고객의 비즈니스에 최적화된 솔루션을 제공하고 있습니다.</p>
		    <p>오늘날의 기술 발전은 디지털 전환을 가속화하며, 새로운 기회와 도전을 제시하고 있습니다. 소프트아이텍은 이러한 변화에 능동적으로 대응하기 위해 지속적인 연구개발과 혁신적인 사고를 통해 품질을 향상시키고 있습니다. 우리는 고객의 성공이 곧 우리의 성공이라는 신념을 바탕으로, 고객과의 신뢰 관계를 강화하고, 최적의 IT 서비스를 제공하고자 노력하고 있습니다.</p>
		    <p>2000년 창사 이래, 소프트아이텍은 글로벌 시장에서의 SI 컨설팅 및 다양한 IT 서비스 제공을 통해 견고한 성장을 이루어왔습니다. 앞으로도 고객 중심의 경영 철학을 바탕으로, 새로운 기술과 시장 트렌드에 맞춘 혁신적인 서비스를 제공하여 고객의 가치를 극대화할 것입니다.</p>
		    <p>저희 소프트아이텍을 사랑해 주시는 모든 분들께 깊은 감사의 말씀을 드리며, 여러분의 가정에 건강과 행복이 가득하길 기원합니다. 앞으로도 저희 임직원 일동은 여러분의 성공과 행복에 기여하기 위해 최선을 다하겠습니다.</p>
		    <p>감사합니다.</p>
		    <p>소프트아이텍 CEO</p>
		  </div>
		  <button class="edit-button" onclick="location.href='/company/openWriteCeo'">수정</button>
		</div>
    </section>
	<!-- 하단 -->
	<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</body>
</html>