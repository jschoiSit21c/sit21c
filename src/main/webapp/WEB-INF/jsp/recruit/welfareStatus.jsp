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

/* .welfareStatus h2 {
    font-size: 2em;
    color: #333;
    margin-bottom: 20px;
}

.vision-chart img {
    width: 100%;
    max-width: 400px; /* 이미지의 최대 너비 설정 */
    height: auto;
    border-radius: 10px;
} */
</style>
</head>
<body>
    
    <main>
        <section class="welfareStatus">
            <h2>경영이념</h2>
            <div class="vision-chart">
                <img src="/img/helth.png" alt="복지현황">
            </div>
        </section>
    </main>
    
</body>
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</html>
