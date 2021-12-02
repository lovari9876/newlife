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
<link rel="stylesheet" href="css/table-web.css">

</head>

<!-- 딤토 웹 리스트 뷰 바탕으로 내 테이블 만들기 -->
<body>
<div class="body-inner">


<!-- header include start -->
<%@ include file="/WEB-INF/views/parts/header.jsp"%>
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
	

	
<section id="main-container" class="main-container">
	<div class="container">
		<!-- 검색은 여기에!! -->
		<div></div>
		<div class="bd_lst_wrp">					
			<!-- table -->
			<table class="bd_lst bd_tb_lst bd_tb">
				<caption class="blind">List of Articles</caption>
				<!-- 테이블 head -->
				<thead class="bg_f_f9">
					<tr>
						<th scope="col" class="no"><span>번호</span></th>
						<th scope="col" class="title-noboot"><span>제목</span></th>
						<th scope="col"><span>작성자</span></th>						
						<th scope="col"><span>날짜</span></th>
						<th scope="col" class="m_no"><span>조회</span></th>
					</tr>
				</thead>
				<!-- 공지사항! -->
				<tbody class="hide_notice">
					<tr class="notice  nofn">
						<td class="no"><strong>전체공지</strong></td>
						<td class="title-noboot">
							<a	href="글링크"><strong><span style="font-weight: bold; color: #000000">공지입니다.</span></strong></a> 
							<!-- 댓글 처리 
							<a href="https://www.dmitory.com/wisdom/184139700#184139700_comment" class="replyNum" title="댓글">487</a> -->
						</td>
						<td>작성자자자자자</td>
						<td class="time">2021.04.26</td>
						<td class="m_no">132463</td>
					</tr>
					<tr class="notice_expand">
						<td colspan="5">모든 공지 확인하기(<span id="notice_count">1</span>)
						</td>
					</tr>
					<!-- list 시작 -->
					<c:forEach items="${weeklyList}" var="weekly">
						<tr>
							<td class="no">19874</td> <!-- ${weekly['RNUM']} -->
							<td class="title-noboot">
								<a href="/content_view?id=${weekly['id']}">${weekly['title']}</a> 
								<!-- 댓글 숫자 파트
								<span class="extraimages"></span> <a href="https://www.dmitory.com/index.php?mid=wisdom&amp;document_srl=217551648&amp;hide_content=1"
								class="replyNum" title="댓글">34</a> -->
							</td>
							<td>
								${weekly['nickname']}
							</td>					
							<td class="time">
								<!-- 작성일이 오늘이면 시간, 아니면 날짜 출력 jstl로 구현 -->
								<jsp:useBean id="today" class="java.util.Date" /> 
								<!-- Date() 생성자가 가장 가까운 millisecond의 date 객체 하나를 생성 -->
								<fmt:formatDate value="${today}" pattern="yyyy.MM.dd" var="now"/>
								<fmt:formatDate value="${weekly['create_date']}" pattern="yyyy.MM.dd" var="date"/>
								<c:choose>
									<c:when test="${now ne date}">${date}</c:when> 
									<c:otherwise>
										<fmt:formatDate value="${weekly['create_date']}" pattern="HH:mm"/>
									</c:otherwise>
								</c:choose>
							</td>
							<td class="m_no">${weekly['view_tally']}</td>
						</tr>	
					</c:forEach>
				</tbody>
			</table>
			
			<div class="btm_mn clear">
				<div class="fl">
					<a class="btn_img fl"
						href="https://www.dmitory.com/index.php?mid=wisdom&amp;page=1"><i
						class="fas fa-stream"></i>&nbsp;목록</a>					
				</div>
				<div class="fr">
					<a class="btn_img"
						href="https://www.dmitory.com/index.php?mid=wisdom&amp;act=dispBoardWrite"><i
						class="fas fa-pen-alt"></i>&nbsp;쓰기</a>
				</div>
			</div>
			<form action="./" method="get" class="bd_pg clear">
				<input type="hidden" name="error_return_url"
					value="/wisdom/wisdom"><input type="hidden" name="act"
					value="">
				<fieldset>
					<legend class="blind">Board Pagination</legend>
					<input type="hidden" name="vid" value="wisdom"> <input
						type="hidden" name="mid" value="wisdom"> <input
						type="hidden" name="category" value=""> <input
						type="hidden" name="search_keyword" value=""> <input
						type="hidden" name="search_target" value=""> <input
						type="hidden" name="listStyle" value="list"> <strong
						class="direction"><i class="fa fa-angle-left"></i> Prev</strong>
					<a class="frst_last bubble this"
						href="https://www.dmitory.com/wisdom" title="첫 페이지">1</a> <a
						href="https://www.dmitory.com/index.php?mid=wisdom&amp;page=2">2</a>
					<a href="https://www.dmitory.com/index.php?mid=wisdom&amp;page=3">3</a>
					<a href="https://www.dmitory.com/index.php?mid=wisdom&amp;page=4">4</a>
					<a href="https://www.dmitory.com/index.php?mid=wisdom&amp;page=5">5</a>
					<a href="https://www.dmitory.com/index.php?mid=wisdom&amp;page=6">6</a>
					<a href="https://www.dmitory.com/index.php?mid=wisdom&amp;page=7">7</a>
					<a href="https://www.dmitory.com/index.php?mid=wisdom&amp;page=8">8</a>
					<a href="https://www.dmitory.com/index.php?mid=wisdom&amp;page=9">9</a>
					<a
						href="https://www.dmitory.com/index.php?mid=wisdom&amp;page=10">10</a>
					<span class="bubble"><a href="#" class="tg_btn2"
						data-href=".bd_go_page" title="페이지 직접 이동">...</a></span> <a
						class="frst_last bubble"
						href="https://www.dmitory.com/index.php?mid=wisdom&amp;page=994"
						title="끝 페이지">994</a> <a
						href="https://www.dmitory.com/index.php?mid=wisdom&amp;page=2"
						class="direction">Next <i class="fa fa-angle-right"></i></a>
					<div class="bd_go_page tg_cnt2 wrp">
						<button type="button" class="tg_blur2"></button>
						<input type="text" name="page" class="itx">/ 994
						<button type="submit" class="bd_btn">GO</button>
						<span class="edge"></span> <i class="ie8_only bl"></i><i
							class="ie8_only br"></i>
						<button type="button" class="tg_blur2"></button>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
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
<!-- Template custom -->
<script src="js/script.js"></script>

</div>
<!-- Body inner end -->
</body>

</html>