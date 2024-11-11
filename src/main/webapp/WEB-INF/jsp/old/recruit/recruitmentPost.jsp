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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
	        background: url('/img/recruit/채용공고_main.jpg') no-repeat center center/cover;
	        color: white;
	        padding: 8rem 0 4rem;
	        text-align: center;
	        position: relative;
	    }
	
	    .hero-overlay {
	        position: absolute;
	        top: 0;
	        left: 0;
	        width: 100%;
	        height: 100%;
	        background-color: rgba(0, 0, 0, 0.5);  /* 반투명한 검은색 오버레이 */
	    }
	
	    .hero .container {
	        position: relative;
	        z-index: 1;  /* 오버레이 위에 텍스트가 보이도록 */
	    }
	
	    .hero h1 {
	        font-size: 3.5rem;
	        margin-bottom: 1rem;
	        text-shadow: 2px 2px 4px rgba(0,0,0,0.5);  /* 텍스트 가독성 향상 */
	    }
	
	    .hero p {
	        font-size: 1.2rem;
	        max-width: 800px;
	        margin: 0 auto 2rem;
	        text-shadow: 1px 1px 2px rgba(0,0,0,0.5);  /* 텍스트 가독성 향상 */
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
        
        .modal {
	        display: none;
	        position: fixed;
	        z-index: 1000;
	        left: 0;
	        top: 0;
	        width: 100%;
	        height: 100%;
	        overflow: auto;
	        background-color: rgba(0,0,0,0.4);
	    }
	
	    .modal-content {
	        background-color: #fefefe;
	        margin: 15% auto;
	        padding: 20px;
	        border: 1px solid #888;
	        width: 80%;
	        max-width: 600px;
	        border-radius: 5px;
	    }
	
	    .close {
	        color: #aaa;
	        float: right;
	        font-size: 28px;
	        font-weight: bold;
	        cursor: pointer;
	    }
	
	    .close:hover,
	    .close:focus {
	        color: black;
	        text-decoration: none;
	        cursor: pointer;
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

    <section class="hero" id="home">
        <div class="hero-overlay"></div>
	    <div class="container">
	        <h1>${departmentName} 채용 정보</h1>
	        <p>소프트아이텍과 함께 ${departmentName} 분야에서 미래를 만들어가세요</p>
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
				        <div class="job-item" data-job-id="${job.jobPostingId}">
				            <h3>${job.jobPostingTitle}</h3>
				            <p>${job.jobPostingDescription}</p>
				            <p>마감일: <fmt:formatDate value="${job.jobPostingEndDate}" pattern="yyyy-MM-dd" /></p>
				            <button class="btn view-job-details">자세히 보기</button>
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
            <!-- 모달 추가 -->
			<div id="jobModal" class="modal">
			    <div class="modal-content">
			        <span class="close">&times;</span>
			        <div class="modal-header">
			            <h2 id="modalJobTitle"></h2>
			            <button id="modalApplyBtn" class="btn">지원하기</button>
			        </div>
			        <div class="modal-body">
			            <div class="job-details">
			                <h3>채용 부서</h3>
			                <p id="modalJobDepartment"></p>
			                <h3>직무 설명</h3>
			                <p id="modalJobDescription"></p>
			                <h3>자격 요건</h3>
			                <p id="modalJobRequirements"></p>
			                <h3>우대 사항</h3>
			                <p id="modalJobPreferredQualifications"></p>
			                <h3>근무 정보</h3>
			                <p id="modalJobLocation"></p>
			                <p id="modalJobEmploymentType"></p>
			                <h3>채용 기간</h3>
			                <p id="modalJobDates"></p>
			                <h3>키워드</h3>
			                <p id="modalJobKeywords"></p>
			                <h3>추가 정보</h3>
			                <p id="modalJobAdditionalInfo"></p>
			            </div>
			        </div>
			    </div>
			</div>
        </div>
    </section>
    
    <script type="text/javascript">
	    $(document).ready(function() {
	    	const modal = $("#jobModal");
	        const span = $(".close");
	        const jobGrid = $(".job-grid");
	        const paginationContainer = $(".pagination");
	
	        // 날짜 포맷팅 함수
	        function formatDate(dateString) {
	            if (!dateString) return '미정';
	            const date = new Date(dateString);
	            return date.toLocaleDateString('ko-KR', { year: 'numeric', month: '2-digit', day: '2-digit' });
	        }
	
	        // 채용 공고 목록 업데이트 함수
	        function updateJobListings(data) {
	            jobGrid.empty();
	            data.jobPostings.forEach(function(job) {
	                const jobItem = $('<div class="job-item" data-job-id="' + job.jobPostingId + '">' +
	                    '<h3>' + job.jobPostingTitle + '</h3>' +
	                    '<p>' + job.jobPostingDescription + '</p>' +
	                    '<p>마감일: ' + formatDate(job.jobPostingEndDate) + '</p>' +
	                    '<button class="btn view-job-details">자세히 보기</button>' +
	                    '</div>');
	                jobGrid.append(jobItem);
	            });
	
	            // 페이지네이션 업데이트
	            paginationContainer.empty();
	            for (let i = 1; i <= data.totalPages; i++) {
	                const pageLink = $('<a href="#" data-page="' + i + '">' + i + '</a>');
	                if (i === data.currentPage) {
	                    pageLink.addClass('active');
	                }
	                paginationContainer.append(pageLink);
	            }
	        }
	
	        // 페이지 로드 함수
	        function loadPage(page) {
	            $.ajax({
	                url: '/recruit/api/jobs',
	                method: 'GET',
	                data: {
	                    departmentId: '${param.departmentId}',
	                    page: page
	                },
	                success: function(data) {
	                    updateJobListings(data);
	                    history.pushState(null, '', '?departmentId=${param.departmentId}&page=' + page);
	                },
	                error: function(xhr, status, error) {
	                    console.error("Error fetching job listings:", error);
	                    console.error("Status:", status);
	                    console.error("Response:", xhr.responseText);
	                    alert("채용 공고 목록을 불러오는데 실패했습니다.");
	                }
	            });
	        }
	
	     	// 자세히 보기 버튼 클릭 이벤트 (이벤트 위임 사용)
	        jobGrid.on('click', '.view-job-details', function(e) {
	            e.preventDefault();
	            const jobId = $(this).closest('.job-item').data("job-id");
	            console.log("Clicked job ID:", jobId);  // 로깅 추가
	            $.ajax({
	                url: `/recruit/api/job/${jobId}`,
	                method: 'GET',
	                success: function(data) {
	                    console.log("Received job data:", data);  // 로깅 추가
	                    $("#modalJobTitle").text(data.jobPostingTitle);
	                    $("#modalJobDepartment").text(data.jobPostingDepartment);
	                    $("#modalJobDescription").text(data.jobPostingDescription);
	                    $("#modalJobRequirements").text(data.jobPostingRequirements || '명시된 요건 없음');
	                    $("#modalJobPreferredQualifications").text(data.jobPostingPreferredQualifications || '명시된 우대사항 없음');
	                    $("#modalJobLocation").text(('근무지: ' + data.jobPostingLocation) || '미정');
	                    $("#modalJobEmploymentType").text(('고용형태: ' + data.jobPostingEmploymentType) || '미정');
	                    $("#modalJobDates").text('시작일: ' + formatDate(data.jobPostingStartDate)+' / 마감일: ' + formatDate(data.jobPostingEndDate));
	                    
	                    const keywords = [data.jobPostingKeyword1, data.jobPostingKeyword2, data.jobPostingKeyword3, 
	                                      data.jobPostingKeyword4, data.jobPostingKeyword5].filter(Boolean).join(', ');
	                    $("#modalJobKeywords").text(keywords || '키워드 없음');
	                    
	                    $("#modalJobAdditionalInfo").text(data.jobPostingAdditionalInfo || '추가 정보 없음');
	                    
	                    modal.css("display", "block");
	                },
	                error: function(xhr, status, error) {
	                    console.error("Error fetching job details:", error);
	                    console.error("Status:", status);
	                    console.error("Response:", xhr.responseText);
	                    alert("공고 정보를 불러오는데 실패했습니다.");
	                }
	            });
	        });
	
	        // 모달 닫기
	        span.on("click", function() {
	            modal.css("display", "none");
	        });
	
	        // 모달 외부 클릭 시 닫기
	        $(window).on("click", function(event) {
	            if ($(event.target).is(modal)) {
	                modal.css("display", "none");
	            }
	        });
	
	        // 지원하기 버튼 클릭 이벤트
	        $("#modalApplyBtn").on("click", function() {
	            alert("지원 페이지로 이동합니다.");
	            // 여기에 지원 페이지로 이동하는 로직 추가
	        });
	
	        // 페이지네이션 클릭 이벤트
	        paginationContainer.on('click', 'a', function(e) {
	            e.preventDefault();
	            const page = $(this).data('page');
	            loadPage(page);
	        });
	
	        // 초기 페이지 로드
	        loadPage(${currentPage});
	    });
    </script>
</body>
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</html>