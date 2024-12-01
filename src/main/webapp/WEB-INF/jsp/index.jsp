<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=1280">
    <title>소프트아이텍</title>
	<link rel="stylesheet" href="/css/style.css">
	<link rel="stylesheet" href="/css/layout.css">
	<script src="/js/script.js" defer></script>
	<style>
		
		#background-video {
		    position: absolute;
		    top: 50%;
		    left: 50%;
		    min-width: 100%;
		    min-height: 100%;
		    width: auto;
		    height: auto;
		    transform: translate(-50%, -50%);
		    object-fit: cover;
		    z-index: -1;
		}
	</style>
	<script>
	// 오시는길 함수
	function showMap(location) {
		const mapIframe = document.getElementById('map-iframe');
		const address = document.getElementById('address');
		const daejeonLink = document.getElementById('daejeon-link');
		const daeguLink = document.getElementById('daegu-link');

		// 기본 색상을 검정으로 설정하고, 선택한 항목에 active 클래스 추가
		daejeonLink.classList.remove('active');
		daeguLink.classList.remove('active');

		if (location === 'daejeon') {
			mapIframe.src = "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5031.031732894268!2d127.33242245211333!3d36.37231037906764!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35654966d0422a7b%3A0xec8d9475c42513cb!2z7IaM7ZSE7Yq47JWE7J207YWN!5e0!3m2!1sko!2skr!4v1544963342159";
			address.textContent = '대전광역시 유성구 죽동로 69 (죽동, 소프트아이텍빌딩)';
			daejeonLink.classList.add('active');
		} else if (location === 'daegu') {
			mapIframe.src = "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3233.0112822331384!2d128.5931877756437!3d35.87324037252595!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3565e3db6661fd31%3A0xf69e34dd6d6de201!2z64yA6rWs6rSR7Jet7IucIOykkeq1rCDrj5nshLHroZwx6rCA!5e0!3m2!1sko!2skr!4v1733044306434!5m2!1sko!2skr";
			address.textContent = '대구광역시 중구 동성로 1가 123 (대구, 소프트아이텍지사)';
			daeguLink.classList.add('active');
		}
	}
	
	</script>
