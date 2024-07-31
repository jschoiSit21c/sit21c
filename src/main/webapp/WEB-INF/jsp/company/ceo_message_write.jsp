<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About 소프트아이텍 - CEO 메시지</title>
<link rel="stylesheet" href="/css/company/ceo.css" type="text/css">
    <style>
        .container {
            width: 80%;
            margin: 0 auto;
            margin-top: 50px;
        }
        h2 {
            text-align: center;
        }
        .form-group {
            margin-bottom: 20px;
        }
        #save-btn-container {
            text-align: right; /* 버튼을 오른쪽으로 정렬 */
        }
        .btn-custom {
            padding: 10px 20px;
            font-size: 14px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            text-decoration: none;
        }
        .btn-custom:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
	<!-- 상단 -->
	<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- Summernote CSS & JS (Lite Version) -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/summernote-lite.min.js"></script>
	
    <!-- 솔루션 섹션 -->
    
    <section id="company">
	    <div class="container">
	        <h2>CEO 메시지 수정</h2>
	        <form id="ceo-message-form">
	            <div class="form-group">
	                <textarea id="ceo-message-editor" name="ceoMessage"></textarea>
	            </div>
	            <div id="save-btn-container">
	                <button type="submit" id="save-btn" class="btn-custom">저장</button>
	            </div>
	        </form>
	    </div>
    </section>
    <script>
        $(document).ready(function() {
            // Summernote 초기화
            $('#ceo-message-editor').summernote({
                height: 300,                 // 에디터 높이 설정
                focus: true,                 // 에디터 로딩 후 포커스 자동 설정
                lang: 'ko-KR'                // 한국어 설정 (추가 언어 파일 필요 시 로드)
            });

            // 폼 제출 이벤트 핸들러
            $('#ceo-message-form').on('submit', function(e) {
                e.preventDefault();

                // Summernote의 HTML 콘텐츠를 가져옴
                var ceoMessageContent = $('#ceo-message-editor').summernote('code');
                
                // 서버로 데이터를 전송하거나 다른 처리를 수행할 수 있습니다.
                console.log(ceoMessageContent);

                alert('CEO 메시지가 저장되었습니다.');
            });
        });
    </script>
	<!-- 하단 -->
	<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</body>
</html>