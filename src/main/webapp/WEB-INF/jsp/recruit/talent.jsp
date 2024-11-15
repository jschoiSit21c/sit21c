<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>소프트아이텍 - 채용정보</title>
</head>
<body class="sub-page">
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
	<!-- 서브 페이지 1-->
	<div class="sub-page-content">
		<h2 class="sub-page-title">인재상</h2>

		<!-- 인사말 -->
		<div class="sub-page1-area">
		<!-- 슬로건 및 설명 -->
		
			<h3 class="slogan">미래를 선도할 혁신적 사고와 협력의 가치를 지닌 인재</h3>

			<!-- 이미지와 CEO 인사말 내용 -->
			<div class="employ-message-content">

			</div>	
		</div>	
		
	<!-- 채용 정보 및 작성 -->
       
        <section class="consult-section">
            <div class="consult-row">
                <div class="consult-item">
                    <img src="../img/emp_img02.png" alt="" class="infra-image">
                </div>
            </div>
        </section>
        
		
        <section class="consult-section">
            <div class="consult-row">
                <div class="consult-item">
                    <img src="../img/ta_img01.png" alt="" class="infra-image">
                </div>
            </div>
        </section>
        
		
		<div class="consult-info">
			<h2 class="title">복지제도</h2>
			<p class="slogan">다양한 복지제도로 일과 삶의 균형잡힌 일자리로 만들어가겠습니다</p>
		</div>	
		
					<ul class="wel-list">
						
							<div class="welfare-container">
								<div class="welfare-card">
									<h3 class="welfare-title">휴양시설운영</h3>
									<p class="welfare-text">전국각지에 있는 휴양소를 활용해보세요</p>
									<div class="welfare-icon-circle"><img src="../img/wel_05.png" alt="휴양시설운영 아이콘"></div>
								</div>
								<div class="welfare-card">
									<h3 class="welfare-title">가족친화제도</h3>
									<p class="welfare-text">가족 돌봄 휴직, 육아휴직을 운영해요</p>
									<div class="welfare-icon-circle"><img src="../img/wel_06.png" alt="가족친화제도 아이콘"></div>
								</div>
								<div class="welfare-card">
									<h3 class="welfare-title">복지포인트 제도</h3>
									<p class="welfare-text">쇼핑, 여행, 문화, 운동 등 자유롭게 쓸 수 있어요</p>
									<div class="welfare-icon-circle"><img src="../img/wel_07.png" alt="복지포인트 제도 아이콘"></div>
								</div>
								<div class="welfare-card">
									<h3 class="welfare-title">통신비지원</h3>
									<p class="welfare-text">직군별/군무형태별로 통신비를 지원해요</p>
									<div class="welfare-icon-circle"><img src="../img/wel_08.png" alt="통신비지원 아이콘"></div>
								</div>
								<div class="welfare-card">
									<h3 class="welfare-title">경조사지원</h3>
									<p class="welfare-text">경조사 발생 시 경조금과 휴가를 지급해요</p>
									<div class="welfare-icon-circle"><img src="../img/wel_09.png" alt="경조사지원 아이콘"></div>
								</div>
								<div class="welfare-card">
									<h3 class="welfare-title">학자금지원</h3>
									<p class="welfare-text">고등학생, 대학생 자녀가 있는 임직원을 대상으로 교육비를 지원해요</p>
									<div class="welfare-icon-circle"><img src="../img/wel_10.png" alt="학자금지원 아이콘"></div>
								</div>
								<div class="welfare-card">
									<h3 class="welfare-title">퇴직연금제도</h3>
									<p class="welfare-text">임직원의 퇴직금 보호 및 관리를 위해 퇴직연금에 가입했어요</p>
									<div class="welfare-icon-circle"><img src="../img/wel_11.png" alt="퇴직연금제도 아이콘"></div>
								</div>
								<div class="welfare-card">
									<h3 class="welfare-title">명절상여지원</h3>
									<p class="welfare-text">직원들의 행복한 명절 연휴를 응원하며 년 2회 지급해요</p>
									<div class="welfare-icon-circle"><img src="../img/wel_12.png" alt="명절상여지원 아이콘"></div>
								</div>
								<div class="welfare-card">
									<h3 class="welfare-title">보육수당지원</h3>
									<p class="welfare-text">5~7세 자녀를 양육하는 직원에게 자녀 수 제한 없이 수당을 지급해요</p>
									<div class="welfare-icon-circle"><img src="../img/wel_13.png" alt="보육수당지원 아이콘"></div>
								</div>
								<div class="welfare-card">
									<h3 class="welfare-title">인센티브제도</h3>
									<p class="welfare-text">성과가 있는 곳에 보상을! 수익을 함께 나눠요</p>
									<div class="welfare-icon-circle"><img src="../img/wel_14.png" alt="인센티브제도 아이콘"></div>
								</div>
								<div class="welfare-card">
									<h3 class="welfare-title">건강검진지원</h3>
									<p class="welfare-text">정기 건강 검진을 지원하며 추가 검사 시 직원 할인을 적용해요</p>
									<div class="welfare-icon-circle"><img src="../img/wel_15.png" alt="건강검진지원 아이콘"></div>
								</div>
								<div class="welfare-card">
									<h3 class="welfare-title">우수사원포상</h3>
									<p class="welfare-text">근무성과가 우수하고 모범이 되는 직원을 포상합니다</p>
									<div class="welfare-icon-circle"><img src="../img/wel_16.png" alt="우수사원포상 아이콘"></div>
								</div>
								<div class="welfare-card">
									<h3 class="welfare-title">멘토링제도</h3>
									<p class="welfare-text">신입사원의 빠른 적응과 조직문화 내 재화를 위해 멘토링 프로그램을 시행해요</p>
									<div class="welfare-icon-circle"><img src="../img/wel_17.png" alt="멘토링제도 아이콘"></div>
								</div>
								<div class="welfare-card">
									<h3 class="welfare-title">직무전문가보상</h3>
									<p class="welfare-text">Expert 제도, PM인증제도를 운영하며 직무 전문가로 성장 시 직무 수당을 지급해요</p>
									<div class="welfare-icon-circle"><img src="../img/wel_18.png" alt="직무전문가보상 아이콘"></div>
								</div>
								<div class="welfare-card">
									<h3 class="welfare-title">사내추천제도</h3>
									<p class="welfare-text">회사 성장에 필요한 인력을 추천하여 입사할 경우 인재 추천 장려금을 지원해요</p>
									<div class="welfare-icon-circle"><img src="../img/wel_19.png" alt="사내추천제도 아이콘"></div>
								</div>
							</div>



					</ul>
				</div>
	<!--// 서브 전체내용 1 -->
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</body>
</html>