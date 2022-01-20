<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
    <!-- summernote css -->
    <link rel="stylesheet" href="/plugins/summernote/summernote-bs4.css">
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
                <h1 class="banner-title">글 수정하기</h1>
              </div>
          </div><!-- Col end -->
        </div><!-- Row end -->
    </div><!-- Container end -->
  </div><!-- Banner text end -->
</div><!-- Banner area end -->


<!-- 컨테이너 -->
<section class="create-board-view-container">
  <div class="container">
    <!-- justify-content-center가 row내부 박스가 하나밖에 업어도 가운데 정렬해줌 -->
    <div class="row justify-content-center"> 
      <div class="col-lg-8 mb-5 mb-lg-0">        
        <div class="post-content post-single">
          <div class="post-body">            
            <!-- content part -->     
            <div class="entry-content"> 
            
              <!-- !!!form!!! -->
              <%--  spring form tag에서 modelAttribute="bean"는 controller에서 @ModelAttribute("bean") --%>
              <form action="/update-board" method="post" <%-- enctype="multipart/form-data" --%> >
                <%-- ***************************************************** --%>
                <%-- 모든게 틀림이 업는데 일주일 넘게 원인 모를 passing null data를 발생시킨 원인!!!!! --%>
                <%-- enctype="multipart/form-data" --%>
                <%-- 어떠한 처리 없이 그냥 저것만 쓰면.. 모든 data를 다 null값 가져옴.. --%>
                <%-- mapping이 완벽해도 절대 값을 bind안하고 원인도 안뜸 그냥 null --%>
                
                <%-- 
                enctype="multipart/form-data"는 ****ONLY FOR**** <input type="file"> 있을 때
                <input>의 name="" Attribute
                1. Name of the form control. Submitted with the form as part of a name/value pair.
                2. name/value로 Spring에서도 자동 매핑함! 즉 name == DtoClass variableName 이어야함! 
                --%>
                    
                <!-- form-row 남겨두기 -->
<!--                 <div class="form-row"> -->
<!--                   <div class="col-md-6 mb-3"> -->
<!--                     <label for="validationCustom01">First name</label> -->
<!--                     <input type="text" class="form-control" id="validationCustom01" value="Mark" required> -->
<!--                     <div class="valid-feedback"> -->
<!--                       Looks good! -->
<!--                     </div> -->
<!--                   </div> -->
<!--                   <div class="col-md-6 mb-3"> -->
<!--                     <label for="validationCustom02">Last name</label> -->
<!--                     <input type="text" class="form-control" id="validationCustom02" value="Otto" required> -->
<!--                     <div class="valid-feedback"> -->
<!--                       Looks good! -->
<!--                     </div> -->
<!--                   </div> -->
<!--                 </div> -->
                
                <%-- board.id hidden으로 넘기기 --%>
                <input type="hidden" name="id" value="${board.id}" />
                
                <div class="form-row">
                  <div class="col">
                    <!-- 게시판 선택 -->
                    <label >게시판</label>                   
                    <select class="custom-select" name="category_id" required>
                      <%-- member role에 따라 선택지 개수가 달라져야 함! --%>
                      <c:forEach items="${categoryList}" var="category">
                        <c:set var="c_id" value="${category.id}"/>
                        <c:set var="c_name" value="${category.name}"/>
                        <%-- 원래 게시판에 selected --%>                         
                        <option value="${c_id}" <c:if test="${c_id == board.category_id}">selected</c:if>>${c_name}</option>
                        <%-- 위아래 둘다 가능! --%>
                        <%-- 다만 EL은 표현식 덩어리 안에 들어가야해!! ${}안에  == 등의 연산자가 다 들어가야지, 분할하면 읽어들이지 못함! --%>
                        <%-- <option value="${c_id}" <c:out value="${c_id == board.category_id ? 'selected' : ''}"/>>${category.name}</option> --%>
                     </c:forEach>
                    </select>  
                  </div>
                </div>
                <!-- 글 제목 -->
                <div class="form-row">
                  <div class="col">
                    <label >글 제목</label>
                    <input type="text" class="form-control" name="title" value="${board.title}" required>
                  </div>
                </div>
                <hr class="hr-m-20">           
                <!-- 글 내용: summernote -->
                <div class="form-group"> 
                  <textarea id="summernote" name="content">${board.content}</textarea>
                </div>
<!--                 비밀글 만들때 사용; 글 작성 시 검토용으로!! -->
<!--                 <div class="form-group"> -->
<!--                   <div> -->
<!--                     <input type="checkbox" value="" > -->
<!--                     <label >나만 보기</label> -->
<!--                   </div> -->
<!--                 </div> -->
                <hr>
                                
                <!-- 버튼: 목록,수정,작성 -->
                <div class="tags-area d-flex align-items-center justify-content-end">
                  <button class="post-tags" type="submit">등록</button>
                </div>
              </form><!-- form end -->
            </div> <!-- content end-->            

          </div><!-- post-body end -->
        </div><!-- post content end -->
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
<!-- popper -->
<script src="/plugins/bootstrap/popper.min.js"></script>
<!-- Bootstrap jQuery -->
<script src="/plugins/bootstrap/bootstrap.min.js" defer></script>
<!-- Slick Carousel -->
<script src="/plugins/slick/slick.min.js"></script>
<script src="/plugins/slick/slick-animation.min.js"></script>
<!-- Color box -->
<script src="/plugins/colorbox/jquery.colorbox.js"></script>
<!-- shuffle -->
<script src="/plugins/shuffle/shuffle.min.js" defer></script>
<!-- summernote js -->
<script src="/plugins/summernote/summernote-bs4.js"></script>
<script src="/plugins/summernote/lang/summernote-ko-KR.js"></script>

<!-- Template custom -->
<script src="/js/script.js"></script>

<!-- for Form validation =================================== -->
<script>
jQuery(function ($) {
	'use strict';
  
	// 서머노트 run
    $(document).ready(function() {
      	        
        $('#summernote').summernote({
          height: 300,                 // 에디터 높이
          minHeight: null,             // 최소 높이
          maxHeight: null,             // 최대 높이
          focus: false,                // 에디터 로딩후 포커스를 맞출지 여부
          lang: "ko-KR",         // 한글 설정
          toolbar: [
            // [groupName, [list of button]]
            ['fontname', ['fontname']],
            ['fontsize', ['fontsize']],
            ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
            ['color', ['forecolor','color']],
            ['table', ['table']],
            ['para', ['ul', 'ol', 'paragraph']],
            ['height', ['height']],
            ['insert',['picture','link','video']],
            ['view', ['help']]
          ],
          fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
          fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']              
        });

  	});
});
</script>



</div><!-- Body inner end -->
</body>

</html>