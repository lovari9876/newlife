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
	<title>새생활교회 - 글쓰기</title>

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
                <h1 class="banner-title">글 쓰기</h1>
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
              <!-- spring form tag에서 modelAttribute="bean"는 controller에서 @ModelAttribute("bean") -->
              <form action="/create-board" method="post" <%-- enctype="multipart/form-data" --%> >
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

                <div class="form-row">
                  <div class="col">
                    <!-- 게시판 선택 -->
                    <%-- label은 for로 지정한 id의 element를 대상으로 한다! --%>
                    <%-- 없어도 되지만 있는 것이 정보성 측면에서 바람직해 --%>
                    <%-- 그리고 label이 있고 연결되어있으면, label을 클릭할때 해당 입력란에 커서가 위치하게 된다!! --%>
                    <label for="categorySelect" >게시판</label>
                    <select id="categorySelect" class="custom-select" name="category_id" required>
                      <!-- member role에 따라 선택지 개수가 달라져야 함! -->
                      <option label="게시판을 선택하세요" disabled selected/>
                      <c:forEach items="${categoryList}" var="category"> 
                        <option value="${category.id}" value2="${category.is_worship}" >${category.name}</option>
                      </c:forEach>                      
<%--                       <form:options items="${categoryList}" itemValue="id" itemLabel="name"/> --%>
                   
<%--                       <form:option value="-" selected disabled="true" >게시판을 선택하세요</form:option> --%>
<%--                       <c:forEach items="${categoryList}" var="category">     --%>
<%--                       <form:option value="${category['id']}">${category['name']}</form:option> --%>
<%--                       </c:forEach> --%>         
                    </select>             
                    <div class="invalid-feedback">게시판을 선택하세요</div>
                  </div>
                </div>
                
                <%-- category에 따른 hide/show block --%>
                <div id="worshipInputs">
                  <!-- 예배/ 해당날짜 -->
                  <div class="form-row">
                    <div class="col">
                      <label for="serviceName">예배</label>
                      <input type="text" id="serviceName" class="form-control" name="service_name" aria-describedby="serviceNameHelpBlock" required>
                      <!-- help 블럭 -->
                      <small id="serviceNameHelpBlock" class="form-text text-muted">
                                                  해당하는 예배를 쉼표(,)로 나누어 입력해주세요. (예) 주일 2부 예배, 성회
                      </small>
                    </div>
                  </div>
                  <div class="form-row">
                    <div class="col">
                      <label for="serviceDate">날짜</label>
                      <input type="text" id="serviceDate" class="form-control" name="service_date" 
                             aria-describedby="serviceDateHelpBlock" required>
                      <!-- help 블럭 -->
                      <small id="serviceDateHelpBlock" class="form-text text-muted">
                                                  해당하는 날짜를 예시와 같이 입력해주세요. (예) 2022-01-01
                      </small>
                    </div>
                  </div>
                  <!-- 설교자/ 말씀 -->
                  <div class="form-row">
                    <div class="col">
                      <label for="minister">설교자</label>
                      <input type="text" id="minister" class="form-control" name="minister" 
                             aria-describedby="ministerHelpBlock" required>
                      <!-- help 블럭 -->
                      <small id="ministerHelpBlock" class="form-text text-muted">
                                                  설교자를 입력해주세요. (예) 김용덕 목사
                      </small>
                    </div>
                  </div>
                  <div class="form-row">
                    <div class="col">
                      <label for="bible">말씀</label>
                      <input type="text" id="bible" class="form-control" name="bible" 
                             aria-describedby="bibleHelpBlock" required>
                      <!-- help 블럭 -->
                      <small id="bibleHelpBlock" class="form-text text-muted">
                                                  성경 말씀을 예시와 같이 입력해주세요. (예) 베드로전서 1장 1절-5절
                      </small>
                    </div>
                  </div>
                </div>
                <!-- 글 제목 -->
                <div class="form-row">
                  <div class="col">
                    <label for="title">글 제목</label>
                    <input type="text" id="title" class="form-control" name="title" placeholder="제목을 입력하세요" required>
                    <div class="invalid-feedback">제목을 입력하세요</div>
                  </div>
                </div>
                <hr class="hr-m-20">       
                    
                <!-- 글 내용: summernote -->
                <div class="form-group"> 
                  <textarea id="summernote" name="content" required></textarea>
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

<!-- 서머노트 -->
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
      placeholder: '내용을 입력하세요', //placeholder 설정
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


<!-- category 선택에 따른 input -->
<%-- HTML5 부터는 type="text/javascript" 안써도 돼! 쓰지말자 --%>
<script>  
//<option>에서 임의로 value2="${category.is_worship}"으로 주어서 
//worship 관련 input show/hide 여부를 결정하기
$(document).ready(function() {

  // 숨긴 상태로 시작
  $('#worshipInputs').hide();  
  
  $('#categorySelect').change(function() {	
	// 임의로 지정한 attribute인 value2="${category.is_worship}" 가져오기
    var isWorship = $('#categorySelect option:selected').attr('value2');
	// console.log(isWorship);
	// 찍어보니깐 놀랍게도 false: boolean이 아니고 string이었다..
	// console.log(isWorship instanceof Boolean);
	
	// worship일 때만 관련 input 보이게 하기
    if (isWorship == 'true') { // string이라서
      $('#worshipInputs').show();
      console.log("done");
    } else {
      $('#worshipInputs').hide();
    }
  });   
}); 

// $("select[name=selectBox]").val();
</script>


<!-- validation -->
<script>
$(document).ready(function() {
  
	function checkDate() {
	  	// serviceDate 정규식 literal
	  	let dateRE = /^(19[0-9]{2}|2[0-9]{3})-(0[1-9]|1[012])-([123]0|[012][1-9]|31)$/;
	  	let serviceDate = $('serviceDate').val();
	  	console.log(serviceDate);
	  	
		if (dateRE.test(serviceDate)) {
			$('#serviceDateHelpBlock').css('color', 'red');
		} else {
			$('#serviceDateHelpBlock').css('color', '#6f9ef2');
		}
   };
   
   checkDate();
   
   
});
</script>

</div><!-- Body inner end -->
</body>

</html>