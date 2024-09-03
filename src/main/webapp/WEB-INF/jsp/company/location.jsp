<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
<head>
    <meta charset="utf-8">
    <title>오시는길</title> 
    <style type="text/css">
    section{
    	 width: 100%;        
         padding: 10px; 
         margin-bottom: 10px;
         border-radius: 5px;
    }
    h1{   	 
        font-size: 26px;
    	color: #333;
    	font-weight: bold;
    	margin-bottom: 20px;
    }
    h3{
    	font-weight: bold;	
    }
    .detail-item h3{
    content: '';
    display: block;
    width: 30px;
    height: 2px;
    background: #fe6001;
    margin: auto;
    color: #333;
    font-weight: 700;  
    text-align: center;
    }
    .sub_text01{
        line-height: 22px;
    	font-size: 17px;
    	color: #666666;
    	margin-top: 28px;
    }
    #company_daejeon{
    	text-align:center
    }
    #map{
    	width:80%;
    	height:450px;
    	margin: 0 auto;
    }
    #company_daegu{
    	text-align:center; 
    	margin-top:15px;
    }
    #map_daegu{
    	width:80%;
    	height:450px;
    	margin: 50px auto;
    }
    </style>
</head>
<body>
        <section id="company_daejeon">       
        	<div class="detail-item">
        		<h1>오시는 길</h1>      	
        		<h3>본사</h3>        		      		           	
            	<p class="sub_text01">주소: 대전광역시 유성구 죽동로 69 (죽동, 소프트아이텍빌딩) / 대표전화: 042-485-8551 / 팩스: 042-486-8551</p>       
        	</div> 	        		 	           
        </section>  
<div id="map"></div> 
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7cfb05a66b408381a264a5bf2326f5a6"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(36.3722400,127.3339735), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(36.3722400,127.3339735); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    
</script> 
    <section id="company_daegu"> 
    	<div class="detail-item">   
    		<h3>지사</h3>      
            <p class="sub_text01">주소: 대구광역시 동구 이노밸리로 309, 4층 / 대표전화: 053-960-1813</p> 
        </div>      	 		
    </section>
<div id="map_daegu"></div>
<script>
var mapContainerDaegu = document.getElementById('map_daegu'), // 지도를 표시할 div 
    mapOptionDaegu = { 
        center: new kakao.maps.LatLng(35.8784963,128.7309867), // 대구지사의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var mapDaegu = new kakao.maps.Map(mapContainerDaegu, mapOptionDaegu); // 지도를 생성합니다

// 대구지사의 마커가 표시될 위치입니다 
var markerPositionDaegu = new kakao.maps.LatLng(35.8784963,128.7309867); 

// 마커를 생성합니다
var markerDaegu = new kakao.maps.Marker({
    position: markerPositionDaegu
});

// 마커가 지도 위에 표시되도록 설정합니다
markerDaegu.setMap(mapDaegu);

// CustomOverlay를 생성하고 텍스트만 표시합니다
var customOverlay = new kakao.maps.CustomOverlay({
    position: markerPositionDaegu,
    content: '<div style="position: relative; left: -50%; transform: translate(50%, 110%); color: #000; font-size: 12px;">이노밸리로</div>', // 글씨만 표시하도록 설정
    xAnchor: 0.5, // 중앙 정렬
    yAnchor: 1.1 // 마커 위에 조금 띄워서 표시
});

// CustomOverlay를 지도에 표시합니다
customOverlay.setMap(mapDaegu);
</script>
</body>
<!-- 하단 -->
    <jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</html>
