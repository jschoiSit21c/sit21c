<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나라장터 멘토링 연습 - solution</title>
</head>
<body>
	<!-- 상단 -->
	<jsp:include page="header.jsp"></jsp:include>
    <!-- 고객지원 섹션 -->
    <section id="contact">
        <h2>고객지원</h2>
        <p>고객 지원 정보를 제공하는 섹션입니다. 여기에는 문의 방법, 고객센터 연락처, 자주 묻는 질문(FAQ) 등이 포함될 수 있습니다.</p>
        <h3>문의하기</h3>
        <form action="submit_contact_form" method="post">
            <label for="name">이름:</label>
            <input type="text" id="name" name="name" required><br>
            <label for="email">이메일:</label>
            <input type="email" id="email" name="email" required><br>
            <label for="message">메시지:</label><br>
            <textarea id="message" name="message" rows="5" required></textarea><br>
            <input type="submit" value="제출">
        </form>
        <h3>고객센터</h3>
        <p>전화: 1234-5678</p>
        <p>이메일: support@company.com</p>
        <h3>자주 묻는 질문 (FAQ)</h3>
        <p>자주 묻는 질문과 답변을 확인하세요.</p>
    </section>
	<!-- 하단 -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>