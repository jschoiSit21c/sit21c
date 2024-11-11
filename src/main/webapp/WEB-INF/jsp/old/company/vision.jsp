<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>소프트아이텍 - 비전</title>
    <style>

        .container {
            width: 100%;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #e6e6e6;
            background-color: #ffffff;
        }

        .header {
            margin-bottom: 30px;
            text-align: center;
        }

        .header h1 {
            font-size: 1.8rem;
            font-weight: normal;
            color: #0055a4;
        }

        .header h2 {
            font-size: 1.5rem;
            font-weight: bold;
            color: #000;
        }

        .header h3 {
            font-size: 1.2rem;
            font-weight: normal;
            color: #ff0000;
        }

        .core-values {
            display: flex;
            justify-content: center;
            margin: 40px 0;
        }

        .core-value {
            margin: 0 15px;
            font-size: 1.5rem;
            color: #ffffff;
            background-color: #00a1e0;
            border-radius: 50%;
            width: 100px;
            height: 100px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .strategy {
            text-align: left;
            margin-top: 40px;
        }

        .strategy h4 {
            font-size: 1.2rem;
            margin-bottom: 10px;
            color: #000;
        }
        
        .strategy img {
        	width:30px;
        }

        .row {
            display: flex;
            align-items: center;
            padding: 20px 0;
            border-bottom: 1px solid #e6e6e6;
        }

        .row:last-child {
            border-bottom: none;
        }

        .icon {
            width: 80px;
            height: 80px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: 30px;
        }

        .icon img {
            width: 90px;
            height: 90px;
        }

        .text {
            flex-grow: 1;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
        }

        .text h3 {
            margin: 0;
            font-size: 1.5rem;
            font-weight: bold;
            color: #004a8f;
        }

        .text ul {
            margin: 10px 0 0;
            padding-left: 0;
            list-style: none;
        }

        .text ul li {
            font-size: 1rem;
            color: #333;
            line-height: 1.5;
        }

        /* Additional Styles for WORK RULES Section */
        .layout_section_outer .layout_head .top_txt1 {
            font-size: 40px;
            line-height: 56px;
            letter-spacing: -0.2px;
            font-weight: 700;
        }

        .layout_section_outer h3, .layout_section_outer h4 {
            font-weight: 400;
        }

        .work_rules .work_outer {
            padding: 0 20px;
            background-color: #f7f7f7;
            border-radius: 18px;
            text-align: center;
        }

        .work_slider {
            display: flex;
        }

        .common-layout_4 > .items {
            width: calc(100% / 4 - 30px);
            margin-left: 40px;
        }

        .common-layout_4 > .items:first-child {
            margin-left: 0;
        }

        .swiper-slide {
            flex-shrink: 0;
            width: 100%;
            height: 100%;
            position: relative;
            transition: transform 0.3s;
        }
    </style>
</head>
<body>
	<section>
		<div class="text-mid title">
			<h1>비전</h1>
		</div>
	    <div class="container">
	    	<img alt="" src="/img/companyView.png">
	        <div class="header">
	            <h1>고객과 함께 성장하는 신뢰의 IT 파트너</h1>
	            <h2>"검증된 전문성과 혁신으로 미래를 선도하는 IT 전문기업" Vision 2025</h2>
	            <h3>신뢰성 있는 디지털 정부, 고객과 함께, 900억원의 성과를 넘어…</h3>
	            <p>"이미 검증된 기술력과 성과로 한계에 맞서, 보다 넓은 시장으로 나아가며 새로운 가치를 창출합니다."</p>
	            <p>
	                우리의 SI(시스템 통합) 서비스는 고객의 비즈니스 요구에 맞춘 맞춤형 솔루션을 제공하고 있으며, 
	                시스템 성능의 효율성과 경쟁력을 극대화하고 있습니다. SI시스템과 SM(시스템 관리)과의 협업으로 
	                시스템의 안정과 신뢰할 수 있는 IT 환경을 구축하며, 지속적인 유지보수로 고객의 운영을 지원하고 있습니다. 
	                또한, 우리의 전문 컨설팅 서비스로 최신 트렌드와 기술을 반영하여 최적의 비즈니스 전략을 제시하고 있으며, 
	                변화하는 사회의 최적의 기술력으로 서비스하고 있습니다.
	            </p>
	        </div>
	
	        <div class="core-values">
	            <div class="core-value">역량</div>
	            <div class="core-value">협력</div>
	            <div class="core-value">미래</div>
	        </div>
	        
	        <div class="strategy">
	            <h4><img src="/img/vision/building_icon.png" alt="성장 아이콘"> 1. 검증된 IT 사업의 지속적 확장과 강화</h4>
	            <h4><img src="/img/vision/building_icon.png" alt="혁신 아이콘"> 2. 혁신적 기술 도입을 통한 신규 서비스 창출</h4>
	            <h4><img src="/img/vision/building_icon.png" alt="가치 아이콘"> 3. 지속 가능한 성장과 가치 극대화</h4>
	        </div>
	    </div>
	    
	    <div class="container">
	        <div class="row">
	            <div class="icon">
	                <img src="/img/vision/visionIcon1.png" alt="Global Leader Icon">
	            </div>
	            <div class="text">
	                <h3>글로벌 전자정부 솔루션 비지니스 리더</h3>
	                <ul>
	                    <li>IT Consulting</li>
	                    <li>해외사업</li>
	                    <li>의료/빅데이터 사업</li>
	                    <li>SI(System Integration) 사업</li>
	                    <li>SM(System Maintenance) 사업</li>
	                </ul>
	            </div>
	        </div>
	
	        <div class="row">
	            <div class="icon">
	                <img src="/img/vision/visionIcon2.png" alt="IT Leader Icon">
	            </div>
	            <div class="text">
	                <h3>국내 IT 기업문화 리더</h3>
	                <ul>
	                    <li>성공적 혁신 운영 사례</li>
	                    <li>IT기업 성장의 선도적 사례 제시</li>
	                    <li>IT기업의 글로벌 성장 비전 제시</li>
	                </ul>
	            </div>
	        </div>
	
	        <div class="row">
	            <div class="icon">
	                <img src="/img/vision/visionIcon3.png" alt="Company Value Icon">
	            </div>
	            <div class="text">
	                <h3>회사 가치</h3>
	                <ul>
	                    <li>900억원대 가치</li>
	                    <li>IT 기업의 성공적 사례</li>
	                    <li>행정중심도시 주요 기업</li>
	                    <li>최적의 직원 복지문화 기업</li>
	                </ul>
	            </div>
	        </div>
	
	        <div class="row">
	            <div class="icon">
	                <img src="/img/vision/visionIcon4.png" alt="Growth Target Icon">
	            </div>
	            <div class="text">
	                <h3>매출목표</h3>
	                <ul>
	                    <li>매출 : 1000억원</li>
	                </ul>
	            </div>
	        </div>
	    </div>
	</section>
</body>
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</html>
