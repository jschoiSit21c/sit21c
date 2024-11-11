<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>회사 연혁 - 소프트아이텍</title>

    <script>
        // JavaScript 함수를 JSP 안에 포함
        function showImage(imageName) {
            var imageElement = document.getElementById('timelineImage');
            imageElement.src = '/img/' + imageName;
        }
    </script>
	<style>
		.history-section {
		    max-width: 1200px;
		    margin: 0 auto;
		    text-align: center;
		}
		
		.history-section h2 {
		    margin-bottom: 20px;
		    font-size: 1.8em;
		    color: #333;
		}
		
		.year-buttons {
		    margin-bottom: 20px;
		}
		
		.year-buttons button {
		    padding: 10px 20px;
		    margin: 5px;
		    border: none;
		    background-color: #007BFF;
		    color: white;
		    cursor: pointer;
		    border-radius: 5px;
		    font-size: 1.2em;
		    transition: background-color 0.3s ease;
		}
		
		.year-buttons button:hover {
		    background-color: #0056b3;
		}
		
		.timeline-image {
		    text-align: center;
		}
		
		.timeline-image img {
		    width: 100%;
		    max-width: 1200px;
		    height: auto;
		    border-radius: 10px;
		}
		
		footer {
		    background-color: #333;
		    color: white;
		    text-align: center;
		    padding: 10px 0;
		    position: relative; /* Fixed 대신 relative를 사용하여 내용이 더 있을 경우 푸터가 아래로 밀리도록 함 */
		    width: 100%;
		}
    </style>
</head>



<body>
	<!-- 상단 -->
	<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
	
	
	<section>
		<div class="text-mid title">
			<h1>CEO 메시지</h1>
		</div>
    </section>
	
    <main>
        <section class="history-section">
            <h2>다년간 축적된 경험, 인증 및 수상의 발자취 입니다.</h2>
            <div class="year-buttons">
                <button onclick="showImage('y-1.png')">2022 ~ 2019</button>
                <button onclick="showImage('y-2.png')">2018 ~ 2015</button>
                <button onclick="showImage('y-3.png')">2014 ~ 2010</button>
                <button onclick="showImage('y-4.png')">2009 ~ 2000</button>
            </div>
            <div class="timeline-image">
                <img id="timelineImage" src="/img/y-1.png" alt="회사 연혁">
            </div>
        </section>
    </main>
    <!-- 하단 -->
	<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</body>
</html>