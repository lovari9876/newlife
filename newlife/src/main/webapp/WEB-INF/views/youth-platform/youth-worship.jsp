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
	<!-- Fancy Box: for only video boards -->
	<link href="plugins/fancybox/jquery.fancybox.pack.css" rel="stylesheet">
  	<link href="plugins/jquery-nice-select/css/nice-select.css" rel="stylesheet">
	<!-- Colorbox -->
	<link rel="stylesheet" href="plugins/colorbox/colorbox.css">
	<!-- font-face -->
	<link rel="stylesheet" href="css/font-faces.css"> 
	<!-- Template styles: for only video boards -->
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/video-style.css">
	
</head>

<body>
  <div class="body-inner">

	<!-- header include start -->
	<%@ include file="/WEB-INF/views/parts/header.jsp" %>
	<!-- header include end -->

<!-- 배너 부분  -->
<div id="banner-area" class="banner-area" style="background-image:url(images/banner/banner-river.png)">
  <div class="banner-text">
    <div class="container">
        <div class="row">
          <div class="col-lg-12">
              <div class="banner-heading">
                <h1 class="banner-title">주일 · 주중 설교</h1>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb justify-content-center">
                      <li class="breadcrumb-item"><a href="#">말씀과 찬양</a></li>
                      <li class="breadcrumb-item"><a href="#">예배 영상</a></li>
                      <li class="breadcrumb-item active" aria-current="page">주일 · 주중 설교</li>
                    </ol>
                </nav>
              </div>
          </div><!-- Col end -->
        </div><!-- Row end -->
    </div><!-- Container end -->
  </div><!-- Banner text end -->
</div><!-- Banner area end --> 


