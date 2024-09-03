<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html lang="ko">
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FutureWorks - 함께 미래를 만들어갑니다</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
    <style>
	    /* 기본 변수 및 Reset */
	    :root {
	        --primary-color: #3498db;
	        --secondary-color: #2ecc71;
	        --dark-color: #34495e;
	        --light-color: #ecf0f1;
	        --accent-color: #e74c3c;
	        --blue-color: #2879ff;
	    }
	
	    body * {
	        margin: 0;
	        padding: 0;
	        box-sizing: border-box;
	    }
	
	    body {
	        font-family: 'Poppins', sans-serif;
	        line-height: 1.6;
	        color: var(--dark-color);
	        background-color: var(--light-color);
	    }
	
	    /* Layout */
	    section {
	        max-width: 100%;
	    }
	
	    .container {
	        width: 90%;
	        max-width: 1200px;
	        margin: 0 auto;
	    }
	
	    .header nav {
	        padding: 5px 10px;
	    }
	
	    /* Hero Section */
	    .hero {
	        height: 100vh;
	        display: flex;
	        align-items: center;
	        background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
	        color: white;
	        position: relative;
	        overflow: hidden;
	    }
	
	    .hero .bg {
	        position: absolute;
	        top: 0;
	        left: 0;
	        width: 100%;
	        height: 100%;
	    }
	
	    .hero::before {
	        content: '';
	        position: absolute;
	        top: 0;
	        left: 0;
	        right: 0;
	        bottom: 0;
	        background: url('/img/recruit/sitMainRow.mp4') no-repeat center center/cover;
	        opacity: 0.3;
	    }
	
	    .hero .overlay {
	        position: absolute;
	        top: 0;
	        left: 0;
	        width: 100%;
	        height: 100%;
	        background-color: rgba(0, 0, 0, 0.4);
	        z-index: 1;
	    }
	
	    .hero-content {
	        position: relative;
	        z-index: 2;
	    }
	
	    .hero h1 {
	        font-size: 3.5rem;
	        margin-bottom: 1rem;
	    }
	
	    .hero p {
	        font-size: 1.2rem;
	        margin-bottom: 2rem;
	    }
	
	    /* Buttons */
	    .btn {
	        display: inline-block;
	        padding: 0.8rem 2rem;
	        background-color: var(--blue-color);
	        color: white;
	        text-decoration: none;
	        border-radius: 50px;
	        font-weight: 600;
	        transition: transform 0.3s ease, box-shadow 0.3s ease;
	    }
	
	    .btn:hover {
	        transform: translateY(-3px);
	        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
	    }
	
	    /* Jobs Section */
	    .jobs {
	        padding: 5rem 0;
	        background-color: white;
	    }
	
	    .section-title {
	        text-align: center;
	        font-size: 2.5rem;
	        margin-bottom: 3rem;
	        color: var(--primary-color);
	    }
	
	    .job-list-container {
		    overflow: hidden;
		    width: 100%;
		}
		
		.job-list {
		    display: grid;
		    grid-template-columns: repeat(3, 1fr);
		    grid-gap: 20px;
		    transition: transform 0.5s ease;
		}
		
		.job-card {
		    background-color: var(--light-color);
		    border-radius: 10px;
		    padding: 2rem;
		    transition: transform 0.3s ease, box-shadow 0.3s ease;
		}
		
		.job-card:hover {
		    transform: translateY(-5px);
		    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
		}
		
	    .job-card h3 {
	        font-size: 1.5rem;
	        margin-bottom: 1rem;
	        color: var(--primary-color);
	    }
	
	    .job-card p {
	        margin-bottom: 1rem;
	    }
	
	    .job-navigation {
	        width: 100%;
	        display: flex;
	        justify-content: center;
	        margin-top: 20px;
	    }
	
	    .nav-btn {
	        background-color: var(--primary-color);
	        color: white;
	        border: none;
	        padding: 10px 20px;
	        margin: 0 10px;
	        border-radius: 5px;
	        cursor: pointer;
	        transition: opacity 0.3s ease;
	    }
	
	    .nav-btn:disabled {
	        background-color: #ccc;
	        cursor: not-allowed;
	        opacity: 0.5;
	    }
	
	    .nav-btn:not(:disabled):hover {
	        opacity: 0.8;
	    }
	
	    /* About Section */
	    .about {
	        padding: 5rem 0;
	        background-color: var(--dark-color);
	        color: white;
	    }
	
	    .about-content {
	        display: flex;
	        align-items: center;
	        gap: 4rem;
	    }
	
	    .about-image {
	        flex: 1;
	        position: relative;
	    }
	
	    .about-image img {
	        width: 100%;
	        border-radius: 10px;
	        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
	    }
	
	    .about-image::before {
	        content: '';
	        position: absolute;
	        top: -20px;
	        left: -20px;
	        right: 20px;
	        bottom: 20px;
	        border: 2px solid var(--secondary-color);
	        border-radius: 10px;
	        z-index: -1;
	    }
	
	    .about-text {
	        flex: 1;
	    }
	
	    .about-text h2 {
	        font-size: 2.5rem;
	        margin-bottom: 1rem;
	        color: var(--secondary-color);
	    }
	
	    /* Utility Classes */
	    .hidden {
	        display: none;
	    }
	
	    /* Media Queries */
	    @media (max-width: 768px) {
	        .nav {
	            flex-direction: column;
	        }
	
	        .nav-links {
	            margin-top: 1rem;
	        }
	
	        .hero h1 {
	            font-size: 2.5rem;
	        }
	
	        .about-content {
	            flex-direction: column;
	        }
	
	        .job-card {
	            flex: 0 0 100%;
	        }
	        
		    .job-list {
		        grid-template-columns: 1fr;
		    }
	    }
	</style>
