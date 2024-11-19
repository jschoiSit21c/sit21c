<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=1280">
<title>소프트아이텍 - 팝업작성</title>
<!-- summernoteCSS -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.css" rel="stylesheet">
</head>
<body class="sub-page">
<!-- 상단 -->
<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
<!-- Summernote JS CDN -->
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.js"></script>
	<!-- 서브 페이지 1-->
	<div class="sub-page-content">
		<h2 class="sub-page-title">팝업 작성</h2>
		<section id="popUp-form">
			<form id="popUpForm" method="post" class="popUp-form" onsubmit="return false;">
				<!-- 제목 -->
				<div class="form-group">
					<label for="title">제목</label>
					<input type="text" id="popUpTitle" name=popUpTitle class="form-control" required>
				</div>
				<!-- 내용 -->
				<div class="form-group">
					<label for="popUpContent">내용</label>
					<textarea id="popUpContent" name="popUpContent"></textarea>
				</div>
				<!-- 팝업 기간 -->
				<div class="form-group">
					<label for="popUpStartTime">팝업기간</label>
					<input type="date" id="popUpStartTime" name="popUpStartTime" required> ~ 
					<input type="date" id="popUpEndTime" name="popUpEndTime" required>
				</div>
				
				<!-- 버튼 -->
				<div class="form-buttons">
					<button type="submit" class="btn-submit">저장하기</button>
				</div>
			</form>
		</section>

	</div>

	<!--// 서브 전체내용 1 -->
	
	
<script>
	$(document).ready(function () {
		//summernote 초기화
		$('#popUpContent').summernote({
			height: 600, // 기본 높이 300px
	        callbacks : {
	            // 파일 업로드
	            onImageUpload : function (files) {
	                for(let i=0; i < files.length; i++){
	                    // 이미지가 여러개일 경우
	                    imageUploader(files[i]);
	                }
	            },
	            // 파일 삭제
	            onMediaDelete: function ($target){
	                if(confirm("이미지를 삭제하시겠습니까?")){
	                    let fileName = $target.attr('src').split('/').pop();
	                    deleteFile(fileName);
	                }
	            }
	        }
		});
		
		
		function imageUploader(file, el) {
			var formData = new FormData();
			formData.append('file', file);

		    $.ajax({
		       url : "/popup/imageUpload",
		       type : "POST",
		       data : formData,
		        // contentType, processData 설정 안하면 TypeError: Illegal invocation 오류가 발생한다
		        contentType: false,
		        processData: false,
		       encType : "multipart/form-data",
		       success : function (data) {
		           // 글에 이미지 넣기
		           $("#popUpContent").summernote("insertImage","/uploadPath/"+data.reFileName,function($image) {
		        	   //이미지 넓이 설정
						$image.css('width', "30%");
					});
		           
		           
		       },
		        error(e){
		           console.log("error : "+ e);
		        }
		    });
		}
		// 이미지 삭제
		function deleteFile(fileName) {
		    let formData = new FormData();
		    formData.append("file", fileName);

		    $.ajax({
		        url : "/popup/imageDelete",
		        type : "POST",
		        data : formData,
		        // contentType, processData 설정 안하면 TypeError: Illegal invocation 오류가 발생한다
		        contentType: false,
		        processData: false,
		        encType : "multipart/form-data"
		    });
		}
		
		$("#popUpForm").on("submit", function(e){
			
			
			$.ajax({
				url: "/admin/savePopUp",
				type: "POST",
				dataType: "json",
				contentType: "application/json",
				data: JSON.stringify({
					title : $("#popUpTitle").val(),
					content: $('#popUpContent').summernote('code'),
					popStart : $("#popUpStartTime").val(),
					popEnd : $("#popUpEndTime").val(),
				}),
			}).done(data => {
				if(data.isSuccess){
					alert("팝업 정보가 저장되었습니다.");	
					location.href='/admin/popUpList';
				}else{
					alert("팝업 정보 저장에 실패하였습니다.");	
				}
				
			}).fail(data => {
				alert("팝업 정보 저장에 실패하였습니다.");
			})
		});
		

		
		
	});
</script>
<!-- 하단 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</body>
</html>