<!-- 소제목 파트 -->
<section id="main-container" class="main-container">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="search-result bg-gray">
					<h2>Results For "Electronics"</h2>
					<p>123 Results on 12 December, 2017</p>
				</div>
			</div>
		</div>
		<div class="row">
			<!-- 왼쪽 컬럼 -->
			<!-- 월별 글 나오게 하는 검색창 -->
			<!-- 주중/ 주일 예배 나오게 하는 검색창 -->
			<!-- 단어  검색창 -->
			<!-- 차후에는 성경 태그 달아서 태그 누르면 해당 설교나오게 할 것 -->
			<div class="col-lg-3 col-md-4">
				<div class="category-sidebar">
					<div class="widget category-list">
						<h4 class="widget-header">All Category</h4>
						<ul class="category-list">
							<li><a href="category.html">Laptops <span>93</span></a></li>
							<li><a href="category.html">Iphone <span>233</span></a></li>
							<li><a href="category.html">Microsoft  <span>183</span></a></li>
							<li><a href="category.html">Monitors <span>343</span></a></li>
						</ul>
					</div>
					
					<div class="widget category-list">
						<h4 class="widget-header">Nearby</h4>
						<ul class="category-list">
							<li><a href="category.html">New York <span>93</span></a></li>
							<li><a href="category.html">New Jersy <span>233</span></a></li>
							<li><a href="category.html">Florida  <span>183</span></a></li>
							<li><a href="category.html">California <span>120</span></a></li>
							<li><a href="category.html">Texas <span>40</span></a></li>
							<li><a href="category.html">Alaska <span>81</span></a></li>
						</ul>
					</div>
				</div>
			</div>
			
			<!-- 비디오 리스트 있는 오른쪽 컬럼 -->
			<div class="col-lg-9 col-md-8">
				<div class="category-search-filter">
					<div class="row">
						<div class="col-md-6">
							<strong>Short</strong>
							<select>
								<option>Most Recent</option>
								<option value="1">Most Popular</option>
								<option value="2">Lowest Price</option>
								<option value="4">Highest Price</option>
							</select>
						</div>
						<div class="col-md-6">
							<div class="view">
								<strong>Views</strong>
								<ul class="list-inline view-switcher">
									<li class="list-inline-item">
										<a href="category.html"><i class="fa fa-th-large"></i></a>
									</li>
									<li class="list-inline-item">
										<a href="category.html" class="text-info"><i class="fa fa-reorder"></i></a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>

			<!-- list 항목 한 개 -->
			<div class="ad-listing-list mt-20">
			    <div class="row p-lg-3 p-sm-5 p-4">
			        <div class="col-lg-4 align-self-center">
			            <a href="single.html">
			            	<!-- 유튜브 썸네일 사진 -->
			                <img src="images/video-thumbnails/video-thum-sample.jpg" class="img-fluid" alt="">
			            </a>
			        </div>
			        <div class="col-lg-8">
			            <div class="row">
			                <div class="col-lg-6 col-md-10">                	
			                    <div class="ad-listing-content">
			                        <div class="pt-3">
			                            <a href="single.html" class="font-weight-bold">설교제목 어쩌구저쩌구</a>
			                        </div>
			                        <ul class="list-inline mt-2 mb-3">
			                            <li class="list-inline-item">2021.11.18</li><br>
			                            <li class="list-inline-item">김용덕 목사</li><br>
			                            <li class="list-inline-item">데살로니가전서 1장 12-15절</li>        
			                        </ul>
			                        <p class="pr-5">번호 10 | 조회수 30</p>
			                    </div>
			                </div>
			                <!-- 유튜브 아이콘 누르면 바로 연결할 경우! -->
			                <!-- <div class="col-lg-6 align-self-center">
			                    <div class="product-ratings float-lg-right pb-3">
			                        <ul class="list-inline">
			                            <li class="list-inline-item"><i class="fab fa-youtube"></i></li>
			                        </ul>
			                    </div>
			                </div> -->
			            </div>
			        </div>
			    </div>
			</div>
				<!-- list 항목 한 개 -->
			<div class="ad-listing-list mt-20">
			    <div class="row p-lg-3 p-sm-5 p-4">
			        <div class="col-lg-4 align-self-center">
			            <a href="single.html">
			            	<!-- 유튜브 썸네일 사진 -->
			                <img src="images/video-thumbnails/video-thum-sample.jpg" class="img-fluid" alt="">
			            </a>
			        </div>
			        <div class="col-lg-8">
			            <div class="row">
			                <div class="col-lg-6 col-md-10">                	
			                    <div class="ad-listing-content">
			                        <div class="pt-3">
			                            <a href="single.html" class="font-weight-bold">설교제목 어쩌구저쩌구</a>
			                        </div>
			                        <ul class="list-inline mt-2 mb-3">
			                            <li class="list-inline-item">2021.11.18</li><br>
			                            <li class="list-inline-item">김용덕 목사</li><br>
			                            <li class="list-inline-item">데살로니가전서 1장 12-15절</li>        
			                        </ul>
			                        <p class="pr-5">번호 10 | 조회수 30</p>
			                    </div>
			                </div>
			                <!-- 유튜브 아이콘 누르면 바로 연결할 경우! -->
			                <!-- <div class="col-lg-6 align-self-center">
			                    <div class="product-ratings float-lg-right pb-3">
			                        <ul class="list-inline">
			                            <li class="list-inline-item"><i class="fab fa-youtube"></i></li>
			                        </ul>
			                    </div>
			                </div> -->
			            </div>
			        </div>
			    </div>
			</div>
			<!-- list 항목 한 개 -->
			<div class="ad-listing-list mt-20">
			    <div class="row p-lg-3 p-sm-5 p-4">
			        <div class="col-lg-4 align-self-center">
			            <a href="single.html">
			            	<!-- 유튜브 썸네일 사진 -->
			                <img src="images/video-thumbnails/video-thum-sample.jpg" class="img-fluid" alt="">
			            </a>
			        </div>
			        <div class="col-lg-8">
			            <div class="row">
			                <div class="col-lg-6 col-md-10">                	
			                    <div class="ad-listing-content">
			                        <div class="pt-3">
			                            <a href="single.html" class="font-weight-bold">설교제목 어쩌구저쩌구</a>
			                        </div>
			                        <ul class="list-inline mt-2 mb-3">
			                            <li class="list-inline-item">2021.11.18</li><br>
			                            <li class="list-inline-item">김용덕 목사</li><br>
			                            <li class="list-inline-item">데살로니가전서 1장 12-15절</li>        
			                        </ul>
			                        <p class="pr-5">번호 10 | 조회수 30</p>
			                    </div>
			                </div>
			                <!-- 유튜브 아이콘 누르면 바로 연결할 경우! -->
			                <!-- <div class="col-lg-6 align-self-center">
			                    <div class="product-ratings float-lg-right pb-3">
			                        <ul class="list-inline">
			                            <li class="list-inline-item"><i class="fab fa-youtube"></i></li>
			                        </ul>
			                    </div>
			                </div> -->
			            </div>
			        </div>
			    </div>
			</div>
			<!-- list 항목 한 개 -->
			<div class="ad-listing-list mt-20">
			    <div class="row p-lg-3 p-sm-5 p-4">
			        <div class="col-lg-4 align-self-center">
			            <a href="single.html">
			            	<!-- 유튜브 썸네일 사진 -->
			                <img src="images/video-thumbnails/video-thum-sample.jpg" class="img-fluid" alt="">
			            </a>
			        </div>
			        <div class="col-lg-8">
			            <div class="row">
			                <div class="col-lg-6 col-md-10">                	
			                    <div class="ad-listing-content">
			                        <div class="pt-3">
			                            <a href="single.html" class="font-weight-bold">설교제목 어쩌구저쩌구</a>
			                        </div>
			                        <ul class="list-inline mt-2 mb-3">
			                            <li class="list-inline-item">2021.11.18</li><br>
			                            <li class="list-inline-item">김용덕 목사</li><br>
			                            <li class="list-inline-item">데살로니가전서 1장 12-15절</li>        
			                        </ul>
			                        <p class="pr-5">번호 10 | 조회수 30</p>
			                    </div>
			                </div>
			                <!-- 유튜브 아이콘 누르면 바로 연결할 경우! -->
			                <!-- <div class="col-lg-6 align-self-center">
			                    <div class="product-ratings float-lg-right pb-3">
			                        <ul class="list-inline">
			                            <li class="list-inline-item"><i class="fab fa-youtube"></i></li>
			                        </ul>
			                    </div>
			                </div> -->
			            </div>
			        </div>
			    </div>
			</div>
			<!-- list 항목 한 개 -->
			<div class="ad-listing-list mt-20">
			    <div class="row p-lg-3 p-sm-5 p-4">
			        <div class="col-lg-4 align-self-center">
			            <a href="single.html">
			            	<!-- 유튜브 썸네일 사진 -->
			                <img src="images/video-thumbnails/video-thum-sample.jpg" class="img-fluid" alt="">
			            </a>
			        </div>
			        <div class="col-lg-8">
			            <div class="row">
			                <div class="col-lg-6 col-md-10">                	
			                    <div class="ad-listing-content">
			                        <div class="pt-3">
			                            <a href="single.html" class="font-weight-bold">설교제목 어쩌구저쩌구</a>
			                        </div>
			                        <ul class="list-inline mt-2 mb-3">
			                            <li class="list-inline-item">2021.11.18</li><br>
			                            <li class="list-inline-item">김용덕 목사</li><br>
			                            <li class="list-inline-item">데살로니가전서 1장 12-15절</li>        
			                        </ul>
			                        <p class="pr-5">번호 10 | 조회수 30</p>
			                    </div>
			                </div>
			                <!-- 유튜브 아이콘 누르면 바로 연결할 경우! -->
			                <!-- <div class="col-lg-6 align-self-center">
			                    <div class="product-ratings float-lg-right pb-3">
			                        <ul class="list-inline">
			                            <li class="list-inline-item"><i class="fab fa-youtube"></i></li>
			                        </ul>
			                    </div>
			                </div> -->
			            </div>
			        </div>
			    </div>
			</div>
			<!-- list 항목 한 개 -->
			<div class="ad-listing-list mt-20">
			    <div class="row p-lg-3 p-sm-5 p-4">
			        <div class="col-lg-4 align-self-center">
			            <a href="single.html">
			            	<!-- 유튜브 썸네일 사진 -->
			                <img src="images/video-thumbnails/video-thum-sample.jpg" class="img-fluid" alt="">
			            </a>
			        </div>
			        <div class="col-lg-8">
			            <div class="row">
			                <div class="col-lg-6 col-md-10">                	
			                    <div class="ad-listing-content">
			                        <div class="pt-3">
			                            <a href="single.html" class="font-weight-bold">설교제목 어쩌구저쩌구</a>
			                        </div>
			                        <ul class="list-inline mt-2 mb-3">
			                            <li class="list-inline-item">2021.11.18</li><br>
			                            <li class="list-inline-item">김용덕 목사</li><br>
			                            <li class="list-inline-item">데살로니가전서 1장 12-15절</li>        
			                        </ul>
			                        <p class="pr-5">번호 10 | 조회수 30</p>
			                    </div>
			                </div>
			                <!-- 유튜브 아이콘 누르면 바로 연결할 경우! -->
			                <!-- <div class="col-lg-6 align-self-center">
			                    <div class="product-ratings float-lg-right pb-3">
			                        <ul class="list-inline">
			                            <li class="list-inline-item"><i class="fab fa-youtube"></i></li>
			                        </ul>
			                    </div>
			                </div> -->
			            </div>
			        </div>
			    </div>
			</div> 
			<!--리스트 끝 -->

				<!-- pagination -->
				<div class="pagination justify-content-center py-4">
					<nav aria-label="Page navigation example">
						<ul class="pagination">
							<li class="page-item">
								<a class="page-link" href="#" aria-label="Previous">
									<span aria-hidden="true">&laquo;</span>
									<span class="sr-only">Previous</span>
								</a>
							</li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item active"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item">
								<a class="page-link" href="#" aria-label="Next">
									<span aria-hidden="true">&raquo;</span>
									<span class="sr-only">Next</span>
								</a>
							</li>
						</ul>
					</nav>
				</div>
				<!-- pagination -->
			</div>
		</div>
	</div>
</section><!-- Main container end -->

	<!-- JAVASCRIPTS
================================================== -->

	<!-- initialize jQuery Library -->
	<script src="plugins/jQuery/jquery.min.js"></script>
	<!-- Bootstrap jQuery -->
	<script src="plugins/bootstrap/popper.min.js"></script>
	<script src="plugins/bootstrap/bootstrap.min.js"></script>
	<!-- Slick Carousel -->
	<script src="plugins/slick/slick.min.js"></script>
	<script src="plugins/slick/slick-animation.min.js"></script>
	
	<script src="plugins/fancybox/jquery.fancybox.pack.js"></script>
	<!-- Color box -->
	<script src="plugins/colorbox/jquery.colorbox.js"></script>
	<!-- shuffle -->
	<script src="plugins/shuffle/shuffle.min.js" defer></script>	
	<!-- Template custom -->
	<script src="js/script.js"></script>

  </div><!-- Body inner end -->
</body>

</html>