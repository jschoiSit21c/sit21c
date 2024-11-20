<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
//팝업 시작
$(document).ready(function () {
	
// 		function getCookie(name){
// 			var value = ';${document.cookie};';
// 			var parts = value.split('; ${name}=');
// 			if(parts.length === 2){
// 				return part.pop().split(';').shift();
// 			}else{
// 				return null
// 			}
// 		}
		
		
			//불필요
//   window.open("https://dart.fss.or.kr/html/search/SearchCompanyIR_M.html?textCrpNM=소프트아이텍", "", "status=yes, toolbar=no, resizable=no, scrollbars=yes, width=750, height=720");
   
   
	$.ajax({
		url: "/admin/selectPopUpListForUser",
		type: "POST",
		dataType: "json",
		contentType: "application/json",
		
	}).done(data => {
		for(i=0;i<data.length;i++){
			
		var lRatio = data[i].popLeftRatio;
		var tRatio =  data[i].popTopRatio;
		var fWidth = window.screen.width;
		var fHeight = window.screen.height;
		var leftOpenPostion = fWidth * lRatio;
		var topOpenPostion = fHeight * tRatio;
		var temp = 'popUpforUser'+data[i].popUpId;
// 		console.log(temp+"<--템쁘")
// 		try{
// 			var popYn = getCookie(temp);
// 		}catch(e){
			
// 		}
// 		if(popYn !='N'){
// 			window.open("/admin/popUpDetailForUser?popUpId="+data[i].popUpId , "", "status=no, titlebar=no,toolbar=no,  menubar=no, scrollbars=yes,height="+data[i].popHeight+",width="+data[i].popWidth+",left="+leftOpenPostion +",top="+topOpenPostion+";");
// 		}
			window.open("/admin/popUpDetailForUser?popUpId="+data[i].popUpId , "", "status=no, titlebar=no,toolbar=no,  menubar=no, scrollbars=yes,height="+data[i].popHeight+",width="+data[i].popWidth+",left="+leftOpenPostion +",top="+topOpenPostion+";");

		}
	}).fail(data => {
		alert("팝업 정보 수정에 실패하였습니다.");
	})
  
});
//팝업종료
</script>
<body>

</body>
</html>