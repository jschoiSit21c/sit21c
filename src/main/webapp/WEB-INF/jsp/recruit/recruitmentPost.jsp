<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="ko">
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>소프트아이텍 채용</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;700&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary-blue: #1428a0;
            --secondary-blue: #3498db;
            --light-gray: #f8f9fa;
            --dark-gray: #343a40;
        }
        
        html {
            scroll-behavior: smooth;  /* 부드러운 스크롤 효과를 위해 추가 */
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1rem 0;
        }

        .logo {
            font-size: 1.5rem;
            font-weight: 700;
            color: var(--primary-blue);
        }

        nav ul {
            list-style-type: none;
            display: flex;
            gap: 2rem;
        }

        nav ul li a {
            color: var(--dark-gray);
            text-decoration: none;
            transition: color 0.3s ease;
        }

        nav ul li a:hover {
            color: var(--primary-blue);
        }

        .hero {
            background: linear-gradient(135deg, var(--primary-blue), var(--secondary-blue));
            color: white;
            padding: 8rem 0 4rem;
            text-align: center;
        }

        .hero h1 {
            font-size: 3rem;
            margin-bottom: 1rem;
        }

        .hero p {
            font-size: 1.2rem;
            max-width: 600px;
            margin: 0 auto 2rem;
        }

        .btn {
            display: inline-block;
            padding: 0.8rem 2rem;
            background-color: white;
            color: var(--primary-blue);
            text-decoration: none;
            border-radius: 5px;
            transition: all 0.3s ease;
        }

        .btn:hover {
            background-color: var(--primary-blue);
            color: white;
        }

        .section {
            padding: 4rem 0;
        }

        .section-title {
            text-align: center;
            font-size: 2rem;
            margin-bottom: 3rem;
        }

        .business-areas {
            background-color: var(--light-gray);
        }

        .business-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
        }

        .business-item {
            background-color: white;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
        }

        .business-item:hover {
            transform: translateY(-5px);
        }

        .business-item img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-radius: 8px;
            margin-bottom: 1rem;
        }

        .business-item h3 {
            font-size: 1.5rem;
            margin-bottom: 1rem;
        }

        .job-grid {
	        display: grid;
	        grid-template-columns: repeat(3, 1fr);
	        gap: 2rem;
	        transition: transform 0.5s ease;
	    }
	
	    .job-item {
	        background-color: white;
	        padding: 1.5rem;
	        border-radius: 8px;
	        box-shadow: 0 4px 6px rgba(0,0,0,0.1);
	        transition: transform 0.3s ease;
	    }
	
	    .job-navigation {
	        width: 100%;
	        display: flex;
	        justify-content: center;
	        margin-top: 20px;
	    }
	
	    .nav-btn {
	        background-color: var(--primary-blue);
	        color: white;
	        border: none;
	        padding: 10px 20px;
	        margin: 0 10px;
	        border-radius: 5px;
	        cursor: pointer;
	        transition: opacity 0.3s ease;
	    }
	
	    .nav-btn:disabled {
	        opacity: 0.5;
	        cursor: not-allowed;
	    }

        .job-item h3 {
            font-size: 1.2rem;
            margin-bottom: 0.5rem;
        }

        .job-item p {
            margin-bottom: 1rem;
            font-size: 0.9rem;
        }

        .job-item:hover {
            transform: translateY(-5px);
        }
        .pagination {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
        .pagination a {
            color: black;
            float: left;
            padding: 8px 16px;
            text-decoration: none;
            transition: background-color .3s;
            border: 1px solid #ddd;
            margin: 0 4px;
        }
        .pagination a.active {
            background-color: #4CAF50;
            color: white;
            border: 1px solid #4CAF50;
        }
        .pagination a:hover:not(.active) {background-color: #ddd;}

        @media (max-width: 992px) {
            .job-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }
        
        @media (max-width: 768px) {
            nav ul {
                display: none;
            }
            
            .hero h1 {
                font-size: 2rem;
            }

            .hero p {
                font-size: 1rem;
            }

            .section-title {
                font-size: 1.5rem;
            }

            .job-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>

    <section class="hero" id="home">
        <div class="container">
            <h1>소프트아이텍과 함께 미래를 만들어가세요</h1>
            <p>IT 기술로 더 나은 세상을 만들어갑니다. 혁신적인 솔루션과 함께 성장할 인재를 찾습니다.</p>
            <a href="#job-listings" class="btn" id="view-jobs">채용 공고 보기</a>
        </div>
    </section>

    <section class="section business-areas" id="about">
        <div class="container">
            <h2 class="section-title">소프트아이텍 주요 비즈니스</h2>
            <div class="business-grid">
                <div class="business-item">
                    <img src="/img/recruit/recruit_1.jpg" alt="클라우드">
                    <h3>클라우드</h3>
                    <p>기업을 위한 안전하고 효율적인 클라우드 솔루션을 제공합니다. 고객의 디지털 전환을 가속화합니다.</p>
                </div>
                <div class="business-item">
                    <img src="/img/recruit/recruit_2.jpg" alt="AI">
                    <h3>인공지능</h3>
                    <p>최첨단 AI 기술을 활용하여 비즈니스 프로세스를 최적화하고 새로운 가치를 창출합니다.</p>
                </div>
                <div class="business-item">
                    <img src="/img/recruit/recruit_3.jpg" alt="보안">
                    <h3>보안</h3>
                    <p>종합적인 사이버 보안 솔루션으로 기업의 데이터와 시스템을 안전하게 보호합니다.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="section job-listings" id="job-listings">
        <div class="container">
            <h2 class="section-title">${departmentName} 채용 정보</h2>
            <c:if test="${not empty jobPostings}">
	            <div class="job-grid">
	                <c:forEach items="${jobPostings}" var="job">
	                    <div class="job-item">
	                        <h3>${job.jobPostingTitle}</h3>
	                        <p>${job.jobPostingDescription}</p>
	                        <p>마감일: <fmt:formatDate value="${job.jobPostingEndDate}" pattern="yyyy-MM-dd"/></p>
	                        <a href="/recruit/jobDetail?id=${job.jobPostingId}" class="btn">자세히 보기</a>
	                    </div>
	                </c:forEach>
	            </div>
            </c:if>
			<c:if test="${empty jobPostings}">
			    <p>현재 등록된 채용 공고가 없습니다.</p>
			</c:if>
            <div class="pagination">
                <c:forEach begin="1" end="${totalPages}" var="i">
                    <a href="?departmentId=${param.departmentId}&page=${i}" class="${currentPage == i ? 'active' : ''}">${i}</a>
                </c:forEach>
            </div>
        </div>
    </section>
    
    <script type="text/javascript">
	    document.addEventListener('DOMContentLoaded', function() {
	        const viewJobsBtn = document.getElementById('view-jobs');
	        const jobListingsSection = document.getElementById('job-listings');
	
	        viewJobsBtn.addEventListener('click', function(e) {
	            e.preventDefault();
	            jobListingsSection.scrollIntoView({
	                behavior: 'smooth'
	            });
	        });
	    });
    </script>
</body>
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</html>