</head>
<body>

    <section class="hero">
        <div class="bg">
            <video width="100%" preload="none" loop="" muted="" playsinline="" autoplay="">
                <source src="/img/recruit/sitMainRow.mp4" type="video/mp4">
            </video>
        </div>
        <div class="overlay"></div>
        <div class="container hero-content">
            <h1>함께 미래를 만들어갑니다</h1>
            <p>SoftITech에서 당신의 커리어에 날개를 달아보세요</p>
            <a href="#jobs" class="btn">지금 지원하기</a>
        </div>
    </section>

    <section id="jobs" class="jobs">
        <div class="container">
            <h2 class="section-title">현재 모집 중인 포지션</h2>
            <div class="job-list-container">
			    <div class="job-list">
			        <c:forEach items="${departments}" var="dept">
			            <div class="job-card">
			                <div class="hidden department-id">${dept.departmentId}</div>
			                <h3>${dept.departmentName}</h3>
			                <p>
			                    <c:choose>
			                        <c:when test="${dept.departmentDescription != null && fn:length(dept.departmentDescription) > 30}">
			                            ${fn:substring(dept.departmentDescription, 0, 30)}...
			                        </c:when>
			                        <c:otherwise>
			                            ${dept.departmentDescription}
			                        </c:otherwise>
			                    </c:choose>
			                </p>
			                <a href="/recruit/recruitmentPost?departmentId=${dept.departmentId}" class="btn">자세히 보기</a>
			            </div>
			        </c:forEach>
			    </div>
			</div>
            <div class="job-navigation">
                <button class="nav-btn" id="prevBtn" disabled>이전</button>
                <button class="nav-btn" id="nextBtn">다음</button>
            </div>
        </div>
    </section>

    <section id="about" class="about">
        <div class="container about-content">
            <div class="about-image">
                <img src="/img/recruit/officeView.png" alt="FutureWorks 사무실">
            </div>
            <div class="about-text">
                <h2>SoftITech 소개</h2>
                <p>SoftITech는 혁신적인 기술로 더 나은 미래를 만들어가는 글로벌 테크 기업입니다. 우리는 AI, 빅데이터, 클라우드 등 첨단 기술을 활용하여 산업 전반에 걸친 문제를 해결하고 있습니다.</p>
                <p>SoftITech와 함께라면, 당신의 아이디어가 세상을 바꿀 수 있습니다. 우리는 직원들의 성장과 혁신을 지원하며, 워크-라이프 밸런스를 중요하게 생각합니다.</p>
                <a href="/company/aboutSIT" class="btn">더 알아보기</a>
            </div>
        </div>
    </section>

    <script>
		 // 스크롤에 따른 헤더 스타일 변경
	    window.addEventListener('scroll', () => {
	        const header = document.querySelector('.header');
	        if (window.scrollY > 100) {
	            header.classList.add('scrolled');
	        } else {
	            header.classList.remove('scrolled');
	        }
	    });
	
	    // 부드러운 스크롤 효과
	    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
	        anchor.addEventListener('click', function (e) {
	            e.preventDefault();
	            document.querySelector(this.getAttribute('href')).scrollIntoView({
	                behavior: 'smooth'
	            });
	        });
	    });
	
	 	// 슬라이드 액션을 위한 스크립트
	    const jobListContainer = document.querySelector('.job-list-container');
	    const jobList = document.querySelector('.job-list');
	    const jobCards = document.querySelectorAll('.job-card');
	    const prevBtn = document.getElementById('prevBtn');
	    const nextBtn = document.getElementById('nextBtn');
	    let currentPage = 0;
	    const cardsPerPage = 6;
	
	    function updateButtonStates() {
	        prevBtn.disabled = currentPage === 0;
	        nextBtn.disabled = (currentPage + 1) * cardsPerPage >= jobCards.length;
	    }
	
	    function showCards() {
	        jobCards.forEach((card, index) => {
	            if (index >= currentPage * cardsPerPage && index < (currentPage + 1) * cardsPerPage) {
	                card.style.display = 'block';
	            } else {
	                card.style.display = 'none';
	            }
	        });
	    }
	
	    function changePage(direction) {
	        currentPage += direction;
	        showCards();
	        updateButtonStates();
	    }
	
	    prevBtn.addEventListener('click', () => changePage(-1));
	    nextBtn.addEventListener('click', () => changePage(1));
	
	    // 초기 설정
	    showCards();
	    updateButtonStates();
	
	    // 화면 크기 변경 시 카드 표시 재조정
	    window.addEventListener('resize', () => {
	        showCards();
	        updateButtonStates();
	    });
    </script>
</body>
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</html>