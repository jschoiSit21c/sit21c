<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/layout.css">
    <script src="/js/script.js" defer></script>
    
    <!-- jQuery 3.6.4 CDN -->
	<script src="https://code.jquery.com/jquery-3.6.4.min.js" crossorigin="anonymous"></script>
    <c:choose>
    	<c:when test="${fn:contains(pageContext.request.requestURL, 'index.jsp')}">
        <!-- index Header -->
	<header id="header">
		<div class="header-left">
			<img src="/img/logo_w.png" alt="소프트아이텍 로고" class="logo">
		</div>
		<nav class="header-nav">
			<ul>
				<li class="menu-item">
					<a href="#section1">COMPANY</a>
					<div class="submenu">
						<a href="/company/aboutSIT">About</a>
						<a href="/company/history">연혁</a>
						<a href="/company/location">오시는길</a>
					</div>
				</li>
				<li class="menu-item">
					<a href="#section2">BUSINESS</a>
					<div class="submenu">
						<a href="/business/publicDigitalService">공공디지털서비스</a>
						<a href="/business/ictInfraService">ICT인프라서비스</a>
						<a href="/business/itConsultingService">IT컨설팅서비스</a>
					</div>
				</li>
				<li class="menu-item">
					<a href="#section3">RECRUIT</a>
					<div class="submenu">
						<a href="/recruit/recruitmentMain">채용정보</a>
						<a href="/recruit/talent">인재상</a>
					</div>
				</li>
				<li class="menu-item">
					<a href="#section4">PR CENTER</a>
					<div class="submenu">
						<a href="#ci">CI 소개</a>
						<a href="#partnership">Partnership</a>
						<a href="#news">News</a>
					</div>
				</li>
				<security:authorize access="hasRole('SA')">
					<li class="menu-item">
						<a href="#section5">ADMIN</a>
						<div class="submenu">
							<a href="/admin/popUpList">팝업 관리</a>
						</div>
					</li>
				</security:authorize>
			</ul>
		</nav>
	<div class="header-right">
		<div class="hamburger" onclick="toggleMenu()">
			<div></div>
			<div></div>
			<div></div>
		</div>
	</div>	
	</header>
    <!-- //Header -->
        	</c:when>
        	<c:otherwise>
        		<!-- 인덱스 아닐경우 -->
   <!-- Header -->
	<header id="s_header">
		<div class="s_header-left">
			<a href="/">
				<img src="/img/logo_color.png" alt="소프트아이텍 로고" class="logo">
			</a>
		</div>
		<nav class="s_header-nav">
			<ul>
				<li class="menu-item">
					<a href="#section1">COMPANY</a>
					<div class="submenu">
						<a href="/company/aboutSIT">About</a>
						<a href="/company/history">연혁</a>
						<a href="/company/location">오시는길</a>
					</div>
				</li>
				<li class="menu-item">
					<a href="#section2">BUSINESS</a>
					<div class="submenu">
						<a href="/business/publicDigitalService">공공디지털서비스</a>
						<a href="/business/ictInfraService">ICT인프라서비스</a>
						<a href="/business/itConsultingService">IT컨설팅서비스</a>
					</div>
				</li>
				<li class="menu-item">
					<a href="#section3">RECRUIT</a>
					<div class="submenu">
						<a href="/recruit/recruitmentMain">채용정보</a>
						<a href="/recruit/talent">인재상</a>
					</div>
				</li>
				<li class="menu-item">
					<a href="#section4">PR CENTER</a>
					<div class="submenu">
						<a href="#ci">CI 소개</a>
						<a href="#partnership">Partnership</a>
						<a href="#news">News</a>
					</div>
				</li>
				<security:authorize access="hasRole('SA')">
					<li class="menu-item">
						<a href="#section5">ADMIN</a>
						<div class="submenu">
							<a href="/admin/popUpList">팝업 관리</a>
						</div>
					</li>
				</security:authorize>
			</ul>
		</nav>
	<div class="header-right">
		<div class="hamburger" onclick="toggleMenu()">
			<div></div>
			<div></div>
			<div></div>
		</div>
	</div>	
	</header>
    <!-- //Header -->
	        	</c:otherwise>
    </c:choose>
	<!-- 전체 화면 메뉴 -->
	<div id="fullscreen-menu" class="fullscreen-menu">
		<div class="close-btn" onclick="toggleMenu()">✕</div>
		<div class="menu-content">
			<div class="menu-section">
				<h2>COMPANY</h2>
				<ul>
					<li><a href="/company/aboutSIT">About</a></li>
					<li><a href="/company/history">연혁</a></li>
					<li><a href="/company/location">오시는길</a></li>
				</ul>
			</div>
			<div class="menu-section">
				<h2>BUSINESS</h2>
				<ul>
					<li><a href="/business/publicDigitalService">공공디지털서비스</a></li>
					<li><a href="/business/ictInfraService">ICT인프라서비스</a></li>
					<li><a href="/business/itConsultingService">IT컨설팅서비스</a></li>
				</ul>
			</div>
			<div class="menu-section">
				<h2>RECRUIT</h2>
				<ul>
					<li><a href="/recruit/recruitmentMain">채용정보</a></li>
					<li><a href="/recruit/talent">인재상</a></li>
				</ul>
			</div>
			<div class="menu-section">
				<h2>PR CENTER</h2>
				<ul>
					<li><a href="#ci">CI 소개</a></li>
					<li><a href="#partnership">Partner ship</a></li>
					<li><a href="#news">News</a></li>
				</ul>
			</div>
			<security:authorize access="hasRole('SA')">
				<div class="menu-section">
					<h2>ADMIN</h2>
					<ul>
						<li><a href="/admin/popUpList">팝업 관리</a></li>
					</ul>
				</div>
			</security:authorize>
		</div>
		<!-- 로그인/로그아웃 섹션 -->
		<!-- 로그인/로그아웃 섹션 -->
		<div class="login-logout-section">
			<c:choose>
				<c:when test="${sessionScope.loginInfo != null}">
					<p>${sessionScope.loginInfo.name}님, 환영합니다.</p>
					<a href="/login/executeLogout">로그아웃</a>
				</c:when>
				<c:otherwise>
					<p>관리자기능</p>
					<a href="/login/loginForm">로그인</a>
				</c:otherwise>
			</c:choose>
		</div>
		<!-- //로그인/로그아웃 섹션 -->
	</div>
	<!-- //전체 화면 메뉴 -->