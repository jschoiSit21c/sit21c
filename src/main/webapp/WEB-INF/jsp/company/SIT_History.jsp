<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=1280">
    <title>회사 연혁 - 소프트아이텍</title>
    <style>
	    /* 클릭된 연도 강조 스타일 */
	    .timeline-year a {
	        text-decoration: none;
	        color: black;
	        padding: 5px 10px;
	        display: inline-block;
	        cursor: pointer;
	    }
	
	    .timeline-year a.active {
	        font-weight: bold;
	        color: #007bff;
	    }
	
	    .year-content {
	        padding: 10px 0;
	        border-bottom: 1px solid #ddd;
	    }
	
	    /* 스크롤 가능한 영역 */
	    .history-right {
	        max-height: 800px; /* 고정 높이 */
	        overflow-y: auto; /* 세로 스크롤 활성화 */
	        border: 1px solid #ddd; /* 시각적 구분 */
	        padding: 10px;
	        margin-top: 10px;
	        box-sizing: border-box; /* 패딩 포함 */
	    }
	</style>


</head>
<body class="sub-page">
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
    <div class="sub-page-content">
        <h2 class="sub-page-title">연혁</h2>

        <div class="sub-page1-area">
            <h3 class="slogan">끊임없는 발전과 혁신을 통해 미래를 선도하는 소프트아이텍의 도전 역사</h3>
        </div>  
            
        <!-- 연혁 -->
        <div class="sub-page4-area">
            <div class="s_title">주요연혁</div>
            <div class="history-section">
                <!-- 연도 목록 -->
                <div class="history-left">
                    <div class="timeline-year"><a href="#year-2023">2023</a></div>
                    <div class="timeline-year"><a href="#year-2022">2022</a></div>
                    <div class="timeline-year"><a href="#year-2021">2021</a></div>
                    <div class="timeline-year"><a href="#year-2020">2020</a></div>
                    <div class="timeline-year"><a href="#year-2019">2019</a></div>
                    <div class="timeline-year"><a href="#year-2018">2018</a></div>
                    <div class="timeline-year"><a href="#year-2017">2017</a></div>
                    <div class="timeline-year"><a href="#year-2015">2015</a></div>
                    <div class="timeline-year"><a href="#year-2013">2013</a></div>
                    <div class="timeline-year"><a href="#year-2011">2011</a></div>
                    <div class="timeline-year"><a href="#year-2010">2010</a></div>
                    <div class="timeline-year"><a href="#year-2009">2009</a></div>
                    <div class="timeline-year"><a href="#year-2002">2002</a></div>
                    <div class="timeline-year"><a href="#year-2000">2000</a></div>
                </div>

                <!-- 연도별 상세 내용 -->
                <div class="history-right">
                    <div class="year-content" id="year-2023">
                        <div class="year-title">2023</div>
                        <div class="year-details">
                            <p>대전시 600억 매출의 탑 수상</p>
                        </div>
                    </div>
                    <div class="year-content" id="year-2022">
                        <div class="year-title">2022</div>
                        <div class="year-details">
                            <p>대전시 400억 매출의 탑 수상</p>
                            <p>정보보호경영시스템인증(ISO27001)획득</p>
                            <p>IT서비스경영시스템인증(ISO20000)획득</p>
                            <p>나라장터시스템 운영 및 유지관리사업('22년 ~ '24년)</p>
                        </div>
                    </div>
                    <div class="year-content" id="year-2021">
                        <div class="year-title">2021</div>
                        <div class="year-details">
                            <p>조달청장 표창</p>
                            <p>K-에듀파인 응용SW 유지관리</p>
                        </div>
                    </div>
                    <div class="year-content" id="year-2020">
                        <div class="year-title">2020</div>
                        <div class="year-details">
                            <p>모범중소기업 표창장 수상 (중소벤처기업부장관)</p>
                        </div>
                    </div>
                    <div class="year-content" id="year-2019">
                        <div class="year-title">2019</div>
                        <div class="year-details">
                            <p>정보보호활동 표창장 수여 (대전교육정보원장)</p>
                            <p>200억 매출의 탑 수상 (대전광역시)</p>
                        </div>
                    </div>
                    <div class="year-content" id="year-2018">
                        <div class="year-title">2018</div>
                        <div class="year-details">
                            <p>국가 R&D 지식정보서비스 (NTIS) 최초 코스타리카 수출</p>
                            <p>제1차 법정 정보자원 통합 구축</p>
                            <p>국가 종합전자조달시스템 전면 개편 ISP</p>
                            <p>조달청상품정보시스템 재구축</p>
                        </div>
                    </div>
                    <div class="year-content" id="year-2017">
                        <div class="year-title">2017</div>
                        <div class="year-details">
                            <p>카페로 공공 계약부 장관 표창 수여</p>
                            <p>소프트아이텍 사옥 이전 (2월)</p>
                            <p>해외 공기업과 중남미 진출을 위한 전략적 파트너 체결 (코스타리카, 전력통신공사)</p>
                        </div>
                    </div>
                    <div class="year-content" id="year-2015">
					    <div class="year-title">2015</div>
					    <div class="year-details">
					        <p>미래과학기술부장관 표창</p>
					        <p>(소프트웨어 산업발전 기여) 수출</p>
					    </div>
					</div>
					<div class="year-content" id="year-2013">
					    <div class="year-title">2013</div>
					    <div class="year-details">
					        <p>국토교통부 철도특별 사법경찰대장 표창</p>
					    </div>
					</div>
					<div class="year-content" id="year-2011">
					    <div class="year-title">2011</div>
					    <div class="year-details">
					        <p>중소기업청장 표창</p>
					    </div>
					</div>
					<div class="year-content" id="year-2010">
					    <div class="year-title">2010</div>
					    <div class="year-details">
					        <p>대전광역시 유망중소기업 인증 획득</p>
					        <p>기술혁신형 중소기업 인증 (INNOBIZ) 획득</p>
					        <p>벤처기업확인 인증 (기술보증기금)</p>
					    </div>
					</div>
					<div class="year-content" id="year-2009">
					    <div class="year-title">2009</div>
					    <div class="year-details">
					        <p>병무청장 표창</p>
					        <p>품질경영시스템 인증 (ISO 9001:2008) 획득</p>
					        <p>기업부설연구소 (기술개발연구소) 설립</p>
					        <p>대전 IT진흥협회 가입 (협회 부회장)</p>
					    </div>
					</div>
					<div class="year-content" id="year-2002">
					    <div class="year-title">2002</div>
					    <div class="year-details">
					        <p>병역특례 지정업체 등록 (병무청)</p>
					        <p>Project 관리 / PSR 운영 / 화력발전소 운영 소프트웨어 등록</p>
					        <p>대덕 벤처 연합회 (대덕 IT 포럼) 가입</p>
					    </div>
					</div>
					<div class="year-content" id="year-2000">
					    <div class="year-title">2000</div>
					    <div class="year-details">
					        <p>2000. 09 ㈜소프트아이텍 설립</p>
					        <p>소프트웨어 사업 등록</p>
					    </div>
					</div>

                </div>
            </div>
        </div>
    </div>
    <jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>

    <!-- JavaScript -->
    <script>
    document.addEventListener("DOMContentLoaded", () => {
        const timelineLinks = document.querySelectorAll(".timeline-year a");
        const yearContents = document.querySelectorAll(".year-content");
        const historyRight = document.querySelector(".history-right");

        // 클릭 이벤트 처리
        timelineLinks.forEach(link => {
            link.addEventListener("click", (e) => {
                e.preventDefault(); // 기본 링크 동작 방지

                const targetId = link.getAttribute("href").replace("#", ""); // 타겟 ID 가져오기
                const targetContent = document.getElementById(targetId);

                if (targetContent) {
                    // 스크롤 위치를 해당 연도로 이동
                    historyRight.scrollTo({
                        top: targetContent.offsetTop - historyRight.offsetTop,
                        behavior: 'smooth' // 부드럽게 이동
                    });

                    // 모든 링크 스타일 초기화
                    timelineLinks.forEach(l => l.classList.remove("active"));

                    // 클릭된 링크 강조
                    link.classList.add("active");
                }
            });
        });

        // 초기 상태 설정 (첫 번째 연도 강조)
        const firstLink = document.querySelector(".timeline-year a");
        if (firstLink) {
            firstLink.classList.add("active");
        }
    });


    </script>
</body>
</html>
                        
