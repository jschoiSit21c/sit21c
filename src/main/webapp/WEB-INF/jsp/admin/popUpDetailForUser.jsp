<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/layout.css">
</head>
<body>
<div class="sub-page-content job-detail-page">
		<section class="job-detail-section">
			<div class="job-detail-header">
				<h1 class="job-title">${result.title }</h1>
			</div>
			<div class="job-detail-info">
				<div class="job-detail-row">
					<p>${result.content }</p>
				</div>
			</div>
		</section>
		<a class="back-button href="#" onclick="javascript:window.close()">닫기</a>
	</div>
</body>
</html>