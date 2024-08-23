<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
<head>
<meta charset="UTF-8">
<style>
    .container {
        text-align: center;
        padding: 50px;
        background-color: white;
    }
    h1 {
    	display: inline-block;
    	width: 150px;
        font-size: 24px;
        color: #333;
        border-bottom: 2px solid #F0F0F0;
        margin-bottom: 10px;
    }
    .sections {
        display: flex;
        justify-content: space-around;
        margin-top: 30px;
    }
    .section {
        width: 30%;
        text-align: center;
    }
    .section img {
    	display: inline-block;
        width: 140px;
        height: auto;
    }
    .section-title {
        font-size: 18px;
        margin-top: 10px;
        color: #333;
    }
    .section-description {
        font-size: 14px;
        color: #666;
        margin-top: 10px;
        line-height: 1.6;
    }
</style>
<title>소프트아이텍 - 인사제도</title>
</head>
<body>
	<section>
		<div class="container">
		    <h1>인재상</h1>
			<div class="sections">
				<img src="/img/personnelSystem_main.png" alt="인재상">
			</div>
		    <h1>인사제도</h1>
		    <p>회사와 직원이 함께 성장할 수 있는 "성과평가제도"를 도입하여 경쟁력 있는 인재를 육성</p>
			
		    <div class="sections">
		        <div class="section">
		            <img src="/img/personnelSystem1.png" alt="성과평가제도">
		            <div class="section-title">성과평가제도</div>
		            <div class="section-description">
		                성과평가를 통해 공정한 인사제도를 운영합니다. 매년 시행 되는 인사위원회에서 철저한 성과평가를 바탕으로 차별화된 보상체계를 운영합니다.
		            </div>
		        </div>
		        <div class="section">
		            <img src="/img/personnelSystem2.png" alt="승진제도">
		            <div class="section-title">승진제도</div>
		            <div class="section-description">
		                승진은 사내규정에 의거하여 연1회 정기승진(승진한한 경과자 중, 능력과 자격 등을 평가하여 선정) 특별승진(승진기준의 2년 이상 경과자 중, 근무성적 우수자 또는 회사공헌도를 평가하여 선정)을 실시합니다.
		            </div>
		        </div>
		        <div class="section">
		            <img src="/img/personnelSystem3.png" alt="교육지원">
		            <div class="section-title">교육지원</div>
		            <div class="section-description">
		                직원의 성장이 회사의 성장이라는 생각으로 직원의 직무능력 향상 뿐만 아니라 교육비지원 등 직원들의 업무능력향상, 스킬 업을 지원합니다.
		            </div>
		        </div>
		    </div>
		</div>
	</section>
</body>
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</html>