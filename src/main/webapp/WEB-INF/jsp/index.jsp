<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
<head>
<<<<<<< HEAD
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
=======
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/layout.css" type="text/css">
<!-- 메뉴링크 -->	
<script type="text/javascript" src="/js/m_menu.js"></script>
<!-- //메뉴링크 -->
<!-- 팝업jq  -->	
<script type="text/javascript" src="/js/jquery-1.7.js" ></script>
<!-- //팝업jq  -->		
<script type="text/javascript" src="/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="/js/jquery.bxslider.min.js"></script>
<!-- 팝업jq+style  -->	
<script type="text/javascript" src="/js/jquery.bpopup.min.js"></script>
<style type="text/css">
	.Mpop_style { display:none;  position:relative;  width:0 auto; margin-top:60px; padding:20px; text-align:left;  }
	.b-close2 { color:#3784dc; position :absolute; right:0; top:0; padding:0px;  display:inline-block; cursor:pointer;}
	* { box-sizing: content-box !important; }
	        /* 히어로 섹션 */
        .hero {
            background-image: url('/img/mv03.jpg');
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #FFF;
            text-align: center;
        }

        .hero h1 {
            font-size: 48px;
            margin-bottom: 20px;
        }

        .hero p {
            font-size: 24px;
            margin-bottom: 40px;
        }

        .hero a {
            display: inline-block;
            padding: 15px 30px;
            background-color: #FFA500;
            color: #FFF;
            text-decoration: none;
            font-weight: bold;
            border-radius: 5px;
        }

        .hero a:hover {
            background-color: #FF8C00;
        }

        /* 서비스 섹션 */
        .services {
            background-color: #F7FAFC;
            padding: 60px 20px;
            text-align: center;
        }

        .services h2 {
            font-size: 36px;
            margin-bottom: 40px;
        }

        .services .cards {
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        .services .card {
            background-color: #FFFFFF;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            padding: 20px;
            width: 300px;
        }

        .services .card img {
            width: 100%;
            margin-bottom: 20px;
        }

        .services .card h3 {
            font-size: 24px;
            margin-bottom: 10px;
        }

        .services .card p {
            font-size: 16px;
            margin-bottom: 20px;
        }

        .services .card a {
            display: inline-block;
            padding: 10px 20px;
            background-color: #1F2937;
            color: #FFF;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
        }

        .services .card a:hover {
            background-color: #333;
        }

        /* 비전 섹션 */
        .vision {
            background-image: url('/img/companyView.png');
            background-size: cover;
            background-position: center;
            padding: 100px 20px;
            color: #000;
            text-align: center;
        }

        .vision h2 {
            font-size: 36px;
            margin-bottom: 20px;
        }

        .vision p {
            font-size: 20px;
            max-width: 800px;
            margin: 0 auto;
        }
        
        /* 홍보 & 채용 정보 섹션 */
.promotion {
    background-color: #F7FAFC;
    padding: 60px 20px;
    text-align: center;
}

.promotion h2 {
    font-size: 36px;
    margin-bottom: 40px;
}

.promotion .cards {
    display: flex;
    justify-content: center;
    gap: 20px;
}

.promotion .card {
    background-color: #FFFFFF;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    padding: 20px;
    width: 300px;
    text-align: center;
}

.promotion .card img {
    width: 100%;
    margin-bottom: 20px;
    border-radius: 10px;
}

.promotion .card h3 {
    font-size: 24px;
    margin-bottom: 10px;
}

.promotion .card p {
    font-size: 16px;
    margin-bottom: 20px;
}

.promotion .card a {
    display: inline-block;
    padding: 10px 20px;
    background-color: #1F2937;
    color: #FFF;
    text-decoration: none;
    border-radius: 5px;
    font-weight: bold;
}

.promotion .card a:hover {
    background-color: #333;
}

/* YouTube 비디오 컨테이너 */
.video-container {
    position: relative;
    width: 100%;
    padding-bottom: 56.25%; /* 16:9 비율을 유지하기 위한 패딩 */
    height: 0;
    overflow: hidden;
    border-radius: 10px; /* 카드의 나머지 부분과 일치하는 둥근 모서리 */
}

.video-container iframe {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    border: 0;
    border-radius: 10px; /* 모서리 반경을 iframe에 적용 */
}
</style>
<script type="text/javascript">
function goPopup() {
   $("#popup").bPopup(); // 열기
   //$("#popup").bPopup().close(); // 닫기
};
</script>
<!-- //팝업jq+style  -->	
<!--top 바로가기 스크립트-->	
<script>
	$(function() {
  $(window).scroll(function() {
    if ($(this).scrollTop() > 250) {
      $('#topBtn').fadeIn();
    } else {
      $('#topBtn').fadeOut();
    }
  });
>>>>>>> branch 'main' of https://github.com/jschoiSit21c/sit21c.git

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
<<<<<<< HEAD
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
=======
    <!-- 히어로 섹션 -->
    <section class="hero">
        <div>
<!--             <h1>혁신적인 IT 솔루션</h1> -->
<!--             <p>미래를 선도하는 IT 서비스를 제공합니다</p> -->
            <a href="#services">더 알아보기</a>
        </div>
    </section>

    <!-- 서비스 섹션 -->
    <section id="services" class="services">
        <h2>우리가 제공하는 서비스</h2>
        <div class="cards">
            <div class="card">
                <img src="/img/m_si_img.png" alt="System Integration">
                <h3>시스템 통합</h3>
                <p>공공기관 및 다양한 기업 환경에 맞춘 최적의 IT 시스템을 제공합니다.</p>
                <a href="/business/publicDigitalService">더 알아보기</a>
            </div>
            <div class="card">
                <img src="/img/m_sm_img.png" alt="ICT Infra Service">
                <h3>ICT 인프라 서비스</h3>
                <p>전문적인 아웃소싱 서비스를 통해 정보시스템의 효율적 활용을 돕습니다.</p>
                <a href="/business/ictInfraService">더 알아보기</a>
            </div>
            <div class="card">
                <img src="/img/m_it_img.png" alt="IT Consulting">
                <h3>IT 컨설팅</h3>
                <p>정보화 전략 및 비즈니스 전략 수립을 위한 최적의 컨설팅 서비스를 제공합니다.</p>
                <a href="/business/itConsultingService">더 알아보기</a>
            </div>
        </div>
    </section>

    <!-- 비전 섹션 -->
    <section id="vision" class="vision">
        <h2>우리의 비전</h2>
        <p>ICMS (Innovation, Creative, Man, Social)를 통해 지역사회 초 일류기업으로 성장하는 것이 우리의 비전입니다.</p>
    </section>
    
	<!-- 홍보 & 채용 정보 섹션 -->
	<section id="promotion" class="promotion">
	    <h2>About &amp; 채용 정보</h2>
	    <div class="cards">
	        <div class="card">
	                <div class="video-container">
				        <iframe 
				            src="https://www.youtube.com/embed/I8MbDbxxmOs" 
				            frameborder="0"
				            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				            allowfullscreen>
				        </iframe>
				    </div>
	            <h3>소프트아이텍 About</h3>
	            <p>소프트아이텍의 회사 정보를 확인하세요.</p>
	            <a href="/company/aboutSIT">자세히 보기</a>
	        </div>
	        <div class="card">
	            <img src="/img/bsh_img.png" alt="브로슈어">
	            <h3>브로슈어</h3>
	            <p>우리가 제공하는 서비스에 대한 자세한 정보를 확인하세요.</p>
	            <a href="/pr/ci">자세히 보기</a>
	        </div>
	        <div class="card">
	            <img src="/img/recru_bg.png" alt="채용 정보">
	            <h3>채용 정보</h3>
	            <p>소프트아이텍과 함께할 인재를 모집합니다.</p>
	            <a href="/recruit/recruitmentInformation">자세히 보기</a>
	        </div>
	    </div>
	</section>
>>>>>>> branch 'main' of https://github.com/jschoiSit21c/sit21c.git
</body>
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</html>