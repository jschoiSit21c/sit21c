<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
 /*추가사항*/       
.submit-container {
    text-align: right;
}

input[type="tel"] {
    width: 100%;
    padding: 10px;
    margin-top: 5px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

    </style>
</head>
<body>
<form method="POST" enctype="multipart/form-data" action="/recruit/executeRecruitmentApply">
<%-- <input type="hidden" name="applicationJobPostingId" value="${param.jobPostingId}"> --%>
<input type="hidden" name="applicationJobPostingId" value="1">
    <section class="section business-areas" id="about">
        <div class="container">
            <h2 class="section-title">입사지원서 제출</h2>
            <div class="business-grid">
                <div class="business-item">
                	이름 : <input type="text" name="applicationUserNm" required>
                	이메일 : <input type="email" name="applicationEmail" required>
                	연락처 : <input type="tel" name="applicationTel" required>
                	자기소개 : <textarea name="applicationCoverLetter" rows="10" required></textarea>
                	첨부파일 : <input type="file" name="attchFile">
                	<div class="submit-container">
						<input type="submit" value="제출">
					</div>
                </div>
            </div>
        </div>
    </section>
</form>
    
    <script type="text/javascript">
    </script>
</body>
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</html>