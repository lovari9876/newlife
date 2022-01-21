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
	<title>새생활교회 - 푸른초장 초등부</title>

	<!-- Mobile Specific Metas
================================================== -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="한 걸음 더 나아가는 신앙 생활과 그 다음을 위해 한 걸음 더 나아가는 예배 생활!!">
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
                <h1 class="banner-title">푸른초장 초등부</h1>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb justify-content-center">
                      <li class="breadcrumb-item">새생활교회</li>
                      <li class="breadcrumb-item">교회 소개</li>
                      <li class="breadcrumb-item">교회 학교</li>
                      <li class="breadcrumb-item active" aria-current="page">푸른초장 초등부</li>
                    </ol>
                </nav>
              </div>
          </div><!-- Col end -->
        </div><!-- Row end -->
    </div><!-- Container end -->
  </div><!-- Banner text end -->
</div><!-- Banner area end --> 


<!-- 교회학교 컨테이너: 초등부서소개 -->
<section class="school-container elementary">
  <div class="container">
    <div class="row justify-content-center"> <!-- justify-content-center 이거는 무조건 내부 박스친구를 center align !-->    
    <div class="col-lg-8 col-md-10 col-sm-11 col-12"> <!-- 박스크기 설정 -->
      <div class="call-wrap">   
        <div class="call-text">
          <p>성경을 통해 하나님을 만나고 자신의 정체성을 발견하며
                             살아계신 하나님의 말씀으로 믿음의 뿌리를 내려</p>
          <blockquote class="green-quote"><p>말씀의 반석 위에서 싱그럽게 자라나는 초등부입니다.</p></blockquote>
          <br>
          <p>하나님의 생명 시냇가에 심긴 어린 감람나무인 초등부는
                             언제 어디서나 예배와 찬양을 드리며</p>
          <blockquote class="blue-quote"><p>마지막 때에 주님의 은혜의 희년을 이루는 쥬빌리 리더로 자라납니다.</p></blockquote>
        </div>
      </div>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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