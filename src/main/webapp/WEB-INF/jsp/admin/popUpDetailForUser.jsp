<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/layout.css">
<style>
#popUpButtons{
text-align: right;
}
#popContent{
background:white;
box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);

}
.Padjust{
 padding:2px; font-size: 13px; background-color:#105cbf; color: #fff;  border-radius: 4px; cursor: pointer; 
}
.Padjust:hover{
 background-color:#1471e7; 
}
.closePop{
 padding-right:5px;padding-left:5px; font-size: 15px; background-color:#105cbf; color: #fff;  border-radius: 4px; cursor: pointer; 
}
.closePop:hover{
 background-color:#1471e7; 
}
#nToday{
padding-right:5px;padding-left:5px;font-size: 15px; right:0;
}
</style>
</head>
<script src="https://code.jquery.com/jquery-3.6.4.min.js" crossorigin="anonymous"></script>
<script>
function popUpAdjust(){
	var height = window.innerHeight;
	var width = window.innerWidth;
	var sLeft = window.screenLeft;
	var sTop = window.screenTop;
	var fWidth = window.screen.width;
	var fHeight = window.screen.height;
	
	var wRatio = sLeft/fWidth;
	var hRatio = sTop/fHeight;
	
	
	
	
	
	if(confirm("현재 팝업의 위치 및 크기를 저장하시겠습니까?")){
		$.ajax({
			url: "/admin/updatePopUpPosition",
			type: "POST",
			dataType: "json",
			contentType: "application/json",
			data: JSON.stringify({
				popUpId : ${result.popUpId},
				popWidth : width,
				popHeight : height,
				popLeftRatio : wRatio,
				popTopRatio : hRatio
			}),
		}).done(data => {
			if(data.isSuccess){
				alert("팝업 위치 및 크기정보가 저장되었습니다.");	
			}else{
				alert("팝업 위치 및 크기정보 저장에 실패하였습니다.");	
			}
			
		}).fail(data => {
			alert("팝업 위치 및 크기정보 저장에 실패하였습니다.");
		})
		
	}
	
}


$(document).ready(function () {
	function setCookie(name,value,expiredays){
		var today = new Date();
		today.setDate(today.getDate()+expiredays);
		document.cookie = name + "=" + escape(value) + "; path=/; expires=" + today.toGMTString()+";";
	}
	
	$("#close").click(function(){
		if($('#notToday').is(":checked")) {
			setCookie("popUpforUser${result.popUpId}","N",1);
		}
		self.close();
	});
});
</script>
<body>
<div class="job-detail-page">
<!-- 			<div class="job-detail-header"> -->
<%-- 				<h1 class="job-title">${result.title }</h1> --%>
<!-- 			</div> -->
			<div id="popContent">
				<div class="job-detail-row">
					<p>${result.content }</p>
				</div>
<%-- 			<security:authorize access="!hasRole('SA')"> --%>
			<div id="popUpButtons">
				<input type="checkbox" name="notToday" id="notToday"/> <span id="nToday">하루동안 이 창을 열지 않음</span>
<%-- 			</security:authorize> --%>
			<a class="closePop" href="#"  >닫기</a>
			<security:authorize access="hasRole('SA')">
				<button class="Padjust" type="button" onclick="javascript:popUpAdjust();">위치조정</button>
			</security:authorize>
			</div>
			</div>
<!-- 		<div class="job-admin-buttons"> -->
<!-- 		</div>		 -->
	</div>
</body>
</html>