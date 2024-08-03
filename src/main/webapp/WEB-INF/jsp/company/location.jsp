<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>오시는길</title> 
</head>
<body>
	<!-- 상단 -->	
	<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
		<section id="company_daejeon" style="text-align:center">
	        <div style="text-decoration:underline">오시는길</div>
			<p>본사</br>주소: 대전광역시 유성구 죽동로 69 (죽동, 소프트아이텍빌딩) / 대표전화: 042-485-8551 / 팩스: 042-486-8551</p>
	    </section>	
<div id="map" style="width:80%;height:450px;margin: 0 auto;margin-bottom:35px;"></div>	
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=79b9acd2a6e7abe7e0759a449ee9fbaf"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(36.3723282,127.3339635), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(36.3723282,127.3339635); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    
</script>	
<!-- 하단 -->
	<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</body>
</html>