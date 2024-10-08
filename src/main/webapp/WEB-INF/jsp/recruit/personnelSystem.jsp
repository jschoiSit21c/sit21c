<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
<head>
	<meta charset="UTF-8">
    <title>소프트아이텍 - 인사제도</title>
	<style>
	    
	    .container {
	        text-align: center;
	        padding-bottom: 50px;
	        background-color: white;
	        max-width: 1200px;
	        margin: 0 auto;
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
	    .team-image {
	        width: 100%;
	        height: auto;
	        margin-bottom: 20px;
	    }
	    .grid {
	        display: grid;
	        grid-template-columns: repeat(4, 1fr);
	        gap: 1px;
	        background-color: #f0f0f0;
	    }
	    .grid-item {
	        background-color: white;
	        padding: 20px;
	        text-align: center;
	    }
	    h2 {
	        margin-top: 0;
	        font-size: 18px;
	        font-weight: bold;
	    }
	    p {
	        font-size: 14px;
	        line-height: 1.5;
	        margin: 0;
	        text-align: center;
	    }
	</style>
</head>
<body>
	<section>
		 <div class="container">
		 	<div class="text-mid title">
			    <h1>인재상</h1>
		 	</div>
	        <img src="/img/personnelSystem_main.jpg" alt="비즈니스 팀" class="team-image">
	        <div class="grid">
	            <div class="grid-item">
	                <h2>창조적사고</h2>
	                <p>타성에 얽매이지 않고 창의적 사고를 바탕으로 업무의 개선과 혁신에 임하려는 자세</p>
	            </div>
	            <div class="grid-item">
	                <h2>혁신적사고</h2>
	                <p>낡은 사고를 벗어나 혁신적 변화를 통해 업무의 발전을 도모하려는 자세</p>
	            </div>
	            <div class="grid-item">
	                <h2>효율적사고</h2>
	                <p>정량적인 결과보다 정성적이며, 효율적인 과정을 지향하려는 자세</p>
	            </div>
	            <div class="grid-item">
	                <h2>긍정적사고</h2>
	                <p>다른 누구에게 의지하려하지 않고, 본인의 의지와 본인의 열정으로 적극적이고 능동적으로 대처하려는 자세</p>
	            </div>
	        </div>
	    </div>
		<div class="container">
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