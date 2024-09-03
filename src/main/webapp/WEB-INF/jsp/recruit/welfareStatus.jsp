<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
<head>
<meta charset="UTF-8">
<title>복지현황 - 소프트아이텍</title>
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

.welfareStatus {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    text-align: center;
    padding: 20px;
    margin: 0 auto; /* 페이지 가운데 정렬 */
    max-width: 1200px; /* 최대 너비 설정 */
}

.welfareStatus h1 {
    color: #0066cc;
    font-size: 24px;
    margin-top: 40px; /* 상단 여백 추가 */
    margin-bottom: 5px;
    padding-top: 20px; /* 추가적인 패딩을 상단에 설정 */
}

/* .welfareStatus h2 {
    font-size: 2em;
    color: #333;
    margin-bottom: 20px;
}

.vision-chart img {
    width: 100%;
    max-width: 400px;
    height: auto;
    border-radius: 10px;
} */


</style>
</head>
<body>
    
    <main>
        <section class="welfareStatus">
            <h1>복지현황</h1>
            <div class="vision-chart">
                <img src="/img/helth.png" alt="복지현황">
            </div>
        </section>
    </main>
    
</body>
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</html>
