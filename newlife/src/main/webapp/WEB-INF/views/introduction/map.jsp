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
<div id="banner-area" class="banner-area">
  <div class="banner-text">
    <div class="container">
        <div class="row">
          <div class="col-lg-12">
              <div class="banner-heading">
                <h1 class="banner-title">오시는 길</h1>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb justify-content-center">
                      <li class="breadcrumb-item"><a href="#">새생활교회</a></li>
                      <li class="breadcrumb-item"><a href="#">교회 소개</a></li>
                      <li class="breadcrumb-item active" aria-current="page">오시는 길</li>
                    </ol>
                </nav>
              </div>
          </div><!-- Col end -->
        </div><!-- Row end -->
        
    </div><!-- Container end -->
  </div><!-- Banner text end -->
</div><!-- Banner area end --> 


<!-- contact 컨테이너 -->
<section class="contact-container">
  <div class="container">
    <div class="row justify-content-center"> <!-- justify-content-center 이거는 무조건 내부 박스친구를 center align !-->    
		<div class="col-lg-6 col-sm-10 col-12">
		  <div class="call-wrap">	          
	          <h4 class="fa-wrap"><i class="fas fa-map-marker-alt"></i></h4>
	          <p class="contact-detail"> 새생활교회 (예장 합신)
	          <br/> 서울 구로구 구로중앙로28길 53-12
	          <br/><span class="address2">지번<span class="text-bar"></span>구로동 111-44</span>
	          <br/><span class="address2">우편번호<span class="text-bar"></span>08294</span></p>
	          <h4 class="fa-wrap"><i class="fas fa-phone-alt"></i></h4>
	          <p class="contact-detail"> 02-859-0691</p>
	          <h4 class="fa-wrap"><i class="fas fa-fax"></i></h4>
	          <p class="contact-detail"> 02-865-2970<span class="address2 smaller-text">&nbsp;&nbsp;FAX</span></p>
		  </div>
		</div><!-- Col end -->
	</div><!-- Content row end -->
  </div><!-- Container end -->
</section><!-- contact-container end -->


<!-- 지도 컨테이너 --> 
<!-- 컨테이너 말고 그냥 한 row안에서 col-lg-8 정도로 나누면 지도가 모바일화면에서 잘려.. vw 때문인거 같은데.. 그냥 지도는 크게보자-->
<section class="map-container">
  <div class="container">  	
    <div class="row ">
    	<div></div>
    </div>
    <div class="row ">
    	<div id="map" class="col-12" style="width: 60vw; height: 55vh; position: relative;">
        </div><!-- Col end -->
    </div><!-- Content row end -->
  </div><!-- Container end -->
</section><!-- Main container end -->


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


<!-- for Kakao Map =================================== -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7beca5220b3ab027350ea2c53690f5c2"></script>
<script>

	// 새생활교회 37.500599, 126.888240
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = { 
	    center: new kakao.maps.LatLng(37.500599, 126.888240), // 지도의 중심좌표
	    level: 3 // 지도의 확대 레벨
	};
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	//마커가 표시될 위치입니다 
	var markerPosition  = new kakao.maps.LatLng(37.500599, 126.888240); 
	
	//마커를 생성합니다
	var marker = new kakao.maps.Marker({
	    position: markerPosition, // 마커의 좌표
	    draggable : true, // 마커를 드래그 가능하도록 설정한다
	    map: map // 마커를 표시할 지도 객체
	});
	
	//마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);
	
	//아래 코드는 지도 위의 마커를 제거하는 코드입니다
	//marker.setMap(null);  
	
	// 커스텀 오버레이를 생성하고 지도에 표시한다
	var customOverlay = new kakao.maps.CustomOverlay({
		map: map,
		content: '<div class="map-overlay"><a href="https://place.map.kakao.com/17639647" target="_blank">새생활교회</a></div>', 
		position: markerPosition, // 커스텀 오버레이를 표시할 좌표
		xAnchor: 0.5, // 컨텐츠의 x 위치
		yAnchor: 3 // 컨텐츠의 y 위치
	});	
	
	customOverlay.setMap(map);
	
	function relayout() {        
	    // 지도를 표시하는 div 크기를 변경한 이후 지도가 정상적으로 표출되지 않을 수도 있습니다
	    // 크기를 변경한 이후에는 반드시  map.relayout 함수를 호출해야 합니다 
	    // window의 resize 이벤트에 의한 크기변경은 map.relayout 함수가 자동으로 호출됩니다
	    map.relayout();
	}
	
</script> <!-- id: 17639647 -->


</div><!-- Body inner end -->
</body>

</html>