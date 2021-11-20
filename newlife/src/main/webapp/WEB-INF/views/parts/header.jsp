<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!-- 중요!!!!!! -->
<!-- 페이지 include 쓸 때는 반드시 include되는 파일 내부의 <html><head><body>을 싹 다 없앨것!!! -->
<!-- 없애지 않으면... 온갖 에러의 근원이 된다.. -->

	<!-- for 주요 공지사항, 평소엔 숨겨둘것 -->
	<!-- js에서 navbar-fixed 때문에.. 일단 남겨는 둘것 -->
    <div id="top-bar" class="top-bar">
     <!--    <div class="container">
          <div class="row">
              <div class="col-lg-8 col-md-8">
                <ul class="top-info text-center text-md-left">
                    <li><i class="fas fa-map-marker-alt"></i> <p class="info-text">9051 Constra Incorporate, USA</p>
                    </li>
                </ul>
              </div>
              / Top info end
  
              <div class="col-lg-4 col-md-4 top-social text-center text-md-right">
                <ul class="list-unstyled">
                    <li>
                      <a title="Facebook" href="https://facebbok.com/themefisher.com">
                          <span class="social-icon"><i class="fab fa-facebook-f"></i></span>
                      </a>
                      <a title="Twitter" href="https://twitter.com/themefisher.com">
                          <span class="social-icon"><i class="fab fa-twitter"></i></span>
                      </a>
                      <a title="Instagram" href="https://instagram.com/themefisher.com">
                          <span class="social-icon"><i class="fab fa-instagram"></i></span>
                      </a>
                      <a title="Linkdin" href="https://github.com/themefisher.com">
                          <span class="social-icon"><i class="fab fa-github"></i></span>
                      </a>
                    </li>
                </ul>
              </div>
              / Top social end
          </div>
          / Content row end
        </div> -->
        <!--/ Container end -->
    </div>
    <!--/ Topbar end -->
    
<!-- Header start -->
<header id="header" class="header-two">
  <div class="site-navigation">
    <div class="container">
        <div class="row">
          <div class="col-lg-12">
              <nav class="navbar navbar-expand-lg navbar-light p-0">
                
                <div class="logo"> <!-- logo font: BC card B -->
                    <a class="d-block" href="/">
                      <img loading="lazy" src="images/logo.png" alt="Constra">
                    </a>
                </div><!-- logo end -->

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbar-collapse" 
               			aria-controls="navbar-collapse" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                
                <!-- <li class="active"> 이거는 current page에 해당하는 서브메뉴에 붙여줘.. -->
                <div id="navbar-collapse" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav ml-auto align-items-center">
                    
                      <li class="nav-item dropdown active">
                          <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">교회 소개 <i class="fa fa-angle-down"></i></a>
                          <ul class="dropdown-menu" role="menu">                          
                            <li><a href="/greeting">인사말</a></li>
                            <li><a href="/statementOfFaith">목회 철학</a></li>
                            <li><a href="/books">세 책 이야기</a></li>
                            <li><a href="/serviceTime">예배 안내</a></li>
                            <li><a href="/map">오시는 길</a></li>       
                            <li class="dropdown-submenu">
                                <a href="#!" class="dropdown-toggle" data-toggle="dropdown">교회 학교 </a>
                                <ul class="dropdown-menu">
                                  <li><a href="/kindergarten">쥬빌리 유치부</a></li>
                                  <li><a href="/elementary">푸른초장 초등부</a></li>                                  
                                  <li><a href="/adolescent">시온의 영광 중고등부</a></li>
                                  <li><a href="/youth1">많은 물소리 청년1부</a></li>
                                  <li><a href="/youth2">다윗의 열쇠 청년2부</a></li>
                                </ul>
                            </li>
                            <li class="dropdown-submenu">
                                <a href="#!" class="dropdown-toggle" data-toggle="dropdown">교회 사역 </a>
                                <ul class="dropdown-menu">
                                  <li><a href="/intercessory">중보 기관 및 선교사</a></li>
                                  <li><a href="/">크리스천 싱글즈</a></li><!-- 링크 걸어서 새 창 띄우기 -->    
                                </ul>
                            </li>
                          </ul>
                      </li>

                      <li class="nav-item dropdown">
                          <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">예배와 찬양 <i class="fa fa-angle-down"></i></a>
                          <ul class="dropdown-menu" role="menu">
                            <li><a href="/sermon">예배 영상</a></li>                               
                            <li><a href="/youthPlatform">지난 설교 모음</a></li>   
                            <li><a href="testimonials.html">예배 찬양</a></li>
                          </ul>
                      </li>
                                                 
                      <li class="nav-item dropdown">
                          <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">청년 플랫폼 <i class="fa fa-angle-down"></i></a>
                          <ul class="dropdown-menu" role="menu">
                            <li><a href="services.html">청년예배</a></li>
                            <li><a href="service-single.html">고백 찬양</a></li>
                          </ul>
                      </li>
                      
       				  <li class="nav-item dropdown">
                          <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">말씀과 나눔 <i class="fa fa-angle-down"></i></a>
                          <ul class="dropdown-menu" role="menu">                
							<li><a href="/timeOfHermon">헐몬의 시간</a></li>
							<li><a href="/sermon">용디기의 생각</a></li>
							<li><a href="/timeOfHermon">매일 묵상</a></li>
							<li><a href="/youthPlatform">생명샘 말씀</a></li>
                          </ul>
                      </li>
                      
                      <li class="nav-item dropdown">
                          <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">새생활 뉴스 <i class="fa fa-angle-down"></i></a>
                          <ul class="dropdown-menu" role="menu">
                            <li><a href="typography.html">새소식</a></li>
                            <li><a href="404.html">공지사항</a></li>
                          </ul>
                      </li>
                      
                    </ul>
                </div>
              </nav>
          </div>
          <!--/ Col end -->
        </div>
        <!--/ Row end -->
    </div>
    <!--/ Container end -->

  </div>
  <!--/ Navigation end -->
</header>
<!--/ Header end -->
