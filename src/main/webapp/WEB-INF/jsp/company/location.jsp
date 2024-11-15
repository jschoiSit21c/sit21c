<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=1280">
    <title>오시는길</title> 
</head>
<body class="sub-page">
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
	<!-- 서브 페이지 1-->
	<div class="sub-page-content">
		<h2 class="sub-page-title">오시는길</h2>

		<!-- 인사말 -->
		<div class="sub-page1-area">
		<!-- 슬로건 및 설명 -->
			<h3 class="slogan">소프트아이텍은 고객과의 소통을 위해 언제나 열려있는 파트너입니다</h3>
			<!-- 이미지와 CEO 인사말 내용 
			<div class="location-content">
				<p class="location-text">
					소프트아이텍은 고객과의 소통을 위해 항상 열려 있습니다.<br>
				</p>

			</div>-->
		</div>	
			
		<!-- 오시는길  -->
				<div class="map-section">
					<div class="map_title">
						<span id="daejeon-link" onclick="showMap('daejeon')">대전본사</span> | 
						<span id="daegu-link" onclick="showMap('daegu')">대구지사</span>
					</div>
					<div class="map-container">
						<iframe id="map-iframe" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5031.031732894268!2d127.33242245211333!3d36.37231037906764!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35654966d0422a7b%3A0xec8d9475c42513cb!2z7IaM7ZSE7Yq47JWE7J207YWN!5e0!3m2!1sko!2skr!4v1544963342159" width="100%" height="700" frameborder="0" style="border:0" allowfullscreen></iframe>
					</div>
					<div class="contact-info">
						<h2>문의사항이 있으신가요? 성심껏 답변드리겠습니다.</h2>
						<p class="address-title">ADDRESS</p>
						<p class="address">대전광역시 유성구 죽동로 69 (죽동, 소프트아이텍빌딩)</p>
						<p class="contact">
							<span>TEL</span> 042. 485. 8551 | <span>FAX</span> 042. 486. 8551
						</p>
					</div>
				</div>
		<!-- // 오시는길  -->

	</div>

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
			mapIframe.src = "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3262.5005148157323!2d128.6023317!3d35.8722125!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3565e3b1d1aab30b%3A0x1c6fdf8d033a8f88!2z66y47YWU67O17Jew7ISc7Jq466as!5e0!3m2!1sko!2skr!4v1544963342159";
			address.textContent = '대구광역시 중구 동성로 1가 123 (대구, 소프트아이텍지사)';
			daeguLink.classList.add('active');
		}
	}

	</script>
	<!-- 하단 -->
	<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</body>

</html>
