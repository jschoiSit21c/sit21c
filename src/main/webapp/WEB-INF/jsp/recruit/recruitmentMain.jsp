<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        body {
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

        .container {
            width: 90%;
            max-width: 1200px;
            margin: 0 auto;
        }

        /* Header Styles */
        /* .header {
            background-color: var(--primary-color);
            padding: 1rem 0;
            position: fixed;
            width: 100%;
            z-index: 1000;
            transition: background-color 0.3s ease;
        }

        .header.scrolled {
            background-color: rgba(52, 152, 219, 0.9);
        }

        .nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 1.5rem;
            font-weight: 700;
            color: white;
            text-decoration: none;
        }

        .nav-links {
            display: flex;
            gap: 2rem;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            font-weight: 600;
            transition: color 0.3s ease;
        }

        .nav-links a:hover {
            color: var(--secondary-color);
        }
 */
        /* Hero Section Styles */
        .hero {
            height: 100vh;
            display: flex;
            align-items: center;
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            color: white;
            position: relative;
            overflow: hidden;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: url('https://source.unsplash.com/random/1600x900?technology') no-repeat center center/cover;
            opacity: 0.3;
        }

        .hero-content {
            position: relative;
            z-index: 1;
        }

        .hero h1 {
            font-size: 3.5rem;
            margin-bottom: 1rem;
        }

        .hero p {
            font-size: 1.2rem;
            margin-bottom: 2rem;
        }

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

        /* Jobs Section Styles */
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

        .job-list {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
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

        /* About Section Styles */
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

         /* Footer Styles */
        /*.footer {
            background-color: var(--dark-color);
            color: white;
            padding: 3rem 0;
        }

        .footer-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .footer-links a {
            color: white;
            text-decoration: none;
            margin-left: 1.5rem;
            transition: color 0.3s ease;
        }

        .footer-links a:hover {
            color: var(--secondary-color);
        } */

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

           /*  .footer-content {
                flex-direction: column;
                text-align: center;
            }

            .footer-links {
                margin-top: 1rem;
            }

            .footer-links a {
                margin: 0 0.75rem;
            } */
        }
    </style>
</head>
<body>
    <!-- <header class="header">
        <nav class="nav container">
            <a href="/" class="logo">FutureWorks</a>
            <div class="nav-links">
                <a href="#jobs">채용 공고</a>
                <a href="#about">회사 소개</a>
                <a href="/applicant">지원자</a>
                <a href="/admin">관리자</a>
            </div>
        </nav>
    </header> -->

    <section class="hero">
        <div class="container hero-content">
            <h1>함께 미래를 만들어갑니다</h1>
            <p>FutureWorks에서 당신의 커리어에 날개를 달아보세요</p>
            <a href="#jobs" class="btn">지금 지원하기</a>
        </div>
    </section>

    <section id="jobs" class="jobs">
        <div class="container">
            <h2 class="section-title">현재 모집 중인 포지션</h2>
            <div class="job-list">
                <div class="job-card">
                    <h3>인공지능 엔지니어</h3>
                    <p>AI 기술로 세상을 변화시킬 준비가 되셨나요?</p>
                    <a href="/jobs/ai-engineer" class="btn">자세히 보기</a>
                </div>
                <div class="job-card">
                    <h3>UX/UI 디자이너</h3>
                    <p>사용자 경험을 혁신할 창의적인 디자이너를 찾습니다.</p>
                    <a href="/jobs/ux-designer" class="btn">자세히 보기</a>
                </div>
                <div class="job-card">
                    <h3>데이터 사이언티스트</h3>
                    <p>빅데이터로 비즈니스의 미래를 예측하세요.</p>
                    <a href="/jobs/data-scientist" class="btn">자세히 보기</a>
                </div>
            </div>
        </div>
    </section>

    <section id="about" class="about">
        <div class="container about-content">
            <div class="about-image">
                <img src="/img/recruit/officeView.png" alt="FutureWorks 사무실">
            </div>
            <div class="about-text">
                <h2>FutureWorks 소개</h2>
                <p>FutureWorks는 혁신적인 기술로 더 나은 미래를 만들어가는 글로벌 테크 기업입니다. 우리는 AI, 빅데이터, 클라우드 등 첨단 기술을 활용하여 산업 전반에 걸친 문제를 해결하고 있습니다.</p>
                <p>FutureWorks와 함께라면, 당신의 아이디어가 세상을 바꿀 수 있습니다. 우리는 직원들의 성장과 혁신을 지원하며, 워크-라이프 밸런스를 중요하게 생각합니다.</p>
                <a href="/about" class="btn">더 알아보기</a>
            </div>
        </div>
    </section>

    <footer class="footer">
        <div class="container footer-content">
            <p>&copy; 2024 FutureWorks. All rights reserved.</p>
            <div class="footer-links">
                <a href="/privacy">개인정보 처리방침</a>
                <a href="https://www.linkedin.com/company/futureworks">LinkedIn</a>
                <a href="https://www.github.com/futureworks">GitHub</a>
            </div>
        </div>
    </footer>

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
    </script>
</body>
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</html>