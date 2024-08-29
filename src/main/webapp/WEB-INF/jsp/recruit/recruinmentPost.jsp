<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>삼성SDS 채용</title>
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
        
        
        body, html {
            margin: 0;
            padding: 0;
            font-family: 'Noto Sans KR', sans-serif;
            line-height: 1.6;
            color: var(--dark-gray);
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        header {
            background-color: white;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
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
        }

        .job-item {
            background-color: white;
            padding: 1.5rem;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
        }

        .job-item:hover {
            transform: translateY(-5px);
        }

        .job-item h3 {
            font-size: 1.2rem;
            margin-bottom: 0.5rem;
        }

        .job-item p {
            margin-bottom: 1rem;
            font-size: 0.9rem;
        }

        footer {
            background-color: var(--dark-gray);
            color: white;
            padding: 2rem 0;
            text-align: center;
        }

        footer a {
            color: var(--secondary-blue);
            text-decoration: none;
        }

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
    <header>
        <div class="container">
            <nav>
                <div class="logo">삼성SDS</div>
                <ul>
                    <li><a href="#home">채용공고</a></li>
                    <li><a href="#about">관계사 소개</a></li>
                    <li><a href="#guide">지원 가이드</a></li>
                    <li><a href="#myapp">나의 지원서</a></li>
                    <li><a href="#campus">캠퍼스리</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <section class="hero" id="home">
        <div class="container">
            <h1>삼성SDS와 함께 미래를 만들어가세요</h1>
            <p>IT 기술로 더 나은 세상을 만들어갑니다. 혁신적인 솔루션과 함께 성장할 인재를 찾습니다.</p>
            <a href="#job-listings" class="btn" id="view-jobs">채용 공고 보기</a>
        </div>
    </section>

    <section class="section business-areas" id="about">
        <div class="container">
            <h2 class="section-title">삼성SDS 주요 비즈니스</h2>
            <div class="business-grid">
                <div class="business-item">
                    <img src="/api/placeholder/400/300" alt="클라우드">
                    <h3>클라우드</h3>
                    <p>기업을 위한 안전하고 효율적인 클라우드 솔루션을 제공합니다. 고객의 디지털 전환을 가속화합니다.</p>
                </div>
                <div class="business-item">
                    <img src="/api/placeholder/400/300" alt="AI">
                    <h3>인공지능</h3>
                    <p>최첨단 AI 기술을 활용하여 비즈니스 프로세스를 최적화하고 새로운 가치를 창출합니다.</p>
                </div>
                <div class="business-item">
                    <img src="/api/placeholder/400/300" alt="보안">
                    <h3>보안</h3>
                    <p>종합적인 사이버 보안 솔루션으로 기업의 데이터와 시스템을 안전하게 보호합니다.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="section job-listings" id="job-listings">
        <div class="container">
            <h2 class="section-title">채용 정보</h2>
            <div class="job-grid">
                <div class="job-item">
                    <h3>AI 엔지니어</h3>
                    <p>인공지능 모델 개발 및 최적화를 담당할 AI 엔지니어를 모집합니다.</p>
                    <p>마감일: 2024-09-30</p>
                    <a href="#" class="btn">지원하기</a>
                </div>
                <div class="job-item">
                    <h3>클라우드 아키텍트</h3>
                    <p>기업 고객을 위한 클라우드 인프라 설계 및 구축을 담당할 전문가를 찾습니다.</p>
                    <p>마감일: 2024-10-15</p>
                    <a href="#" class="btn">지원하기</a>
                </div>
                <div class="job-item">
                    <h3>보안 컨설턴트</h3>
                    <p>기업의 보안 전략 수립 및 컨설팅을 담당할 보안 전문가를 모집합니다.</p>
                    <p>마감일: 2024-10-31</p>
                    <a href="#" class="btn">지원하기</a>
                </div>
                <div class="job-item">
                    <h3>데이터 사이언티스트</h3>
                    <p>빅데이터 분석 및 인사이트 도출을 위한 데이터 사이언티스트를 모집합니다.</p>
                    <p>마감일: 2024-11-15</p>
                    <a href="#" class="btn">지원하기</a>
                </div>
                <div class="job-item">
                    <h3>프론트엔드 개발자</h3>
                    <p>사용자 친화적인 웹 인터페이스 개발을 담당할 프론트엔드 개발자를 찾습니다.</p>
                    <p>마감일: 2024-11-30</p>
                    <a href="#" class="btn">지원하기</a>
                </div>
                <div class="job-item">
                    <h3>백엔드 개발자</h3>
                    <p>안정적이고 확장 가능한 서버 시스템 구축을 위한 백엔드 개발자를 모집합니다.</p>
                    <p>마감일: 2024-12-15</p>
                    <a href="#" class="btn">지원하기</a>
                </div>
                <div class="job-item">
                    <h3>DevOps 엔지니어</h3>
                    <p>개발과 운영의 효율적인 통합을 위한 DevOps 엔지니어를 찾습니다.</p>
                    <p>마감일: 2024-12-31</p>
                    <a href="#" class="btn">지원하기</a>
                </div>
                <div class="job-item">
                    <h3>UX/UI 디자이너</h3>
                    <p>사용자 중심의 디지털 경험을 설계할 UX/UI 디자이너를 모집합니다.</p>
                    <p>마감일: 2025-01-15</p>
                    <a href="#" class="btn">지원하기</a>
                </div>
                <div class="job-item">
                    <h3>프로젝트 매니저</h3>
                    <p>IT 프로젝트의 성공적인 수행을 위한 프로젝트 매니저를 찾습니다.</p>
                    <p>마감일: 2025-01-31</p>
                    <a href="#" class="btn">지원하기</a>
                </div>
                <div class="job-item">
                    <h3>시스템 엔지니어</h3>
                    <p>기업 IT 인프라 구축 및 유지보수를 담당할 시스템 엔지니어를 모집합니다.</p>
                    <p>마감일: 2025-02-15</p>
                    <a href="#" class="btn">지원하기</a>
                </div>
                <div class="job-item">
                    <h3>QA 엔지니어</h3>
                    <p>소프트웨어 품질 보증을 위한 QA 엔지니어를 찾습니다.</p>
                    <p>마감일: 2025-02-28</p>
                    <a href="#" class="btn">지원하기</a>
                </div>
                <div class="job-item">
                    <h3>기술 영업</h3>
                    <p>IT 솔루션 판매 및 고객 관리를 담당할 기술 영업 전문가를 모집합니다.</p>
                    <p>마감일: 2025-03-15</p>
                    <a href="#" class="btn">지원하기</a>
                </div>
            </div>
        </div>
    </section>
    
    <script type="text/javascript">

    document.addEventListener('DOMContentLoaded', function() {
        const viewJobsButton = document.getElementById('view-jobs');
        const jobListingsSection = document.getElementById('job-listings');

        viewJobsButton.addEventListener('click', function(e) {
            e.preventDefault();
            jobListingsSection.scrollIntoView({
                behavior: 'smooth'
            });
        });
    });
    </script>
</body>
</html>