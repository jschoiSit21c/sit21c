<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>ICT 인프라서비스</title>

    </script>
	<style>
		body {
		    font-family: Arial, sans-serif;
		    margin: 0;
		    padding: 0;
		    line-height: 1.6;
		}
		
		#company {
		    background-color: #f4f4f4;
		    padding: 20px 0;
		    border-bottom: 1px solid #ddd;
		    text-align: center;
		}
		
		#company h1 {
		    margin: 0;
		    font-size: 2em;
		    color: #333;
		}
				
		footer {
		    background-color: #333;
		    color: white;
		    text-align: center;
		    padding: 10px 0;
		    position: relative; /* Fixed 대신 relative를 사용하여 내용이 더 있을 경우 푸터가 아래로 밀리도록 함 */
		    width: 100%;
		}
    </style>
</head>

<body>
	<!-- 상단 -->
	<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
	
	
	<section id="company">
	    <div class="container">
	        <h1>ICT 인프라서비스</h1>
	    </div>
    </section>
	<main>
		<section class="ictInfraService-section">
			<h2>ICT 인프라서비스입니다.</h2>
		</section>
	</main>
    <!-- 하단 -->
	<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</body>
</html>