<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About 소프트아이텍 - company</title>
<style>

body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    line-height: 1.6;
    background-color: #f9f9f9;
}

main {
    padding: 20px;
    background-color: #fff;
}

.company-info, .company-overview {
    text-align: center;
    margin-bottom: 40px;
}

.company-info h1 {
    font-size: 2.5em;
    margin-bottom: 10px;
    color: #333;
}

.company-info p, .company-overview p {
    font-size: 1.2em;
    color: #666;
    margin-bottom: 20px;
}

.info-content {
    display: flex;
    flex-wrap: nowrap;
    justify-content: center;
    align-items: flex-start;
    margin-bottom: 40px;
    max-width: 1200px; /* 최대 너비 설정 */
    margin: 0 auto; /* 가운데 정렬 */
}

.info-image {
    flex: 0 1 auto;
    min-width: 300px;
    margin-right: 20px; /* 간격 설정 */
    text-align: center;
}

.info-image img {
    width: 100%;
    max-width: 400px;
    height: auto;
    border-radius: 10px;
}

.info-details {
    flex: 1 1 auto; /* 남은 공간을 차지하도록 설정 */
    min-width: 300px;
    text-align: left; /* 텍스트를 왼쪽으로 정렬 */
}

.info-details table {
    width: 100%;
    border-collapse: collapse;
    margin: 0;
}

.info-details th, .info-details td {
    border: 1px solid #ddd;
    padding: 10px;
    text-align: left;
    white-space: nowrap; /* 텍스트 줄바꿈 방지 */
}

.info-details th {
    background-color: #f4f4f4;
    font-weight: bold;
    width: 20%; /* 각 열의 너비를 설정 */
}

.info-details td {
    width: 30%; /* 각 열의 너비를 설정 */
}

.info-details td[colspan="3"] {
    width: calc(100% - 20%); /* colspan이 적용된 열의 너비 설정 */
}

.vision {
    text-align: center;
    margin-bottom: 40px;
}

.vision h2 {
    font-size: 2em;
    margin-bottom: 10px;
    color: #333;
}

footer {
    background-color: #333;
    color: white;
    text-align: center;
    padding: 10px 0;
    position: relative;
    width: 100%;
}

.video-container {
    display: flex;
    justify-content: center;
    margin-top: 20px;
}

</style>
</head>
<body>
	<!-- 상단 -->
	<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
    <main>
        <section class="company-info">
            <h1>About 소프트아이텍</h1>
            <h1>Company Info</h1>
            <p>세계 최고의 기술력을 바탕으로 글로벌 IDP 시장을 선도하겠습니다.</p>
            
            <div class="info-content">
                <div class="info-image">
                    <img src="/img/about_SIT.png" alt="Company Image">
                </div>
                <div class="info-details">
                    <table>
                        <tr>
                            <th>회사명</th>
                            <td>(주)소프트아이텍</td>
                        </tr>
                        <tr>
                        	<th>설립일</th>
                            <td>2000년 9월</td>
                        </tr>
                        <tr>
                            <th>대표자</th>
                            <td>이학수</td>                      
                        </tr>
                        <tr>
                        	<th>사업분야</th>
                            <td>SI, SM, IT컨설팅, IT아웃소싱, S/W개발, 패키지/S/W개발 및 공급</td>
                        </tr>
                        <tr>
                            <th>주소</th>
                            <td colspan="3">대전광역시 유성구 죽동로 69 소프트아이텍빌딩</td>
                        </tr>
                        <tr>
                            <th>전화번호</th>
                            <td colspan="3">전화 : 042-485-8551, FAX : 042-486-8551</td>
                        </tr>
                        <tr>
                            <th>회사설립연도</th>
                            <td colspan="3">2000년 9월</td>
                        </tr>
                        <tr>
                            <th>해당부문 종사기간</th>
                            <td colspan="3">2000년 9월 ~ 2024년 8월 (24년 8개월)</td>
                        </tr>
                    </table>
                </div>
            </div>
        </section>
        
        <section class="company-overview">
            <h2>"Leading Business Innovation with Advanced IT Development"</h2>
            <h2>"한 발 앞선 IT 개발로 비즈니스 혁신을 선도합니다"</h2>
            
			<div class="video-container">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/I8MbDbxxmOs" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
        </section>
    </main>
	<!-- 하단 -->
	<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</body>
</html>