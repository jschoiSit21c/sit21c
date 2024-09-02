<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="/css/business/ictInfraService.css" type="text/css">
	<title>소프트아이텍 - ICT 인프라서비스</title>
    <style>
        section {
            max-width: 800px;
		    margin-left: auto;
		    margin-right: auto;
        }
        .container {
            width: 80%;
            margin: 0 auto;
        }
		h1, h2 {
            color: #0056b3;
            font-size: 1.5em;
        }
		h1, h2, h3, h4, h5, h6 {
            font-weight: bold;
        }
        ul {
		    list-style-type: disc;
		}
        .subtitle {
            font-size: 1.2em;
            margin-bottom: 20px;
        }
        
        .services {
            display: flex;
            justify-content: space-between;
            margin-top: 30px;
        }
        .service-item {
            text-align: center;
            width: 30%;
        }
        .service-icon {
            width: 130px;
            height: 130px;
            margin: 0 auto 15px;
            position: relative;
            overflow: hidden;
        }
        .service-icon img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            border-radius: 50%;
        }
        .service-icon-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .service-icon-text {
            color: white;
            font-weight: bold;
            text-align: center;
        }
        .service-list {
            text-align: left;
            padding-left: 20px;
        }
        .additional-info {
            margin-top: 30px;
        }
        .info-item {
            margin-bottom: 15px;
        }
        .info-item strong {
            color: #0056b3;
        }
    </style>
</head>
<body>
	<section>
	    <div class="container">
        <h1>ICT 인프라 서비스</h1>
        <p class="subtitle">맞춤형 IT인프라 솔루션 및 하드웨어의 공급부터 설치까지<br>최적의 IT 환경을 구축해드립니다</p>
        <p>고객의 비즈니스를 효과적으로 지원하기 위해 그룹 IT Infra를 통합 운영 하고 있으며 조직, 프로세스, 시스템을<br>유기적으로 연계하여 운영 효율성 향상 및 안정적인 IT서비스를 제공합니다.</p>
        
        <div class="services">
            <div class="service-item">
                <div class="service-icon">
                    <img src="/img/business/인프라_1.jpg" alt="안정적 인프라 운영">
                    <div class="service-icon-overlay">
                        <div class="service-icon-text">안정적<br>인프라 운영</div>
                    </div>
                </div>
                <ul class="service-list">
                    <li>통합 인프라 운영 관리</li>
                    <li>재해복구센터 구축 및 운영</li>
                    <li>신기술 분석 및 적용 검토</li>
                    <li>네트워크 솔루션 및 인프라관리·운영</li>
                    <li>IT 아키텍처 설계</li>
                </ul>
            </div>
            <div class="service-item">
                <div class="service-icon">
                    <img src="/img/business/인프라_2.jpg" alt="인프라 최적화">
                    <div class="service-icon-overlay">
                        <div class="service-icon-text">인프라<br>최적화</div>
                    </div>
                </div>
                <ul class="service-list">
                    <li>IT 인프라 시스템 자원관리</li>
                    <li>인프라 통합/성능 관리 및 최적화</li>
                    <li>보안 취약성 점검 및 개선</li>
                    <li>신규 프로젝트 구축</li>
                    <li>IT 서비스 적용 및 딜리버리</li>
                </ul>
            </div>
            <div class="service-item">
                <div class="service-icon">
                    <img src="/img/business/인프라_3.jpg" alt="24 X 365 통합관제">
                    <div class="service-icon-overlay">
                        <div class="service-icon-text">24 X 365<br>통합관제</div>
                    </div>
                </div>
                <ul class="service-list">
                    <li>24시간 365일 통합관제 운영</li>
                    <li>통합 백업 라이브러리 시스템 운영</li>
                    <li>백신 작업 스케줄 관리</li>
                    <li>프로그램 형상관리</li>
                </ul>
            </div>
        </div>
        
        <div class="additional-info">
            <div class="info-item">
                <strong>설계/컨설팅</strong>
                <p>현재의 네트워크 또는 필요로 하는 네트워크에 대해 진단하고 다양한 유무선 통합 네트워크를 설계하여 최적의 네트워크를 제안합니다.</p>
            </div>
            <div class="info-item">
                <strong>장비 공급</strong>
                <p>데이터센터 등에 최고의 네트워크 제품들로 네트워크 기반 인프라 장비들을 공급/구축합니다.</p>
            </div>
            <div class="info-item">
                <strong>솔루션 시스템구축</strong>
                <p>고객의 요구와 상황에 맞는 최고의 솔루션들을 선정하여 최적의 네트워크 시스템을 구축합니다. 데이터 센터 등 전국규모의 네트워크시스템도 구성합니다.</p>
            </div>
            <div class="info-item">
                <strong>유지관리</strong>
                <p>통합된 유지관리 경험과 통합상황관리 등의 시스템을 통해 네트워크를 최적의 상태로 관리합니다.</p>
            </div>
        </div>
    </div>
    </section>
	<!-- <section>
	    <div class="infraService-image-container">
	        <img src="/img/Sit_ICT_InfraService1_.png" alt="소프트아이텍 CI">
	    </div>
	</section> -->
</body>
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</html>