<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>

	<!-- Basic Page Needs
================================================== -->
	<meta charset="utf-8">
	<title>새생활교회</title>

	<!-- Mobile Specific Metas
================================================== -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="Construction Html5 Template">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">

	<!-- Favicon
================================================== -->
	<link rel="apple-touch-icon" sizes="57x57" href="images/favicon/apple-icon-57x57.png">
	<link rel="apple-touch-icon" sizes="60x60" href="images/favicon/apple-icon-60x60.png">
	<link rel="apple-touch-icon" sizes="72x72" href="images/favicon/apple-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="76x76" href="images/favicon/apple-icon-76x76.png">
	<link rel="apple-touch-icon" sizes="114x114" href="images/favicon/apple-icon-114x114.png">
	<link rel="apple-touch-icon" sizes="120x120" href="images/favicon/apple-icon-120x120.png">
	<link rel="apple-touch-icon" sizes="144x144" href="images/favicon/apple-icon-144x144.png">
	<link rel="apple-touch-icon" sizes="152x152" href="images/favicon/apple-icon-152x152.png">
	<link rel="apple-touch-icon" sizes="180x180" href="images/favicon/apple-icon-180x180.png">
	<link rel="icon" type="image/png" sizes="192x192"  href="images/favicon/android-icon-192x192.png">
	<link rel="icon" type="image/png" sizes="32x32" href="images/favicon/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="96x96" href="images/favicon/favicon-96x96.png">
	<link rel="icon" type="image/png" sizes="16x16" href="images/favicon/favicon-16x16.png">
	<link rel="manifest" href="images/favicon/manifest.json">
	<meta name="msapplication-TileColor" content="#ffffff">
	<meta name="msapplication-TileImage" content="images/favicon/ms-icon-144x144.png">
	<meta name="theme-color" content="#ffffff">

	<!-- CSS
================================================== -->
	<!-- Bootstrap -->
	<link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">
	<!-- FontAwesome -->
	<link rel="stylesheet" href="plugins/fontawesome/css/all.min.css">
	<!-- Animation -->
	<link rel="stylesheet" href="plugins/animate-css/animate.css">
	<!-- slick Carousel -->
	<link rel="stylesheet" href="plugins/slick/slick.css">
	<link rel="stylesheet" href="plugins/slick/slick-theme.css">
	<!-- Colorbox -->
	<link rel="stylesheet" href="plugins/colorbox/colorbox.css">
	<!-- font-face -->
	<link rel="stylesheet" href="css/font-faces.css"> 
	<!-- Template styles-->
	<link rel="stylesheet" type="text/css" title="newlife Styles" href="/css/style.css">
</head>

<body>
<div class="body-inner">
  
<!-- header include start -->
<%@ include file="/WEB-INF/views/parts/header.jsp" %>
<!-- header include end -->
	
	
<!--**********************************
      	배너부분
***********************************-->
<div id="banner-area" class="banner-area" style="background-image:url(images/banner/banner-river.png)">
  <div class="banner-text">
    <div class="container">
        <div class="row">
          <div class="col-lg-12">
              <div class="banner-heading">
                <h1 class="banner-title">공지사항</h1>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb justify-content-center">
                      <li class="breadcrumb-item"><a href="#">새생활교회</a></li>
                      <li class="breadcrumb-item"><a href="#">교회 소개</a></li>
                      <li class="breadcrumb-item active" aria-current="page">인사말</li>
                    </ol>
                </nav>
              </div>
          </div><!-- Col end -->
        </div><!-- Row end -->
    </div><!-- Container end -->
  </div><!-- Banner text end -->
</div><!-- Banner area end --> 


<!-- 메인 컨테이너 -->
<section id="main-container" class="main-container">
  <div class="container">
    <div class="row">
        <div class="col-lg-6">
          <h3 class="column-title">이전에 없었던 노래로 나 주님을 경배해!!</h3>
          <p>지금까지의 역사에 없던, 어쩌면 지금까지의 모든 역사를 '갈무리하는 마지막 시대'가, 마지막 대전환이 올 것을 정말 작은 심령으로 담대히 외쳤습니다!!!
          <br><br/>그런데 마침내 실제로, 우리나라뿐만 아니라, 전 세계 사람들이 인정하는 전 세계적인 대전환이 2020년에 일어났습니다!!</p>
          <blockquote class="green-quote"><p>앞으로 이 2020년은 전 세계의 모든 역사책에 크고 상세하게 기록될 것입니다.</p></blockquote>
          <br/><p>이렇게 하나님께서 주도하신 대전환에 분명히 하나님의 크신 목적이 있습니다.</p>
          <br><blockquote class="blue-quote"><p>구약의 애굽에서 신약의 광야를 지나온 바로 지금 이때야말로...
          <br/>하나님의 구원 역사를 완성하시는 "가나안의 시대"라고 확신합니다!!!</p></blockquote>
          <br><p>세상의 종말과도 맞물린 때이지만, 하나님의 성도들에게는 구원 역사가 완성되는 역사적인 장막절입니다!!!</p>
          <br><blockquote class="red-quote"><p>'열매 맺는 이때', '주 예수의 신부로 서는 이때'에 우리 모두 힘차게 노래하며, '지혜롭고 사랑스러운 다음세대'와 함께 같이 걷기를 기도합니다!!!</p></blockquote>
		</div><!-- Col end -->

		<!-- 이미지 carrousel -->
        <div class="col-lg-6 mt-5 mt-lg-0">          
          <div id="page-slider" class="page-slider small-bg">
			  <!-- 이미지 사이즈: 555x330 -->
              <div class="item" style="background-image:url(images/introduction/yongduck1.png)">
              </div><!-- Item 1 end -->

              <div class="item" style="background-image:url(images/introduction/yongduck2.png)">
              </div><!-- Item 2 end -->

              <div class="item" style="background-image:url(images/introduction/yongduck3.png)">
              </div><!-- Item 3 end -->
          </div><!-- Page slider end-->        
          <div class="who-i-am">
          	<p><span>새생활 예배 섬김이</span><span class="who">김용덕 목사</span></p>
          </div>
          
        </div><!-- Col end -->
    </div><!-- Content row end -->

  </div><!-- Container end -->
</section><!-- Main container end -->


<!-- footer include start -->
<%@ include file="/WEB-INF/views/parts/footer.jsp" %>
<!-- footerinclude end -->


<!-- Javascript Files
================================================== -->

<!-- initialize jQuery Library -->
<script src="plugins/jQuery/jquery.min.js"></script>
<!-- Bootstrap jQuery -->
<script src="plugins/bootstrap/bootstrap.min.js" defer></script>
<!-- Slick Carousel -->
<script src="plugins/slick/slick.min.js"></script>
<script src="plugins/slick/slick-animation.min.js"></script>
<!-- Color box -->
<script src="plugins/colorbox/jquery.colorbox.js"></script>
<!-- shuffle -->
<script src="plugins/shuffle/shuffle.min.js" defer></script>

<!-- Template custom -->
<script src="js/script.js"></script>

</div><!-- Body inner end -->
</body>

</html>