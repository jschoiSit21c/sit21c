<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="/css/layout.css" type="text/css">
    <title>소프트아이텍</title>
    <style>
        :root {
            --dark-blue: rgb(51, 80, 161);
            --light-blue: rgb(152, 167, 207);
            --light-gray: rgb(250, 251, 252);
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        html {
            scroll-behavior: smooth;
        }
        
        body {
            background-color: var(--light-gray);
            color: #333;
            line-height: 1.6;
        }
        
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
            position: relative;
            z-index: 2;
        }

        h1, h2, h3, h4, h5, h6 {
            font-weight: bold;
        }
        
        .brand {
            text-align: center;
            padding: 20px 0;
            background-color: rgba(255, 255, 255, 0.9);
            position: relative;
            z-index: 3;
        }
        
        .brand-logo {
            font-size: 24px;
            font-weight: bold;
            color: var(--dark-blue);
        }
        
        .hero {
            position: relative;
            color: white;
            text-align: center;
            padding: 150px 0;
            overflow: hidden;
        }
        
        .hero-video {
            position: absolute;
            top: 50%;
            left: 50%;
            min-width: 100%;
            min-height: 100%;
            width: auto;
            height: auto;
            transform: translateX(-50%) translateY(-50%);
            z-index: 0;
        }
        
        .hero-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: 1;
        }
        
        .hero-content {
            position: relative;
            z-index: 2;
        }
        
        .hero h1 {
            font-size: 3em;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }
        
        .hero p {
            font-size: 1.2em;
            margin-bottom: 30px;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
        }
        
        .cta-button {
            display: inline-block;
            background-color: var(--dark-blue);
            color: white;
            padding: 12px 30px;
            border-radius: 30px;
            text-decoration: none;
            font-weight: bold;
            transition: transform 0.3s ease, box-shadow 0.3s ease, background-color 0.3s ease;
        }
        
        .cta-button:hover, .cta-button:focus {
            transform: translateY(-3px);
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            background-color: var(--light-blue);
            outline: none;
        }
        
        .section {
            padding: 80px 0;
        }
        
        .section:nth-child(even) {
            background-color: white;
        }
        
        .section h2 {
            text-align: center;
            margin-bottom: 40px;
            color: var(--dark-blue);
        }
        
        .feature-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 40px;
        }
        
        .feature-item {
            text-align: center;
            padding: 20px;
            border-radius: 10px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            background-color: white;
        }
        
        .feature-item:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }
        
        .feature-item img {
        	width: 100%
        }
        
        .icon-title {
        	font-size: 20px;
        }
        
        .feature-icon {
            font-size: 48px;
            color: var(--dark-blue);
            margin-bottom: 20px;
        }
        
        .service-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 30px;
            margin-top: 40px;
        }
        
        .service-item {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            text-align: center;
            transition: transform 0.3s ease;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        
        .service-item:hover {
            transform: scale(1.05);
        }
        
        .service-icon {
            font-size: 36px;
            color: var(--dark-blue);
            margin-bottom: 15px;
        }
        
		.news-container {
		    display: flex;
		    justify-content: space-between;
		    gap: 30px;
		    margin-top: 40px;
		}
		
		.news-item {
		    flex: 1;
		    background-color: white;
		    border-radius: 10px;
		    overflow: hidden;
		    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
		    position: relative;
		    width: calc(33.333% - 20px);
		    min-width: 250px;
		    display: flex;
		    flex-direction: column;
		}
		
		.news-img {
		    width: 100%;
		    padding-top: 56.25%; /* 16:9 Aspect Ratio */
		    background-repeat: no-repeat;
		    background-position: center center;
		    background-size: cover;
		    border-radius: 10px 10px 0 0;
		}
		
		.news-item h4 {
		    padding: 15px;
		    margin: 0;
		    text-align: center;
		    background-color: white;
		    flex-grow: 1;
		    display: flex;
		    align-items: center;
		    justify-content: center;
		}
		
        @media (max-width: 768px) {
            .hero h1 {
                font-size: 2em;
            }
            
		    .news-container {
		        flex-direction: column;
		    }
		    
		    .news-item {
		        width: 100%;
		        margin-bottom: 20px;
		    }
            
            .hero {
                background: linear-gradient(45deg, var(--dark-blue), var(--light-blue));
            }
        }
    </style>
</head>
<body>
    <main>
        <section class="hero">
            <video class="hero-video" autoplay loop muted playsinline>
                <source src="/img/recruit/sitMainRow.mp4" type="video/mp4">
                Your browser does not support the video tag.
            </video>
            <div class="hero-overlay"></div>
            <div class="container hero-content">
                <h1>소프트아이텍</h1>
                <h3>With cutting-edge technology and unwavering trust, we empower your future.</h3>
                <p>최첨단 기술과 혁신으로 당신의 비전을 실현합니다.</p>
                <a href="#benefits" class="cta-button">더 알아보기</a>
            </div>
        </section>

        <section id="benefits" class="section">
            <div class="container">
                <h2>소프트아이텍의 다양한 사업분야</h2>
                <div class="feature-grid">
                    <div class="feature-item">
                    	<a href="/business/publicDigitalService">
	                        <div class="feature-icon"><img alt="SI" src="/img/m_si_img.png"></div>
	                        <h3>System Integration</h3>
	                        <p>국내 주요 공공기관 및 지자체, 기업 등 다양한 업무환경의 요구에 맞는 최적의 IT시스템을 진단, 설계, 구축, 통합하여 최상의 서비스를 제공합니다.</p>
                        </a>
                    </div>
                    <div class="feature-item">
                    	<a href="/business/ictInfraService">
	                        <div class="feature-icon"><img alt="SM" src="/img/m_sm_img.png"></div>
	                        <h3>ICT Infra Service</h3>
	                        <p>고객 요구에 맞는 전문적인 아웃소싱 서비스를 제공받아 정보시스템을 효율적으로 활용할 수 있습니다.</p>
                        </a>
                    </div>
                    <div class="feature-item">
                    	<a href="/business/itConsultingService">
	                        <div class="feature-icon"><img alt="IT" src="/img/m_it_img.png"></div>
	                        <h3>I · T Consulting</h3>
	                        <p>정보화 전략수립(ISP), 정보시스템 현황 조사, 비즈니스 전략 수립, 프로세스 혁신 등 축적된 노하우와 컨설팅 역량을 바탕으로 최적의 정보시스템을 제공합니다.</p>
                        </a>
                    </div>
                </div>
            </div>
        </section>

        <section class="section">
            <div class="container">
                <h2>소프트아이텍에 대하여</h2>
                <div class="service-grid">
                    <div class="service-item">
	                    <a href="/company/aboutSIT">
	                        <div class="service-icon">🔍</div>
	                        <h4>About</h4>
	                    </a>
                    </div>
                    <div class="service-item">
	                    <a href="/company/ceo">
	                        <div class="service-icon">λ</div>
	                        <h4>CEO 메시지</h4>
	                    </a>
                    </div>
                    <div class="service-item">
	                    <a href="/company/vision">
	                        <div class="service-icon">💻</div>
	                        <h4>비전</h4>
	                    </a>
                    </div>
                    <div class="service-item">
	                    <a href="/company/history">
	                        <div class="service-icon">🗄️</div>
	                        <h4>연혁</h4>
	                    </a>
                    </div>
                    <div class="service-item">
	                    <a href="/company/location">
	                        <div class="service-icon">🌐</div>
	                        <h4>오시는길</h4>
	                    </a>
                    </div>
                </div>
            </div>
        </section>

        <section class="section">
            <div class="container">
                <h2>소프트아이텍 관련 소식</h2>
                <div class="news-container">
                    <div class="news-item">
					    <div class="news-img" style="background-image: url('/img/news1.png');"></div>
					    <h4>소프트아이텍, 국가암데이터센터 운영시스템 관리용역 사업 수주</h4>
					</div>
                    <div class="news-item">
					    <div class="news-img" style="background-image: url('/img/news2.png');"></div>
					    <h4>소프트아이텍-에이팩, ‘헴프 분야 스마트 농업 기술 구축’ MOU</h4>
                    </div>
                    <div class="news-item">
					    <div class="news-img" style="background-image: url('/img/news3.png');"></div>
					    <h4>[인사] 소프트아이텍, 2024년 임원 승진</h4>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <script>
    document.addEventListener('DOMContentLoaded', (event) => {
        const ctaButton = document.querySelector('.cta-button');
        
        ctaButton.addEventListener('click', function(e) {
            e.preventDefault();
            const targetId = this.getAttribute('href');
            const targetElement = document.querySelector(targetId);
            
            if (targetElement) {
                targetElement.scrollIntoView({
                    behavior: 'smooth',
                    block: 'start'
                });
            }
        });
    });
    </script>
</body>
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</html>