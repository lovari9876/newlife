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
                      <li class="breadcrumb-item"><a href="#">새생활뉴스</a></li>
                      <li class="breadcrumb-item active" aria-current="page">공지사항</li>
                    </ol>
                </nav>
              </div>
          </div><!-- Col end -->
        </div><!-- Row end -->
    </div><!-- Container end -->
  </div><!-- Banner text end -->
</div><!-- Banner area end --> 


<!-- 메인 컨테이너 -->
<section id="main-container" class="main-container pb-2 video-board">
  <div class="container">
    <div class="row">
    
	  <!-- 게시판 item -->
	  <!-- 반복 시작 -->
	  <c:forEach items="${newsList}" var="news">
	  
      <div class="col-lg-4 col-md-6 mb-5 board-item">
        <div class="ts-service-box">
            <div class="ts-service-image-wrapper">
              <img loading="lazy" class="w-100" src="images/video-thumbnails/video-thum-sample.jpg" alt="service-image">
            </div>
            <div class="d-flex">              
              <div class="ts-service-info">
                  <h3 class="service-box-title"><a href="/content_view?id=${news['id']}">${news['title']}</a></h3>
                  <p>
                  	<span><i class="fas fa-bible"></i>데살로니가전서 1장 12-15절</span><br/>
                  	<span><i class="far fa-calendar-check"></i>주일 2부 예배</span><br/>
                  	<span><i class="far fa-user"></i>${news['nickname']}</span><br/>
                  	<span class="board-time"><i class="far fa-clock small-i"></i>
	               		<!-- 작성일이 오늘이면 시간, 아니면 날짜 출력 jstl로 구현 -->
						<jsp:useBean id="today" class="java.util.Date" /> 
						<!-- Date() 생성자가 가장 가까운 millisecond의 date 객체 하나를 생성 -->
						<fmt:formatDate value="${today}" pattern="yyyy.MM.dd" var="now"/>
						<fmt:formatDate value="${news['create_date']}" pattern="yyyy.MM.dd" var="date"/>
						<c:choose>
							<c:when test="${now ne date}">${date}</c:when> 
							<c:otherwise>
								<fmt:formatDate value="${news['create_date']}" pattern="HH:mm"/>
							</c:otherwise>
						</c:choose>
                  	</span>
                  	<span class="board-no">번호 0<!-- ${news['RNUM']} --></span><span class="board-tally">조회수 500</span>
                  </p>              
              </div>
            </div>
        </div><!-- Service end -->
      </div><!-- Col end -->
      </c:forEach>
	</div><!-- Main row end -->
 
<!-- paging 페이지 처리 -->
<!-- pc는 10까지, 모바일은 5까지 -->
<div class="row paging-row">
  <div class="paging-row-inner" >
	<nav class="paging" aria-label="Page navigation example">
	  <ul class="pagination">
	    <li class="page-item"><a class="page-link" href="#"><i class="fas fa-angle-double-left"></i></a></li>
	    <li class="page-item"><a class="page-link" href="#">1</a></li>
	    <li class="page-item"><a class="page-link" href="#">2</a></li>
	    <li class="page-item"><a class="page-link" href="#">3</a></li>
	    <li class="page-item"><a class="page-link" href="#"><i class="fas fa-angle-double-right"></i></a></li>
	  </ul>
	</nav>
  </div>
</div><!-- end paging -->
 
  </div><!-- Conatiner end -->
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