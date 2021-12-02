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
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=5.0">

<!-- Favicon
================================================== -->
<link rel="apple-touch-icon" sizes="57x57"
	href="images/favicon/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60"
	href="images/favicon/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="images/favicon/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="images/favicon/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="images/favicon/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="images/favicon/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="images/favicon/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="images/favicon/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180"
	href="images/favicon/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"
	href="images/favicon/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="images/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="images/favicon/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="images/favicon/favicon-16x16.png">
<link rel="manifest" href="images/favicon/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage"
	content="images/favicon/ms-icon-144x144.png">
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
<link rel="stylesheet" href="css/board.css">

</head>
<!-- 모바일 테이블 형식과 태그 똑같이 따라할것!!! 미디어쿼리로 잡아서 css 긁어오기!! -->
<!-- 부트스트랩 class .title만 좀 적용안되게 할것!! title에 해당하는 css를 다른걸로 바꾸기 -->

<body>
	<div class="body-inner">

		<!-- header include start -->
		<%@ include file="/WEB-INF/views/parts/header.jsp"%>
		<!-- header include end -->

		<div id="banner-area" class="banner-area"
			style="background-image: url(images/banner/banner-river.png)">
			<div class="banner-text">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="banner-heading">
								<h1 class="banner-title">About</h1>
								<nav aria-label="breadcrumb">
									<ol class="breadcrumb justify-content-center">
										<li class="breadcrumb-item"><a href="#">Home</a></li>
										<li class="breadcrumb-item"><a href="#">company</a></li>
										<li class="breadcrumb-item active" aria-current="page">About
											Us</li>
									</ol>
								</nav>
							</div>
						</div>
						<!-- Col end -->
					</div>
					<!-- Row end -->
				</div>
				<!-- Container end -->
			</div>
			<!-- Banner text end -->
		</div>
		<!-- Banner area end -->
		<section class="flatBoard">
			<div class="m-list m-element">
				<ul class="notice-list hide_notice on">

					<li class="no-list"><span class="notice-text">공지</span> 등록된 글이
						없습니다.</li>
				</ul>
				<ul class="list">
					<li class="clearfix"><a
						href="https://www.dmitory.com/latest/217071147" class="list-link"></a>
						<ul class="list-element">
							<li class="title-noboot"><a
								href="https://www.dmitory.com/index.php?mid=latest&amp;module_srl=19837"><strong>노벨정원</strong>&nbsp;</a>
								<span>요즘 좀 소홀했는지 네네 마니아 떨어졌더라고 ㅠ 다시 채워넣었다... 빨리 리뷰쓰고싶다</span> <span
								class="extraimages"></span></li>
							<li class="date el">22:01</li>
							<li class="hit el">조회 수 4</li>
						</ul></li>
					<li class="clearfix has-comment"><a
						href="https://www.dmitory.com/latest/217071137" class="list-link"></a>
						<ul class="list-element">
							<li class="title-noboot"><a
								href="https://www.dmitory.com/index.php?mid=latest&amp;module_srl=19837"><strong>노벨정원</strong>&nbsp;</a>
								<span>🌙YES24 달빛 스탬프🌝</span> <span class="extraimages"></span>
							</li>
							<li class="date el">22:01</li>
							<li class="hit el">조회 수 20</li>
						</ul> <img
						src="/modules/board/m.skins/flatBoard_latest/images/biComment@2x.png"
						alt="comment" width="14px" height="12px" class="comment-image"><a
						href="https://www.dmitory.com/index.php?mid=latest&amp;document_srl=217071137&amp;hide_content=1"
						class="reply m-list-reply">1</a></li>
					<li class="clearfix"><a
						href="https://www.dmitory.com/latest/217071116" class="list-link"></a>
						<ul class="list-element">
							<li class="title-noboot"><a
								href="https://www.dmitory.com/index.php?mid=latest&amp;module_srl=18379"><strong>패션</strong>&nbsp;</a>
								<a
								href="https://www.dmitory.com/index.php?mid=latest&amp;group_srl=6662713"
								class="preface" style="color: #000 !important;">의류</a> <span>코트
									살말해주라~~!</span> <span class="extraimages"></span></li>
							<li class="date el">22:00</li>
							<li class="hit el">조회 수 5</li>
						</ul></li>
					<li class="clearfix"><a
						href="https://www.dmitory.com/latest/217071033" class="list-link"></a>
						<ul class="list-element">
							<li class="title-noboot"><a
								href="https://www.dmitory.com/index.php?mid=latest&amp;module_srl=19837"><strong>노벨정원</strong>&nbsp;</a>
								<span>리디야 실수 함만 해주라</span> <span class="extraimages"></span></li>
							<li class="date el">22:00</li>
							<li class="hit el">조회 수 29</li>
						</ul></li>
					<li class="clearfix"><a
						href="https://www.dmitory.com/latest/217071017" class="list-link"></a>
						<ul class="list-element">
							<li class="title-noboot"><a
								href="https://www.dmitory.com/index.php?mid=latest&amp;module_srl=19837"><strong>노벨정원</strong>&nbsp;</a>
								<span>??!!!!뭐살까!!!!??</span> <span class="extraimages"></span></li>
							<li class="date el">22:00</li>
							<li class="hit el">조회 수 20</li>
						</ul></li>
					<li class="clearfix has-comment"><a
						href="https://www.dmitory.com/latest/217070929" class="list-link"></a>
						<ul class="list-element">
							<li class="title-noboot"><a
								href="https://www.dmitory.com/index.php?mid=latest&amp;module_srl=19837"><strong>노벨정원</strong>&nbsp;</a>
								<span>언니왕비 어쩌고 이거 완결 다 되어가?</span> <span class="extraimages"></span>
							</li>
							<li class="date el">21:59</li>
							<li class="hit el">조회 수 10</li>
						</ul> <img
						src="/modules/board/m.skins/flatBoard_latest/images/biComment@2x.png"
						alt="comment" width="14px" height="12px" class="comment-image"><a
						href="https://www.dmitory.com/index.php?mid=latest&amp;document_srl=217070929&amp;hide_content=1"
						class="reply m-list-reply">1</a></li>
					<li class="clearfix"><a
						href="https://www.dmitory.com/latest/217070870" class="list-link"></a>
						<ul class="list-element">
							<li class="title-noboot"><a
								href="https://www.dmitory.com/index.php?mid=latest&amp;module_srl=19837"><strong>노벨정원</strong>&nbsp;</a>
								<span>몰락영주 루이센 존나 짠해..</span> <span class="extraimages"></span>
							</li>
							<li class="date el">21:59</li>
							<li class="hit el">조회 수 9</li>
						</ul></li>
					<li class="clearfix"><a
						href="https://www.dmitory.com/latest/217070781" class="list-link"></a>
						<ul class="list-element">
							<li class="title-noboot"><a
								href="https://www.dmitory.com/index.php?mid=latest&amp;module_srl=19565"><strong>만화</strong>&nbsp;</a>
								<a
								href="https://www.dmitory.com/index.php?mid=latest&amp;group_srl=141760529"
								class="preface" style="color: #000 !important;">반요야샤히메</a> <span>셋쇼마루
									놀리고 싶다</span> <span class="extraimages"></span></li>
							<li class="date el">21:58</li>
							<li class="hit el">조회 수 8</li>
						</ul></li>
					<li class="clearfix"><a
						href="https://www.dmitory.com/latest/217070659" class="list-link"></a>
						<ul class="list-element">
							<li class="title-noboot"><a
								href="https://www.dmitory.com/index.php?mid=latest&amp;module_srl=19837"><strong>노벨정원</strong>&nbsp;</a>
								<span>사곰앙 다시 보니까 테오 첨부터 감긴게 보이네ㅋㅋㅋ</span> <span
								class="extraimages"></span></li>
							<li class="date el">21:58</li>
							<li class="hit el">조회 수 14</li>
						</ul></li>
					<li class="clearfix"><a
						href="https://www.dmitory.com/latest/217070519" class="list-link"></a>
						<ul class="list-element">
							<li class="title-noboot"><a
								href="https://www.dmitory.com/index.php?mid=latest&amp;module_srl=4861690"><strong>도토리숲</strong>&nbsp;</a>
								<span>빱이 셉투다같은 생존게임 또 해줬음 좋겠다</span> <span class="extraimages"></span>
							</li>
							<li class="date el">21:57</li>
							<li class="hit el">조회 수 7</li>
						</ul></li>
					<li class="clearfix has-comment"><a
						href="https://www.dmitory.com/latest/217070246" class="list-link"></a>
						<ul class="list-element">
							<li class="title-noboot"><a
								href="https://www.dmitory.com/index.php?mid=latest&amp;module_srl=19837"><strong>노벨정원</strong>&nbsp;</a>
								<span>맠다는 몇시부터 떠?</span> <span class="extraimages"></span></li>
							<li class="date el">21:56</li>
							<li class="hit el">조회 수 80</li>
						</ul> <img
						src="/modules/board/m.skins/flatBoard_latest/images/biComment@2x.png"
						alt="comment" width="14px" height="12px" class="comment-image"><a
						href="https://www.dmitory.com/index.php?mid=latest&amp;document_srl=217070246&amp;hide_content=1"
						class="reply m-list-reply">5</a></li>
					<li class="clearfix has-comment"><a
						href="https://www.dmitory.com/latest/217070143" class="list-link"></a>
						<ul class="list-element">
							<li class="title-noboot"><a
								href="https://www.dmitory.com/index.php?mid=latest&amp;module_srl=19837"><strong>노벨정원</strong>&nbsp;</a>
								<span>망국비연가 라고 아는톨있니...</span> <span class="extraimages"></span>
							</li>
							<li class="date el">21:55</li>
							<li class="hit el">조회 수 27</li>
						</ul> <img
						src="/modules/board/m.skins/flatBoard_latest/images/biComment@2x.png"
						alt="comment" width="14px" height="12px" class="comment-image"><a
						href="https://www.dmitory.com/index.php?mid=latest&amp;document_srl=217070143&amp;hide_content=1"
						class="reply m-list-reply">3</a></li>
					<li class="clearfix has-comment"><a
						href="https://www.dmitory.com/latest/217069969" class="list-link"></a>
						<ul class="list-element">
							<li class="title-noboot"><a
								href="https://www.dmitory.com/index.php?mid=latest&amp;module_srl=19565"><strong>만화</strong>&nbsp;</a>
								<a
								href="https://www.dmitory.com/index.php?mid=latest&amp;group_srl=13903313"
								class="preface" style="color: #000 !important;">새디스틱뷰티</a> <span>변민호
									정말 분수를 모르네 (ㅅㅍ)</span> <span class="extraimages"></span></li>
							<li class="date el">21:54</li>
							<li class="hit el">조회 수 47</li>
						</ul> <img
						src="/modules/board/m.skins/flatBoard_latest/images/biComment@2x.png"
						alt="comment" width="14px" height="12px" class="comment-image"><a
						href="https://www.dmitory.com/index.php?mid=latest&amp;document_srl=217069969&amp;hide_content=1"
						class="reply m-list-reply">1</a></li>
					<li class="clearfix has-comment"><a
						href="https://www.dmitory.com/latest/217069679" class="list-link"></a>
						<ul class="list-element">
							<li class="title-noboot"><a
								href="https://www.dmitory.com/index.php?mid=latest&amp;module_srl=19837"><strong>노벨정원</strong>&nbsp;</a>
								<span>재정가 끌올봇🤖 11월 4주 차 전 장르 영업글 모집🔥 리디 11월 마크다운 대비하세요!</span>
								<span class="extraimages"><i class="fas fa-image"
									title="Image"></i></span></li>
							<li class="date el">21:53</li>
							<li class="hit el">조회 수 76</li>
						</ul> <img
						src="/modules/board/m.skins/flatBoard_latest/images/biComment@2x.png"
						alt="comment" width="14px" height="12px" class="comment-image"><a
						href="https://www.dmitory.com/index.php?mid=latest&amp;document_srl=217069679&amp;hide_content=1"
						class="reply m-list-reply">2</a></li>
					<li class="clearfix has-comment"><a
						href="https://www.dmitory.com/latest/217069611" class="list-link"></a>
						<ul class="list-element">
							<li class="title-noboot"><a
								href="https://www.dmitory.com/index.php?mid=latest&amp;module_srl=19837"><strong>노벨정원</strong>&nbsp;</a>
								<span>잇미올 vs 진저리</span> <span class="extraimages"></span></li>
							<li class="date el">21:52</li>
							<li class="hit el">조회 수 74</li>
						</ul> <img
						src="/modules/board/m.skins/flatBoard_latest/images/biComment@2x.png"
						alt="comment" width="14px" height="12px" class="comment-image"><a
						href="https://www.dmitory.com/index.php?mid=latest&amp;document_srl=217069611&amp;hide_content=1"
						class="reply m-list-reply">6</a></li>
					<li class="clearfix"><a
						href="https://www.dmitory.com/latest/217069483" class="list-link"></a>
						<ul class="list-element">
							<li class="title-noboot"><a
								href="https://www.dmitory.com/index.php?mid=latest&amp;module_srl=18320"><strong>미용</strong>&nbsp;</a>
								<span>턱 피부 난리났는데 모낭염같아 여드름같아?(사진주의)</span> <span
								class="extraimages"></span></li>
							<li class="date el">21:52</li>
							<li class="hit el">조회 수 36</li>
						</ul></li>
					<li class="clearfix has-comment"><a
						href="https://www.dmitory.com/latest/217069443" class="list-link"></a>
						<ul class="list-element">
							<li class="title-noboot"><a
								href="https://www.dmitory.com/index.php?mid=latest&amp;module_srl=19527"><strong>건강</strong>&nbsp;</a>
								<span>부천 무좀 치료하는 병원 추천좀 해주라</span> <span class="extraimages"></span>
							</li>
							<li class="date el">21:51</li>
							<li class="hit el">조회 수 3</li>
						</ul> <img
						src="/modules/board/m.skins/flatBoard_latest/images/biComment@2x.png"
						alt="comment" width="14px" height="12px" class="comment-image"><a
						href="https://www.dmitory.com/index.php?mid=latest&amp;document_srl=217069443&amp;hide_content=1"
						class="reply m-list-reply">1</a></li>
					<li class="clearfix has-comment"><a
						href="https://www.dmitory.com/latest/217069437" class="list-link"></a>
						<ul class="list-element">
							<li class="title-noboot"><a
								href="https://www.dmitory.com/index.php?mid=latest&amp;module_srl=19837"><strong>노벨정원</strong>&nbsp;</a>
								<span>연예계물 보면서 궁금한건데 방송국이 절대갑은 아니야?</span> <span
								class="extraimages"></span></li>
							<li class="date el">21:51</li>
							<li class="hit el">조회 수 65</li>
						</ul> <img
						src="/modules/board/m.skins/flatBoard_latest/images/biComment@2x.png"
						alt="comment" width="14px" height="12px" class="comment-image"><a
						href="https://www.dmitory.com/index.php?mid=latest&amp;document_srl=217069437&amp;hide_content=1"
						class="reply m-list-reply">3</a></li>
					<li class="clearfix has-comment"><a
						href="https://www.dmitory.com/latest/217069421" class="list-link"></a>
						<ul class="list-element">
							<li class="title-noboot"><a
								href="https://www.dmitory.com/index.php?mid=latest&amp;module_srl=19837"><strong>노벨정원</strong>&nbsp;</a>
								<span>내가 샀는데 안볼책 나눔하고 싶다 ㅠㅠ</span> <span class="extraimages"></span>
							</li>
							<li class="date el">21:51</li>
							<li class="hit el">조회 수 90</li>
						</ul> <img
						src="/modules/board/m.skins/flatBoard_latest/images/biComment@2x.png"
						alt="comment" width="14px" height="12px" class="comment-image"><a
						href="https://www.dmitory.com/index.php?mid=latest&amp;document_srl=217069421&amp;hide_content=1"
						class="reply m-list-reply">8</a></li>
					<li class="clearfix has-comment"><a
						href="https://www.dmitory.com/latest/217069381" class="list-link"></a>
						<ul class="list-element">
							<li class="title-noboot"><a
								href="https://www.dmitory.com/index.php?mid=latest&amp;module_srl=19605"><strong>성우/오디오</strong>&nbsp;</a>
								<a
								href="https://www.dmitory.com/index.php?mid=latest&amp;group_srl=188741612"
								class="preface" style="color: #000 !important;">한성우</a> <span>야해
									이 두꺼운 대본은 소설 원작이겠지?</span> <span class="extraimages"></span></li>
							<li class="date el">21:51</li>
							<li class="hit el">조회 수 35</li>
						</ul> <img
						src="/modules/board/m.skins/flatBoard_latest/images/biComment@2x.png"
						alt="comment" width="14px" height="12px" class="comment-image"><a
						href="https://www.dmitory.com/index.php?mid=latest&amp;document_srl=217069381&amp;hide_content=1"
						class="reply m-list-reply">1</a></li>
				</ul>
			</div>
			<footer class="clearfix list-footer">
				<div class="paging">
					<a href="https://www.dmitory.com/latest" class="prev direction">첫
						페이지</a><span class="current">1</span><a
						href="https://www.dmitory.com/index.php?mid=latest&amp;page=2">2</a><a
						href="https://www.dmitory.com/index.php?mid=latest&amp;page=3">3</a><a
						href="https://www.dmitory.com/index.php?mid=latest&amp;page=4">4</a><a
						href="https://www.dmitory.com/index.php?mid=latest&amp;page=5">5</a><a
						href="https://www.dmitory.com/index.php?mid=latest&amp;page=6">6</a><a
						href="https://www.dmitory.com/index.php?mid=latest&amp;page=7">7</a><a
						href="https://www.dmitory.com/index.php?mid=latest&amp;page=8">8</a><a
						href="https://www.dmitory.com/index.php?mid=latest&amp;page=9">9</a><a
						href="https://www.dmitory.com/index.php?mid=latest&amp;page=10">10</a><a
						href="https://www.dmitory.com/index.php?mid=latest&amp;page=129"
						class="next direction">끝 페이지</a>
				</div>
			</footer>
		</section>

		<!-- footer include start -->
		<%@ include file="/WEB-INF/views/parts/footer.jsp"%>
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
		<script
			src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU"
			defer></script>
		<!-- Google Map Plugin-->
		<script src="plugins/google-map/map.js" defer></script>

		<!-- Template custom -->
		<script src="js/script.js"></script>

	</div>
	<!-- Body inner end -->
</body>

</html>
