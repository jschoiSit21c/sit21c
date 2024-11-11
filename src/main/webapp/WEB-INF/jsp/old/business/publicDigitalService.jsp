<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
<head>
    <meta charset="UTF-8">
    <title>소프트아이텍 - 공공 디지털 서비스</title>
    <style>
        * {
            box-sizing: border-box;
        }
        body {
            line-height: 1.6;
            margin: 0;
            padding: 0;
        }
        section {
            max-width: 1200px;
            margin-left: auto;
            margin-right: auto;
            padding: 20px;
        }
        h1 {
		    display: inline-block;
		    font-size: 1.5em;
		    color: #333;
		    border-bottom: 2px solid #F0F0F0;
		    margin-bottom: 10px;
		}
        h1, h2, h3, h4, h5, h6 {
            font-weight: bold;
        }
        .subtitle {
            font-size: 0.9em;
            color: #666;
        }
        .highlight {
            color: #1a5f7a;
        }
        .back-black {
            position: relative;
            color: #fff;
            background: #000;
            padding: 20px 0;
        }
        .experience-expertise-img {
            background-image: url(/img/business/공공디지털.jpg);
            background-repeat: no-repeat;
            background-position: center center;
            position: absolute;
            left: 0;
            top: 0;
            right: 0;
            bottom: 0;
            background-size: cover;
            opacity: .5;
            z-index: 0;
        }
        .experience-expertise {
            position: relative;
            z-index: 1;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            color: #fff;
            padding: 20px;
            margin: 20px 0;
        }
        .experience-expertise div {
            text-align: center;
            width: 45%;
            margin-bottom: 20px;
        }
        .experience-expertise h2 {
            font-size: 2.5em;
            margin: 0;
            color: #fff;
        }
        .services {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            margin-top: 20px;
        }
        .service {
            width: 100%;
            margin-bottom: 20px;
        }
        .service h3 {
            font-size: 1.8em;
            color: #0056b3;
        }
        .service ul {
            list-style-type: none;
            padding: 0;
        }
        .service li {
            margin-bottom: 10px;
        }
        .features {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            margin-top: 20px;
        }
        .feature {
            width: 100%;
            background-color: #f0f0f0;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 5px;
        }
        img {
            display: inline-block;
            max-width: 100%;
            height: auto;
        }
        div {
            text-align: center;
        }
        .bold {
            font-weight: 600;
        }
        .important {
            color: rgb(79 107 187);
        }

        /* 반응형 스타일 */
        @media screen and (min-width: 768px) {
            .service {
                width: 48%;
            }
            .feature {
                width: 48%;
            }
        }

        @media screen and (max-width: 480px) {
            .experience-expertise div {
                width: 100%;
            }
            h1, h2 {
                font-size: 1.2em;
            }
            .experience-expertise h2 {
                font-size: 2em;
            }
        }
    </style>
</head>
<body>
    <section>
    	<div class="text-mid title">
	        <h1>공공 디지털 서비스</h1>
	        <p class="subtitle">소프트아이텍은 공정보화시스템의 설계, 구축부터 운영·유지보수까지<br>
	        전 과정에서 고객이 만족할 수 있는 최상의 서비스를 제공하는 것을 목표로 합니다.</p>
	        <p class="highlight">우리의 경험과 전문성을 바탕으로 정부 및 공공기관의 디지털 전환을 성공적으로 지원하겠습니다.</p>
        </div>
        <div class="back-black">
            <div class="experience-expertise-img"></div>
            <div class="experience-expertise">
                <div>
                    <h3>Experience</h3>
                    <h2>20 + years</h2>
                </div>
                <div>
                    <h3>Expertise</h3>
                    <h2>200 + experts</h2>
                </div>
            </div>
        </div>

        <div class="services">
            <div class="service">
                <h3>SI <small>System Integration</small></h3>
                <p class="bold">공공 부문의 특수성을 고려한<br><span class="important">맞춤형 솔루션 제공</span></p>
            </div>
            <div class="service">
                <h3>SM <small>System Management</small></h3>
                <p class="bold">체계적인 관리와 신속한 대응으로<br><span class="important">시스템의 지속적 안정성 보장</span></p>
            </div>
        </div>

        <div class="features">
            <div class="feature">
                <h4>전문성</h4>
                <p>다수의 공공 프로젝트 경험을 통해 축적된 노하우와 기술력을 바탕으로 안정적인 서비스 제공</p>
            </div>
            <div class="feature">
                <h4>신속대응</h4>
                <p>24시간 365일 실시간 모니터링과 긴밀 체계를 통해 문제 발생 시 빠른 대응이 가능</p>
            </div>
            <div class="feature">
                <h4>맞춤형 솔루션</h4>
                <p>고객의 필요에 맞춤화된 시스템 제공</p>
            </div>
            <div class="feature">
                <h4>안정성</h4>
                <p>지속적인 시스템 개선과 관리를 통해 장애 발생 가능성 최소화</p>
            </div>
            <div class="feature">
                <h4>유지보수 용이성</h4>
                <p>시스템 확장 및 유지보수를 고려한 유연한 설계 지향</p>
            </div>
            <div class="feature">
                <h4>비용 효율성</h4>
                <p>고객의 예산에 맞춘 최적의 유지보수 계획 제안</p>
            </div>
        </div>
    </section>
</body>
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</html>