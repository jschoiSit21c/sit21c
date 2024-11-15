<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=1280">
<title>소프트아이텍 - 채용정보</title>
</head>
<body class="sub-page">
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
	<!-- 서브 페이지 1-->
	<div class="sub-page-content">
		<h2 class="sub-page-title">채용정보</h2>

		<!-- 인사말 -->
		<div class="sub-page1-area">
		<!-- 슬로건 및 설명 -->
		
			<h3 class="slogan">소프트아이텍은 정기/수시 채용제도를 통해, 능력 있는 인재들이 지원할 수 있도록 가능성을 열어두고 있습니다.</h3>

			<!-- 이미지와 CEO 인사말 내용 -->
			<div class="employ-message-content">

			</div>	
		</div>	
		
	<!-- 채용 정보 및 작성 -->
       
        <section class="consult-section">
            <div class="consult-row">
                <div class="consult-item">
                    <img src="../img/emp_img01.png" alt="" class="employ-image">
                </div>
            </div>
        </section>
        
		
        <section class="employ-section">
            <h2 class="employ-title">채용(IT개발)</h2>
            <div class="employ-intro">
                <h3>IT개발 경력 SM 인재 채용 (JAVA 운영)</h3>
                <div class="employ-buttons">
                    <button class="saramin-button">saramin 지원하기</button>
                </div>
            </div>
            <div class="employ-details">
                <div class="employ-column">
                    <h4>담당업무</h4>
                    <ul>
                        <li>- 당사 솔루션을 도입 사용 중인 중요 고객사 SM 업무</li>
                    </ul>
                </div>
                <div class="employ-column">
                    <h4>자격요건</h4>
                    <ul>
                        <li>- Java 경력 2년 ~ 4년 또는 상응하는 업무 역량 보유자</li>
                        <li>- 객체지향 설계 및 구현 가능</li>
                        <li>- RDBMS 기반의 데이터 모델링 및 쿼리 작성 경험</li>
                        <li>- RESTful API 개발 경험</li>
                        <li>- Linux/Windows 기반의 웹 서버 환경 개발 경험</li>
                    </ul>
                </div>
                <div class="employ-column">
                    <h4>우대사항</h4>
                    <ul>
                        <li>- 대용량 웹 구축 및 개발 경험</li>
                        <li>- HTML/CSS/Javascript를 이해하고 업무에 활용 가능하신 분</li>
                        <li>- xFrame 경험이 있으신 분</li>
                        <li>- 고객사와 원만한 의사소통이 가능하신 분</li>
                        <li>- 장기 근속 가능하신 분</li>
                    </ul>
                </div>
            </div>
        </section>
		
	<!--//ICT 인프라서비스 -->    		    				
		
	<!--  입사지원서 작성 -->
        <div class="application-title">
            <h2>지원하기</h2>
            <p>소프트아이텍과 함께 하실 인재를 모집합니다.</p>
        </div>
        <div class="application-form">
            <form action="/submit" method="post" enctype="multipart/form-data">
                <div class="form-row">
                    <label>구분*</label>
                    <div>
                        <input type="radio" id="experience" name="category" value="experience" required>
                        <label for="experience">경력</label>
                        <input type="radio" id="newcomer" name="category" value="newcomer" required>
                        <label for="newcomer">신입</label>
                    </div>
                </div>
                <div class="form-row">
                    <label for="name">성명*</label>
                    <input type="text" id="name" name="name" required>
                    <label for="email">이메일*</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="form-row">
                    <label for="apply-field">지원분야*</label>
                    <input type="text" id="apply-field" name="apply-field" required>
                    <label for="phone">전화번호*</label>
                    <input type="tel" id="phone" name="phone" required>
                </div>
                <div class="form-row">
                    <label for="resume">이력서*</label>
                    <input type="file" id="resume" name="resume" required>
                    <label for="portfolio">포트폴리오</label>
                    <input type="file" id="portfolio" name="portfolio">
                </div>
                <div class="form-row">
                    <label for="privacy">개인정보처리방침*</label>
                    <textarea id="privacy" readonly>
                본 개인 정보 보호 정책에 사용된 용어는 본 개인 정보 보호 정책에 달리 정의되지 않는 한 웹 사이트 URL에서 액세스 할 수 있는 당사의 이용 약관과 동일한 의미를 갖습니다.
                    </textarea>
                </div>
                <div class="form-row privacy-agree">                    
                    <label for="agree"><input type="checkbox" id="agree" name="agree" required>개인정보처리방침에 동의</label>
                </div>
                <div class="form-buttons">
                    <button type="button" class="form-cancel">닫기</button>
                    <button type="submit" class="form-submit">지원하기</button>
                </div>
            </form>
        </div>

	<!--  //입사지원서 작성 -->	


	</div>
	<!--// 서브 전체내용 1 -->
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</body>
</html>