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
	<title>새생활교회 - 예배 안내</title>

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
<div id="banner-area" class="banner-area">
  <div class="banner-text">
    <div class="container">
        <div class="row">
          <div class="col-lg-12">
              <div class="banner-heading">
                <h1 class="banner-title">예배 안내</h1>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb justify-content-center">
                      <li class="breadcrumb-item"><a href="#">새생활교회</a></li>
                      <li class="breadcrumb-item"><a href="#">교회 소개</a></li>
                      <li class="breadcrumb-item active" aria-current="page">예배 안내</li>
                    </ol>
                </nav>
              </div>
          </div><!-- Col end -->
        </div><!-- Row end -->
        
    </div><!-- Container end -->
  </div><!-- Banner text end -->
</div><!-- Banner area end -->


<!-- 메인 컨테이너 -->
<section class="time-container">
  <div class="container">
    <div class="row time-table-wrap justify-content-center">
      <table class="table time-table col-lg-5 col-md-6 col-12 ">
        <tbody>
          <tr>
            <td>주일예배 1부</td>
            <td>주일 오전 8시</td>
          </tr>
          <tr>
            <td>주일예배 2부</td>
            <td>주일 오전 11시</td>
          </tr>
          <tr>
            <td>수요 청년 예배</td>
            <td>수요 저녁 8시</td>
          </tr>
          <tr>
            <td>금요 새찬양 예배</td>
            <td>금요 저녁 8시</td>
          </tr>
          <tr>
            <td>유아부</td>
            <td>주일 오전 11시</td>
          </tr>
          <tr>
            <td>유치부</td>
            <td>주일 오전 11시</td>
          </tr>
          <tr>
            <td>초등부</td>
            <td>주일 오전 11시</td>
          </tr>
          <tr>
            <td>중고등부</td>
            <td>주일 오전 11시</td>
          </tr>
        </tbody>
      </table>
      
      <!-- 테이블 미디어쿼리 적용하려고 자름 -->
      <table class="table time-table col-lg-5 col-md-6 col-12 ">
        <tbody>
          <tr>
            <td>청년부</td>
            <td>주일 오후 2시</td>
          </tr>
          <tr>
            <td>청년2부</td>
            <td>주일 오후 2시</td>
          </tr>
          <tr>
            <td>청장년부</td>
            <td>주일 오후 1시 30분</td>
          </tr>
          <tr>
            <td>형제1부</td>
            <td>주일 오후 1시 30분</td>
          </tr>
          <tr>
            <td>형제마당</td>
            <td>주일 오후 1시 30분</td>
          </tr>
          <tr>
            <td>자매부</td>
            <td>주일 오후 1시 30분</td>
          </tr>
          <tr>
            <td>에덴마당부</td>
            <td>주일 오후 1시 30분</td>
          </tr>
          <tr>
            <td>&nbsp;&nbsp;</td>
            <td>&nbsp;&nbsp;</td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</section>


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