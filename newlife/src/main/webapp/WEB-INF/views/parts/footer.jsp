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
                          </ul>
                      </li>

                      <li class="nav-item dropdown">
                          <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">말씀과 찬양 <i class="fa fa-angle-down"></i></a>
                          <ul class="dropdown-menu" role="menu">
                          	<li class="dropdown-submenu">
                                <a href="#!" class="dropdown-toggle" data-toggle="dropdown">예배 영상</a>
                                <ul class="dropdown-menu">
                                  <li><a href="/sermon">주일/주중 설교</a></li>
                                  <li><a href="/timeOfHermon">헐몬의 시간</a></li>
                                  <li><a href="/youthPlatform">청년 플랫폼</a></li>
                                </ul>
                            </li>
                            <li><a href="team.html">Our People</a></li>
                            <li><a href="testimonials.html">Testimonials</a></li>
                            <li><a href="faq.html">Faq</a></li>
                            <li><a href="pricing.html">Pricing</a></li>
                          </ul>
                      </li>
              
                      <li class="nav-item dropdown">
                          <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">교회 학교 <i class="fa fa-angle-down"></i></a>
                          <ul class="dropdown-menu" role="menu">
                            <li><a href="projects.html">Projects All</a></li>
                            <li><a href="projects-single.html">Projects Single</a></li>
                          </ul>
                      </li>
              
                      <li class="nav-item dropdown">
                          <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">교회 사역 <i class="fa fa-angle-down"></i></a>
                          <ul class="dropdown-menu" role="menu">
                            <li><a href="services.html">Services All</a></li>
                            <li><a href="service-single.html">Services Single</a></li>
                          </ul>
                      </li>
              
                      <li class="nav-item dropdown">
                          <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">새생활 뉴스 <i class="fa fa-angle-down"></i></a>
                          <ul class="dropdown-menu" role="menu">
                            <li><a href="typography.html">Typography</a></li>
                            <li><a href="404.html">404</a></li>
                            <li class="dropdown-submenu">
                                <a href="#!" class="dropdown-toggle" data-toggle="dropdown">Parent Menu</a>
                                <ul class="dropdown-menu">
                                  <li><a href="#!">Child Menu 1</a></li>
                                  <li><a href="#!">Child Menu 2</a></li>
                                  <li><a href="#!">Child Menu 3</a></li>
                                </ul>
                            </li>
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