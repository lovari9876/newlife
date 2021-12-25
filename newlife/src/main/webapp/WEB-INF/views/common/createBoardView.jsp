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
              <form class="needs-validation" method="post" novalidate>
                <div class="form-row">
                  <div class="col-md-6 mb-3">
                    <label for="validationCustom01">First name</label>
                    <input type="text" class="form-control" id="validationCustom01" value="Mark" required>
                    <div class="valid-feedback">
                      Looks good!
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                    <label for="validationCustom02">Last name</label>
                    <input type="text" class="form-control" id="validationCustom02" value="Otto" required>
                    <div class="valid-feedback">
                      Looks good!
                    </div>
                  </div>
                </div>
                <div class="form-row">
                  <div class="col-md-6 mb-3">
                    <label for="validationCustom03">City</label>
                    <input type="text" class="form-control" id="validationCustom03" required>
                    <div class="invalid-feedback">
                      Please provide a valid city.
                    </div>
                  </div>
                  <!-- 게시판 선택 -->
                  <div class="col-md-6 mb-3">
                    <label for="validationCategory">State</label>
                    <select class="custom-select" id="validationCategory" required>
                      <option selected disabled value="">게시판을 선택하세요</option>
                      <option></option>
                      <option></option>
                      <option></option>
                      <option></option>
                      <option></option>
                      <option></option>
                      <option></option>
                      <option></option>
                      <option></option>
                      <option></option>
                      <option></option>
                    </select>
                    <div class="invalid-feedback">게시판을 선택하세요</div>
                  </div>
                </div>
                <!-- 글 제목 -->
                <div class="form-row">
                  <div class="col">
                    <label for="validationBoardName">글 제목</label>
                    <input type="text" class="form-control" id="validationBoardName" placeholder="제목을 입력하세요" required>
                    <div class="invalid-feedback">제목을 입력하세요</div>
                  </div>
                </div>
                <hr class="hr-m-20">           
                <!-- 글 내용: summernote -->
                <div class="form-group"> 
                  <textarea id="summernote" name="editordata"></textarea>
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
<script src="/plugins/jQuery/jquery.min.js"></script>
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
// Example starter JavaScript for disabling form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script>


</div><!-- Body inner end -->
</body>

</html>