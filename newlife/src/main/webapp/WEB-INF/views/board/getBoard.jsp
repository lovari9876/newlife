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
            <h1 class="banner-title"><a href="${board.c_path}">${board.c_name}</a></h1>
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb justify-content-center">
                <li class="breadcrumb-item"><a href="#">새생활교회</a></li>
                <c:choose> 
                  <%-- 대메뉴 있으면 넣기 --%>
                  <c:when test = "${board.c_name != board.c_parent_name}">
                    <li class="breadcrumb-item">${board.c_parent_name}</li>
                  </c:when>
                  <%-- 새생활뉴스는 중간 breadcrumb 없어(테이블에서 name == parent_name) --%>
                  <c:otherwise></c:otherwise>
                </c:choose>                      
                <li class="breadcrumb-item active" aria-current="page">${board.c_name}</li>
              </ol>
            </nav>
          </div>
        </div><!-- Col end -->
      </div><!-- Row end -->
    </div><!-- Container end -->
  </div><!-- Banner text end -->
</div><!-- Banner area end --> 


<!-- 내용 컨테이너 -->
<section class="board-view-container">
  <div class="container">
    <!-- justify-content-center가 row내부 박스가 하나밖에 업어도 가운데 정렬해줌 -->
    <div class="row justify-content-center"> 
      <div class="col-lg-8 mb-5 mb-lg-0">        
        <div class="post-content post-single">
          <div class="post-body">
            <div class="entry-header">
              <div class="post-meta">
                <span class="post-id"><i class="far fa-sticky-note"></i> ${board.id}</span>
                <span class="post-category">
                  <i class="far fa-folder-open"></i> ${board.c_name}</span>
                <span class="post-author">
                  <i class="far fa-user"></i> ${board.nickname}</span>
                <span class="post-meta-date"><i class="far fa-calendar"></i>                    
                  <!-- 작성일이 오늘이면 시간, 아니면 날짜 출력 jstl로 구현 -->
                  <jsp:useBean id="today" class="java.util.Date" /> 
                  <!-- Date() 생성자가 가장 가까운 millisecond의 date 객체 하나를 생성 -->
                  <fmt:formatDate value="${today}" pattern="yyyy. MM. dd" var="now"/>
                  <fmt:formatDate value="${board.create_date}" pattern="yyyy. MM. dd" var="date"/>
                  <c:choose>
                    <c:when test="${now ne date}">${date}</c:when> 
                    <c:otherwise>
                      <fmt:formatDate value="${board.create_date}" pattern="HH:mm"/>
                    </c:otherwise>
                  </c:choose>
                </span>
                <span class="post-view">
                  <i class="far fa-eye"></i> ${board.view_tally}</span>
              </div>
              <h2 class="entry-title">${board.title}</h2> <!-- 제목 -->
            </div><!-- header end -->
            <hr class="hr-m-20">
            <div class="entry-content">${board.content}</div> <!-- 내용 -->
            <hr>
            
            <!-- 버튼: 목록,수정,작성 -->
            <div class="tags-area d-flex align-items-center justify-content-between">
              <div class="post-tags">         
                <a href="${board.c_path}">목록</a>
              </div>
              <div class="post-tags">  
                <a href="/write">글쓰기</a>
                
<!--                 수정/삭제 버튼 조건 -->
<%--                 <c:if test = "${content_view['M_NO'] eq memberVO.m_no}"> --%>
<%--                   <a href="board_modify_view?bw_no=${content_view['BW_NO']}">수정</a> --%>
<%--                 </c:if> --%>                
                <a href="/modify/${board.id}">수정</a>                
                <a href="/delete-board${board.c_path}/${board.id}">삭제</a>
              </div>
            </div>

          </div><!-- post-body end -->
        </div><!-- post content end -->

<!-- 글쓴이 박스... -->
<!--         <div class="author-box d-nlock d-sm-flex"> -->
<!--           <div class="author-img mb-4 mb-md-0"> -->
<!--             <img loading="lazy" src="/images/news/avator1.png" alt="author"> -->
<!--           </div> -->
<!--           <div class="author-info"> -->
<!--             <h3>Elton Themen<span>Site Engineer</span></h3> -->
<!--             <p class="mb-2">Lisicing elit, sed do eiusmod tempor ut labore et dolore magna aliqua. Ut enim ad vene minim -->
<!--               veniam, quis nostrud exercitation nisi ex ea commodo.</p> -->
<!--             <p class="author-url mb-0">Website: <span><a href="#">http://www.example.com</a></span></p> -->

<!--           </div> -->
<!--         </div> Author box end -->

      </div><!-- Content Col end -->
    </div><!-- Main row end -->
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

</div><!-- Body inner end -->
</body>

</html>