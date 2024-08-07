<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/css/font.css" type="text/css">
<link rel="stylesheet" href="/css/main.css" type="text/css">
<header>
    <nav>
        <!-- <ul class="horizontal-nav">
            <li><a href="/">홈</a></li>
            <li><a href="/about">회사소개</a></li>
            <li><a href="/business">비즈니스</a></li>
            <li><a href="/solution">솔루션</a></li>
            <li><a href="/contact">고객지원</a></li>
        </ul> -->
        
        
        
        <ul class="horizontal-nav">
		    <li><a href="/">홈</a></li>
		    <li class="dropdown">
		        <a class="dropbtn">COMPANY</a>
		        <ul class="dropdown-content">
		            <li><a href="/company/aboutSIT">About 소프트아이텍</a></li>
		            <li><a href="/company/ceo">CEO 메시지</a></li>
		            <li><a href="/company/vision">비전</a></li>
		            <li><a href="/company/history">연혁</a></li>
		            <li><a href="/company/organization">조직도</a></li>
		            <li><a href="/company/location">오시는길</a></li>
		        </ul>
		    </li>
		    <li><a href="/business">BUSINESS</a></li>
		    <li><a href="/recruit">Recruit</a></li>
		    <li class="dropdown">
		    	<a class="dropbtn">PR Center</a>
		  		<ul class="dropdown-content">
		            <li><a href="/pr/ci">CI</a></li>
		            <li><a href="/pr/partnership">Partner Ship</a></li>
		        </ul>
		    </li>
		    
		    
		    <!-- <li><a href="/about">회사소개</a></li>
            <li><a href="/business">비즈니스</a></li>
            <li><a href="/solution">솔루션</a></li> -->
		    <li><a href="/contact">고객지원</a></li>
		</ul>
		<c:if test="${sessionScope.loginInfo == null}">
			<a class="logout" href="/login/loginForm">로그인</a>
		</c:if>
		<c:if test="${sessionScope.loginInfo != null}">
			<a class="logout" href="/login/executeLogout">로그아웃</a>
		</c:if>
    </nav>
</header>