</head>
<body id="index-container">
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/jsp/admin/popUpUser.jsp"></jsp:include>


   	<!-- //전체 콘텐츠 -->
    <main>
		<!-- main visual -->
		<section id="section1" class="section">
			<div id="background-container">
				<video autoplay muted playsinline id="background-video">
			        <source src="/img/sitMainRowShort.mp4" type="video/mp4">
			    </video>
				<img src="/img/mv01.png" alt="배경 이미지 1" class="background-image">
				<img src="/img/mv02.png" alt="배경 이미지 2" class="background-image">
			</div>
			<div class="hero-section">
				<div class="hero-text hero-text-1">
					<h2>공공의복리증진을위한</h2>
					<h1>PublicDigital ServiceProvider</h1>
					<p>한계에맞서, 보다넓은시장으로새로운가치와영역확대합니다.</p>
				</div>
				<div class="hero-text hero-text-2">
					<h2>혁신과 신뢰를 바탕으로 하는 IT 파트너</h2>
					<p>우리는 최고의 솔루션을 제공합니다<br>미래를 함께 만들어가는 믿음의 동반자</p>
					<h1>미래를 창조하는 기술력,<br>성장을 이끄는 열정</h1>
				</div>
			</div>
		</section>
		<!--// main visual -->
		
		<!-- Business -->
		<section id="business" class="section">
			<div class="content">
				<h2>Business</h2>
				<p>더 나은 미래를 위한 우리의 기술 컨설팅부터 운영,<br>플랫폼에서 디지털 전환까지 토털 IT 서비스를 제공합니다.</p>

				<div class="service-tabs">
					<div class="tab active" onclick="showImage(1)">01 공공디지털서비스</div>
					<div class="tab" onclick="showImage(2)">02 ICT 인프라서비스</div>
					<div class="tab" onclick="showImage(3)">03 IT 컨설팅서비스</div>
				</div>
			</div>

			<div class="service-image-layer">
				<div id="image1" class="service-image active">
					<img src="/img/m_bg01.png" alt="공공디지털서비스">
					<div class="text-overlay">
						<h3>공공디지털서비스</h3>
						<p>소프트아이텍은 정보화시스템의 설계, 구축부터 운영·유지보수까지 전 과정에서 고객이 만족할 수 있는 최상의 서비스를 제공합니다.</p>
						<a href="#" class="details-link">자세히보기</a>
					</div>
				</div>
				<div id="image2" class="service-image">
					<img src="/img/m_bg02.png" alt="ICT 인프라서비스">
					<div class="text-overlay">
					<h3>ICT 인프라서비스</h3>
					<p>ICT 인프라 서비스는 최신 기술을 기반으로 안정적이고 효율적인 IT 환경을 구축합니다.</p>
					<a href="#" class="details-link">자세히보기</a>
                    </div>
				</div>
				<div id="image3" class="service-image">
					<img src="/img/m_bg03.png" alt="IT 컨설팅서비스">
					<div class="text-overlay">  
					<h3>IT 컨설팅서비스</h3>
					<p>IT 환경 분석, 시스템 아키텍처 설계, 프로세스 개선 등을 통해 고객의 경쟁력을 강화합니다.</p>
					<a href="#" class="details-link">자세히보기</a>
                    </div> 
				</div>
			</div>
		</section>
		<!-- //Business -->
		
		<!-- company -->
		<section id="company" class="section">
			<div class="heading">
				<h2><span>Company</span></h2>
				<p class="subtitle">지속적인 연구 개발을 통해 발전된 기술을 선보이며 고객사와 <br>함께 성장해 밝은 미래를 열어갑니다.</p>
			</div>
            <div class="stats-container">
                <div class="stat-box s3bg1">
                    <img src="/img/ico_info01.png" alt="기술업적 아이콘" class="stat-icon">
                    <div class="stat-number">11</div>
                    <div class="stat-label">기술업적</div>
                </div>
                <div class="stat-box s3bg2">
                    <img src="/img/ico_info02.png" alt="고객사 아이콘" class="stat-icon">
                    <div class="stat-number">31</div>
                    <div class="stat-label">고객사</div>
                </div>
                <div class="stat-box s3bg3">
                    <img src="/img/ico_info03.png" alt="구축레퍼런스 아이콘" class="stat-icon">
                    <div class="stat-number">100</div>
                    <div class="stat-label">구축레퍼런스</div>
                </div>
                <div class="stat-box s3bg4">
                    <img src="/img/ico_info04.png" alt="연매출 아이콘" class="stat-icon">
                    <div class="stat-number">800억</div>
                    <div class="stat-label">연매출</div>
                </div>
                <div class="stat-box s3bg5">
                    <img src="/img/ico_info05.png" alt="직원현황 아이콘" class="stat-icon">
                    <div class="stat-number">300명</div>
                    <div class="stat-label">직원현황</div>
                </div>
            </div>
		</section>
		<!-- //company -->
		
		<!-- With Us -->
		<section id="widthus" class="section">
			<div class="heading">
				<h2><span>With Us</span></h2>
				<p class="subtitle">소프트아이텍은 파트너와 함께 성장할 수 있는 건강한 <br>생태계를 만들어 갑니다. </p>
			</div>
            <div class="banner-container">
                <img src="/img/m_banner01.png" alt="파트너 배너 1" class="banner-image">
                <img src="/img/m_banner02.png" alt="파트너 배너 2" class="banner-image">
                <img src="/img/m_banner03.png" alt="파트너 배너 3" class="banner-image">
                <img src="/img/m_banner04.png" alt="파트너 배너 4" class="banner-image">
                <img src="/img/m_banner05.png" alt="파트너 배너 5" class="banner-image">
                <img src="/img/m_banner06.png" alt="파트너 배너 6" class="banner-image">
                <img src="/img/m_banner07.png" alt="파트너 배너 7" class="banner-image">
                <img src="/img/m_banner08.png" alt="파트너 배너 8" class="banner-image">
                <img src="/img/m_banner09.png" alt="파트너 배너 9" class="banner-image">
                <img src="/img/m_banner10.png" alt="파트너 배너 10" class="banner-image">
                <img src="/img/m_banner11.png" alt="파트너 배너 11" class="banner-image">
                <img src="/img/m_banner12.png" alt="파트너 배너 12" class="banner-image">
                <img src="/img/m_banner13.png" alt="파트너 배너 13" class="banner-image">
                <img src="/img/m_banner14.png" alt="파트너 배너 14" class="banner-image">
                <img src="/img/m_banner15.png" alt="파트너 배너 15" class="banner-image">
                <img src="/img/m_banner16.png" alt="파트너 배너 16" class="banner-image">
            </div>
            
        </section>		
		<!--// With Us -->
		
		<!-- Location -->
		<section id="location" class="section">
			<div class="heading">
				<h2><span>Location</span></h2>
				<p class="subtitle">소프트아이텍 오시는 길을 알려드립니다. </p>
			</div>
            <div class="map_title">
                <span id="daejeon-link" onclick="showMap('daejeon')">대전본사</span> | 
                <span id="daegu-link" onclick="showMap('daegu')">대구지사</span>
            </div>
            <div class="map-container">
                <iframe id="map-iframe" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5031.031732894268!2d127.33242245211333!3d36.37231037906764!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35654966d0422a7b%3A0xec8d9475c42513cb!2z7IaM7ZSE7Yq47JWE7J207YWN!5e0!3m2!1sko!2skr!4v1544963342159" width="100%" height="500" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
            <div class="contact-info">
                <p class="address-title">ADDRESS</p>
                <p class="address">대전광역시 유성구 죽동로 69 (죽동, 소프트아이텍빌딩)</p>
                <p class="contact">
                    <span>TEL</span> 042. 485. 8551 | <span>FAX</span> 042. 486. 8551
                </p>
            </div>
            
        </section>
		<!--// Location -->        
        
    </main>
   	<!-- //전체 콘텐츠 -->
   	
	<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</body>
</html>