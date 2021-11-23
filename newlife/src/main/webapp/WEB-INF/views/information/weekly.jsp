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
	<link rel="stylesheet" href="css/style.css">

</head>

<!-- 지금 테이블 만드는 중 -->
<!-- 모바일은 디미토리 모바일처럼 테이블쪽을 아예 바꿔야함 -->
<!-- 모바일에선 한줄에 제목만 있고, 아랫줄로, date, 조회수, 작성자 모두 내려가게.. -->
<!-- 디미토리 모바일과, board.css 참고 -모바일 css 내가 다 안해도 된다!!! -->

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
	                <h1 class="banner-title">새소식</h1>
	                <nav aria-label="breadcrumb">
	                    <ol class="breadcrumb justify-content-center">
	                      <li class="breadcrumb-item"><a href="#">새생활교회</a></li>
	                      <li class="breadcrumb-item"><a href="#">새생활뉴스</a></li>
	                      <li class="breadcrumb-item active" aria-current="page">새소식</li>
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
       
	<!--**********************************
			테이블
	***********************************-->
	<div class="">
	    <h4>Table Hover</h4>
	</div>
	<div class="table-responsive">
	    <table class="table table-hover">
	        <thead>
	            <tr>
	                <th>#</th>
	                <th>Name</th>
	                <th>Status</th>
	                <th>Date</th>
	                <th>Price</th>
	            </tr>
	        </thead>
	        <tbody>
	            <tr>
	                <th>1</th>
	                <td>Kolor Tea Shirt For Man</td>
	                <td><span class="badge badge-primary px-2">Sale</span>
	                </td>
	                <td>January 22</td>
	                <td class="color-primary">$21.56</td>
	            </tr>
	           
	        </tbody>
	    </table>
        </div>
    </div>
    <!--/ Content row end -->    
  </div>
  <!--/ Container end -->  
</section><!-- Facts end -->


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


<!-- Google Map API Key-->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU" defer></script>
<!-- Google Map Plugin-->
<script src="plugins/google-map/map.js" defer></script>

<!-- Template custom -->
<script src="js/script.js"></script>

</div><!-- Body inner end -->
</body>

</html>