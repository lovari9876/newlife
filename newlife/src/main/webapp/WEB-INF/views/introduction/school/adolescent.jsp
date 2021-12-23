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
	<link rel="apple-touch-icon" sizes="57x57" href="/images/favicon/apple-icon-57x57.png">
	<link rel="apple-touch-icon" sizes="60x60" href="/images/favicon/apple-icon-60x60.png">
	<link rel="apple-touch-icon" sizes="72x72" href="/images/favicon/apple-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="76x76" href="/images/favicon/apple-icon-76x76.png">
	<link rel="apple-touch-icon" sizes="114x114" href="/images/favicon/apple-icon-114x114.png">
	<link rel="apple-touch-icon" sizes="120x120" href="/images/favicon/apple-icon-120x120.png">
	<link rel="apple-touch-icon" sizes="144x144" href="/images/favicon/apple-icon-144x144.png">
	<link rel="apple-touch-icon" sizes="152x152" href="/images/favicon/apple-icon-152x152.png">
	<link rel="apple-touch-icon" sizes="180x180" href="/images/favicon/apple-icon-180x180.png">
	<link rel="icon" type="image/png" sizes="192x192"  href="/images/favicon/android-icon-192x192.png">
	<link rel="icon" type="image/png" sizes="32x32" href="/images/favicon/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="96x96" href="/images/favicon/favicon-96x96.png">
	<link rel="icon" type="image/png" sizes="16x16" href="/images/favicon/favicon-16x16.png">
	<link rel="manifest" href="/images/favicon/manifest.json">
	<meta name="msapplication-TileColor" content="#ffffff">
	<meta name="msapplication-TileImage" content="/images/favicon/ms-icon-144x144.png">
	<meta name="theme-color" content="#ffffff">

	<!-- CSS
================================================== -->
	<!-- Bootstrap -->
	<link rel="stylesheet" href="/plugins/bootstrap/bootstrap.min.css">
	<!-- FontAwesome -->
	<link rel="stylesheet" href="/plugins/fontawesome/css/all.min.css">
	<!-- Animation -->
	<link rel="stylesheet" href="/plugins/animate-css/animate.css">
	<!-- slick Carousel -->
	<link rel="stylesheet" href="/plugins/slick/slick.css">
	<link rel="stylesheet" href="/plugins/slick/slick-theme.css">
	<!-- Colorbox -->
	<link rel="stylesheet" href="/plugins/colorbox/colorbox.css">
	<!-- font-face -->
	<link rel="stylesheet" href="/css/font-faces.css"> 
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
<div id="banner-area" class="banner-area banner-fixed">
  <div class="banner-text">
    <div class="container">
        <div class="row">
          <div class="col-lg-12">
              <div class="banner-heading">
                <h1 class="banner-title">시온의 영광 중고등부</h1>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb justify-content-center">
                      <li class="breadcrumb-item">새생활교회</li>
                      <li class="breadcrumb-item">교회 소개</li>
                      <li class="breadcrumb-item">교회 학교</li>
                      <li class="breadcrumb-item active" aria-current="page">시온의 영광 중고등부</li>
                    </ol>
                </nav>
              </div>
          </div><!-- Col end -->
        </div><!-- Row end -->
    </div><!-- Container end -->
  </div><!-- Banner text end -->
</div><!-- Banner area end --> 


<!--  #77aaff  (119,170,255)
      #99ccff (153,204,255)
      #bbeeff (187,238,255)
      #5588ff (85,136,255)
      #3366ff (51,102,255) -->
<!-- 교회학교 컨테이너: 중고등부 부서소개 -->
<section class="school-container adolescent">
  <div class="container">
    <div class="row justify-content-center"> <!-- justify-content-center 이거는 무조건 내부 박스친구를 center align !-->    
    <div class="col-lg-8 col-md-10 col-sm-11 col-12"> <!-- 박스크기 설정 -->
      <blockquote class="blockquote">
        <p>할렐루야 우리 하나님을 찬양하는 일이 선함이여 찬송하는 일이 아름답고 마땅하도다.</p>
        <div class="bible-box"><cite title="Source Title"><i class="fas fa-bible"></i>&nbsp;시편 147편 1절</cite></div>
      </blockquote>
      <div class="text-box">시온의 영광 중고등부는 
              다윗과 같이 하나님만을 사랑하고 찬송하며 
              하나님이 주신 언약의 말씀들이 삶을 통해 열매 맺는 예배 공동체입니다.<br><br>청소년시기의 다윗과 요셉 그리고 다니엘과 같이 
              하나님을 예배하고 찬송함으로 
              마지막 때에 메시아 게이트로 준비되고 있습니다!!<br>
      <blockquote class="blue-quote"><p>주님만을 기쁘게 찬양하는 다윗<br>주를 경외함으로 열방을 형통케 하는 요셉<br>어떤 상황에도 주님께 기도하는 다니엘</p></blockquote>
              여러분이 바로 그 주인공입니다.<br>다음세대 여러분을 환영합니다.</div>
    </div><!-- Col end -->
  </div><!-- Content row end -->
  </div><!-- Container end -->
</section><!-- contact-container end -->
    

<!-- footer include start -->
<%@ include file="/WEB-INF/views/parts/footer.jsp" %>
<!-- footer include end -->


<!-- Javascript Files
================================================== -->

<!-- initialize jQuery Library -->
<script src="/plugins/jQuery/jquery.min.js"></script>
<!-- Bootstrap jQuery -->
<script src="/plugins/bootstrap/bootstrap.min.js" defer></script>
<!-- Slick Carousel -->
<script src="/plugins/slick/slick.min.js"></script>
<script src="/plugins/slick/slick-animation.min.js"></script>
<!-- Color box -->
<script src="/plugins/colorbox/jquery.colorbox.js"></script>
<!-- shuffle -->
<script src="/plugins/shuffle/shuffle.min.js" defer></script>

<!-- Template custom -->
<script src="/js/script.js"></script>

</div><!-- Body inner end -->
</body>

</html>