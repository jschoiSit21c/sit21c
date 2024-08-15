<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Company Vision</title>
    <!-- Swiper CSS -->
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
</head>
<body class="bg-gray-100 text-gray-800">
    <!-- 상단 -->
    <jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
    
    <!-- Main Content Section -->
    <main class="container mx-auto p-8">
        <section class="bg-white p-6 rounded-lg shadow-lg">
            <h1 class="text-3xl font-bold mb-4 text-center">Our Vision</h1>
            
            <!-- Swiper -->
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <!-- Slide 1 -->
                    <div class="swiper-slide">
                        <div class="flex flex-col items-center">
                            <img src="https://via.placeholder.com/800x400" alt="Vision Image" class="w-full mb-4 rounded">
                            <p class="text-center text-lg">
                                Our vision is to become a leading company in our industry, renowned for our commitment to excellence, innovation, and sustainability. We strive to create a positive impact on society and the environment through our products and services.
                            </p>
                        </div>
                    </div>
                    
                    <!-- Slide 2 -->
                    <div class="swiper-slide">
                        <div class="flex flex-col items-center">
                            <img src="https://via.placeholder.com/800x400" alt="Excellence Image" class="w-full mb-4 rounded">
                            <h2 class="text-2xl font-bold mb-2">Commitment to Excellence</h2>
                            <p>
                                We prioritize quality in everything we do, from the products we manufacture to the services we provide. Our dedication to excellence ensures that we consistently meet and exceed customer expectations.
                            </p>
                        </div>
                    </div>
                    
                    <!-- Slide 3 -->
                    <div class="swiper-slide">
                        <div class="flex flex-col items-center">
                            <img src="https://via.placeholder.com/800x400" alt="Innovation Image" class="w-full mb-4 rounded">
                            <h2 class="text-2xl font-bold mb-2">Innovation</h2>
                            <p>
                                Innovation is at the heart of our business. We invest in research and development to bring cutting-edge solutions to the market, driving progress and staying ahead of industry trends.
                            </p>
                        </div>
                    </div>
                    
                    <!-- Slide 4 -->
                    <div class="swiper-slide">
                        <div class="flex flex-col items-center">
                            <img src="https://via.placeholder.com/800x400" alt="Sustainability Image" class="w-full mb-4 rounded">
                            <h2 class="text-2xl font-bold mb-2">Sustainability</h2>
                            <p>
                                We are committed to sustainability and responsible business practices. Our initiatives focus on reducing our environmental footprint, promoting social responsibility, and ensuring economic viability for future generations.
                            </p>
                        </div>
                    </div>
                </div>

                <!-- Add Pagination -->
                <div class="swiper-pagination"></div>

                <!-- Add Navigation -->
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
        </section>
    </main>
    
    <!-- 하단 -->
    <jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>

    <!-- Swiper JS -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script>
      const swiper = new Swiper('.swiper-container', {
        loop: true,
        pagination: {
          el: '.swiper-pagination',
          clickable: true,
        },
        navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev',
        },
      });
    </script>
</body>
</html>
