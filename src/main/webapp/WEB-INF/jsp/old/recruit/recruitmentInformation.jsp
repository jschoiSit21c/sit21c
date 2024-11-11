<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
<head>
    <meta charset="UTF-8">
    <title>채용정보 & (채용신청서 작성)</title>
</head>
    <style>
        body {
		      font-family: Arial, sans-serif;
		    margin: 0;
		    padding: 0;
		    line-height: 1.6;
   			 background-color: #f9f9f9;
        }
        main {
			    padding: 20px;
			    background-color: #fff;
			}
        .recruit{
		    display: flex;
		    flex-direction: column;
		    align-items: center;
		    justify-content: center;
		    text-align: center;
		    padding: 60px;
		    margin: 0 auto; /* 페이지 가운데 정렬 */
		    max-width: 1200px; /* 최대 너비 설정 */
        }
        .Qualifications{
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
            max-width: 1000px;
            gap: 10px;
        }
        .item {
            background-color: #fff;
            border: 2px solid #ddd;
            border-radius: 30px;
            padding: 15px 10px;
            width: calc(33% - 10px);
            text-align: center;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
/*         .item img { */
/*             width: 30px; */
/*             height: 30px; */
/*             margin-bottom: 10px; */
/*         } */
        .item p {
            margin: 0;
            font-size: 14px;
            color: #333;
        }
        .container {
            width: 80%;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            text-align: left;
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f4f4f4;
            width: 20%;
        }
        .footer {
            text-align: center;
            font-size: 0.9em;
            color: #555;
        }
		.content_title1	{  
			clear:both;width:18%; 
			margin:0 auto; 
			padding:20px 10px 5px 10px;
			font-size:24px; text-align:center;
			border-bottom:1px solid #a5a5a5;
			margin-bottom:30px;
		}
		.content_title_slogon{
			width:100%; 
			margin:0 auto; 
			padding:0px 10px 10px 10px;
			font-size:22px; 
			color:#3960ac;
			text-align:center;
		}
		.content_title_slogon p{
			padding:0px 10px 5px 10px;
			font-size:18px; 
			color:#232323;
			text-align:center;
			margin-bottom:20px;
			line-height:26px;
		}
		.Condition{
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
            max-width: 1000px;
            gap: 10px;
        }
        .item2 {
            background-color: #fff;
            border: 2px solid #ddd;
            border-radius: 30px;
            padding: 15px 10px;
            width: calc(33% - 50px);
            text-align: center;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
/*         .item2 img { */
/*             width: 30px; */
/*             height: 30px; */
/*             margin-bottom: 10px; */
/*         } */
        .item2 p {
            margin: 0;
            font-size: 18px;
            color: #333;
        }
        .triangle{
        	display:inlie-block;
        	border:10px solid transparent;
        }
        .triangle-left{
        	border-left-color:black;
        }
        
       	.btn {
            display: inline-block;
            padding: 0.8rem 2rem;
            background-color: #2879ff;
            color: white;
            text-decoration: none;
            border-radius: 50px;
            font-weight: 600;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            margin: 10px 0px;
        }

        .btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }
    </style>
<body>
	
	
<!-- 	<section id="recruit">
	    <div class="container">
	        <h1>채용정보 & (채용신청서 작성)</h1>
	    </div>
    </section> -->
	<main>
		<section class="recruit">
		  <div class="content_title1">
			 채용정보	
		  </div>
		  <div class="content_title_slogon">
			 미래를 이끌어 갈 참신하고 유능한 인재
			 <p>소프트아이텍의 채용프로세스를 안내합니다. </p>	
		  </div>
		  <div class="container">
		  	 <table style="padding:20px; font-size:1.5em;">
		  	 	<tr>
		  	 		<th style="text-align:center; border-bottom: 0px solid #ddd">
						자격조건		  	 		
		  	 		</th>
		  	 	</tr>
		  	 </table>
			 <div class="Qualifications">
			        <div class="item">
			            <p>신입 및 경력<br>남/여 구분없음</p>
			        </div>
			        <div class="item">
			            <p>정보처리기사/산업기사<br>이에 준하는 자격증 소지자(우대)</p>
			        </div>
			        <div class="item">
			            <p>컴퓨터관련학과,<br>다양한 기술 및 개발 경력자 우대</p>
			        </div>
			        <div class="item">
			            <p>JAVA프로그래머,<br>컨설턴트(필요시)</p>
			        </div>
			        <div class="item">
			            <p>전자정부 프레임워크 또는<br>기타 프레임워크 사용 경험자</p>
			        </div>
			        <div class="item">
			            <p>s/w 개발을 위한 pc 조작이 가능하고,<br>회사 활동이 가능한 장애우 응시 가능</p>
			        </div>
			   </div>
			   <br/>
		       <table>
		            <tr>
		                <th>준비할 서류</th>
		                <td>
		                    신입사원, 인턴사원 지원자는 이력서(사진부착), 자기소개서를 제출합니다.<br>
		                    경력사원 지원자는 이력서(사진부착), 자기소개서(경력사항 위주), 경력증명서(S/W산업협회)를 제출합니다.<br>
		                    채용공고에 따라 임시지원서를 접수기관에 제출하며, 면접 진행시 졸업(예정)증명서, 최종학교 성적증명서를 요구할 수 있습니다.
		                </td>
		            </tr>
		            <tr>
		                <th>지원방법</th>
		                <td>
		                    수시채용(신입/인턴/경력)으로 진행되며, 사진 첨부된 이력서와 자기소개서를 작성 후 우편 또는 메일로 지원 가능합니다.<br>
		                    제출된 입사지원서류에 내용이 허위사실이 포함되거나 위변조했을 때에는 최종합격을 취소할 수 있습니다.
		                </td>
		            </tr>
		            <tr>
		                <th>지원방법</th>
		                <td>
		                    수시채용(신입/인턴/경력)으로 진행되며, 사진 첨부된 이력서와 자기소개서를 작성 후 우편 또는 메일로 지원 가능합니다.<br>
		                    제출된 입사지원서류에 내용이 허위사실이 포함되거나 위변조했을 때에는 최종합격을 취소할 수 있습니다.
		                </td>
		            </tr>
<!-- 		            <tr> -->
<!-- 		                <th>채용절차</th> -->
<!-- 		                <td> -->
<!-- 		                    서류전형 → 1차 면접(실무) → 2차 면접(임원) → 최종입사  -->
<!-- 		                </td> -->
<!-- 		            </tr> -->
		            <tr>
		                <th>합격자 발표</th>
		                <td>
		                    서류전형 결과는 합격자에 한하여 개별적으로 유선 또는 이메일 개별 통보<br>
		                    입사지원에서 서류전형, 면접, 최종합격 발표에는 최대 약 2주 정도의 기간이 소요됩니다.
		                </td>
		            </tr>
		            <tr>
		                <th>문의처</th>
		                <td>
		                    <span style="font-weight:bold;">대표전화:</span> 042-520-8104<br>
		                    <span style="font-weight:bold;">채용문의:</span> 이메일 tklee1@sit21c.com
		                </td>
		            </tr>
		        </table>
			    <table style="padding:20px; font-size:1.5em;">
			  		<tr>
			  	 		<th style="text-align:center; border-bottom: 0px solid #ddd">
							채용절차		  	 		
			  	 		</th>
			  	 	</tr>
			  	 </table>
			  	 <div class="Condition">
			        <div class="item2">
			            <p>서류전형</p>
			        </div>
			        <div class="triangle triangle-left"></div>   
			        <div class="item2">
			            <p>1차 면접(실무)</p>
			        </div>
			        <div class="triangle triangle-left"></div>   
			        <div class="item2">
			            <p>2차 면접(임원)</p>
			        </div>
			        <div class="triangle triangle-left"></div>   
			        <div class="item2">
			            <p>최종입사</p>
			        </div>
			    </div>
		    </div>
		    <div><a class="btn" href="/recruit/recruitmentMain">채용공고이동</a></div>
		</section>
		 
	</main>
</body>
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</html>