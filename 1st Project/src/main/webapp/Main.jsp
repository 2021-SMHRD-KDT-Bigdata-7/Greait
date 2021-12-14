<%@page import="Model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <title>PSIT.com</title>
    
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-grad-school.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/lightbox.css">
<!--
    
TemplateMo 557 Grad School

https://templatemo.com/tm-557-grad-school

-->
  </head>

<body>
<%
// �α��� �ȵǾ����� �� �޴��� �ٸ��� �ϱ� ���� vo��������
MemberVO vo = (MemberVO)session.getAttribute("vo");

%>
   
  <!--header-->
  <header class="main-header clearfix" role="header">
    <div class="logo">
            <a href="Main.jsp"><em>PSIT</em> <span style = "font-size: x-large;">Personal IT</span></a>  
    </div>
    <a href="#menu" class="menu-link"><i class="fa fa-bars"></i></a>
    <nav id="menu" class="main-nav" role="navigation">
      <ul class="main-menu">
        <li><a href="#top">Home</a></li>
        <!-- <li class="has-submenu"><a href="">About IT</a>
          <ul class="sub-menu">
            <li><a href="#section2">IT��?</a></li>
            <li><a href="#section4">IT����</a></li>
            <li><a href="#section3">IT����</a></li>
            <li><a href="https://templatemo.com/about" rel="sponsored" class="external">External URL</a></li>
          </ul> -->
     <% if(vo!=null){%>
        <li><a href="#">����Ž��</a>
        	<ul class="sub-menu">
            <li><a href="P_Psit.jsp">PSIT �˻�</a></li>
            <li><a href="P_Psit_Result.jsp">My PSIT</a></li>
          	</ul></li>
        <!-- <li><a h\ref="#section5">Video</a></li> -->
        <li><a href="StudyPage.jsp">�ܰ躰�н�</a></li>
        <li><a href="#" class="external">Ŀ�´�Ƽ</a>
          <ul class="sub-menu">
            <li><a href="c_Community.jsp">�����Խ���</a></li>
            <li><a href="c_Study_Community.jsp">���͵� �Խ���</a></li>
            <li><a href="c_Used_Community.jsp">�߰�ŷ� �Խ���</a></li>
          </ul></li>
        <%if(vo.getM_id().equals("admin")){ %>
	        <li><a href="ManageUser.jsp" class="external">ȸ������</a></li>
        <%}else{ %>
        <li><a href="My_page.jsp" class="external">����������</a></li>
        <%} %>
        <li><a href="LogoutService" class="external">�α׾ƿ�</a></li>
     <%} else {%>
        <li><a href="Login.jsp">Login</a></li>
        <li><a href="Join.jsp">Join</a></li>        
     <%} %>
        </ul>
    </nav>
  </header>

  <!-- ***** Main Banner Area Start ***** -->
  <section class="section main-banner" id="top" data-section="section1">
      <video autoplay muted loop id="bg-video">
          <source src="assets/images/course-video.mp4" type="video/mp4" />
      </video>
		
		<% if(vo!=null){%>
		<div class="video-overlay header-text">
			<div class="caption">
				<div style="float: left; width: 50%; margin: 10%;">
					<h2>
						<em>PSIT</em> : Personal IT
					</h2>
					<h4 style="font-size: 30px; color:white; font-weight: 700"> PSIT : Personal IT</h4>
					<h4 style="font-size: 20px; color:white;"> PSIT�� �ڽ��� ���� �м��� ���� IT������ ��õ�޴� ���� �Դϴ�.</h4>
					<div class="main-button">
						<div class="scroll-to-section"></div>
						<br><br>
						<a href="P_Psit.jsp">�˻��Ϸ�����</a>
					</div>
				</div>
				<div>
					<div align="right" style="float: right; width: 30%; height: 600px; background-color: rgba(250,250,250,0.1); text-align: center;">
						<h4 style = "margin : 5%; font-size: 40px; text-transform: uppercase; font-weight: 800; color: #fff; letter-spacing: 1px;">�н�������Ȳ</h4>
					</div>
				</div>
			</div>
		</div>
		<%}else{ %>
		<div class="video-overlay header-text">
			<div class="caption">
				<div>
					<h2>
						<em>PSIT</em> : Personal IT
					</h2>
					<h4 style="font-size: 30px; color:white; font-weight: 700"> PSIT : Personal IT</h4>
					<h4 style="font-size: 20px; color:white;"> PSIT�� �ڽ��� ���� �м��� ���� IT������ ��õ�޴� ���� �Դϴ�.</h4>
					<div class="main-button">
						<div class="scroll-to-section"></div>
						<br><br>
						<a href="Login.jsp"><span style = "font-size : 25px">�α����ϰ�</span><br>�˻��Ϸ�����</a>
					</div>
				</div>
			</div>
		</div><%} %>
	</section>
  <!-- ***** Main Banner Area End ***** -->


  <section class="features">
    <div class="container">
      <div class="row">
        <div class="col-lg-4 col-12">
          <div class="features-post">
            <div class="features-content">
              <div class="content-show">
                <h4><i class="fa fa-pencil"></i>What is IT?</h4>
              </div>
              <div class="content-hide">
                <p>IT ��?</p>
                <p class="hidden-sm">Curabitur id eros vehicula, tincidunt libero eu, lobortis mi. In mollis eros a posuere imperdiet.</p>
                <div class="scroll-to-section"><a href="#section2">More</a></div>
            </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-12">
          <div class="features-post second-features">
            <div class="features-content">
              <div class="content-show">
                <h4><i class="fa fa-graduation-cap"></i>IT ����</h4>
              </div>
              <div class="content-hide">
                <p>IT ���� ��������</p>
                <p class="hidden-sm">Curabitur id eros vehicula, tincidunt libero eu, lobortis mi. In mollis eros a posuere imperdiet.</p>
                <div class="scroll-to-section"><a href="#section4">More</a></div>
            </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-12">
          <div class="features-post third-features">
            <div class="features-content">
              <div class="content-show">
                <h4><i class="fa fa-book"></i>IT ����</h4>
              </div>
              <div class="content-hide">
                <p>IT ������ ���Ͽ�</p>
                <p class="hidden-sm">Curabitur id eros vehicula, tincidunt libero eu, lobortis mi. In mollis eros a posuere imperdiet.</p>
                <div class="scroll-to-section"><a href="#section3">More</a></div>
            </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

	<section class="section why-us" data-section="section2">
		<div class="container">
			<div class="row">
				<div class="col-md-12" style="text-align: center;">
					<div class="section-heading">
						<h2>What is IT?</h2>
					</div>
				</div>
				<div class="col-md-12">
					<img src="assets/images/001.png" style="width: 100%">
				</div>
				<div id='tabs'>
					<section class='tabs-content'>
						<article id='tabs-1'>
							<div class="row">
								<div class="col-md-6"></div>
							</div>
						</article>
					</section>
				</div>
			</div>
		</div>
	</section>
	<!--IT��������κ�---------------------------------------------------------------------------------------------------------------------------------------->
<section class="section courses" data-section="section4">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-12" style="text-align : center;">
          <div class="section-heading">
            <h2>IT ����</h2>
          </div>
        </div>
        <div class="owl-carousel owl-theme">
          <div class="item" >
            <img src="assets/images/j_001.png" alt="Course #1" >
            <div class="down-content">
              <div class="text-button-pay" >
              <%String a ="1"; %>
                <a href="Road_map.jsp?num=<%=a%>" >�ε�ʺ������� <i class="fa fa-angle-double-right"></i></a>
              </div>
            </div>
          </div>
          <div class="item">
            <img src="assets/images/j_003.png" alt="Course #2">
            <div class="down-content">
              <div class="text-button-pay">
              <%String b ="2"; %>
                <a href="Road_map.jsp?num=<%=b%>">�ε�ʺ������� <i class="fa fa-angle-double-right"></i></a>
              </div>
            </div>
          </div>
          <div class="item">
            <img src="assets/images/j_005.png" alt="Course #3">
            <div class="down-content">
              <div class="text-button-pay">
             	<%String c ="3"; %>
                <a href="Road_map.jsp?num=<%=c%>">�ε�ʺ������� <i class="fa fa-angle-double-right"></i></a>
              </div>
            </div>
          </div>
          <div class="item">
            <img src="assets/images/j_007.png" alt="Course #4">
            <div class="down-content">
              <div class="text-button-pay">
                <%String d ="4"; %>
                <a href="Road_map.jsp?num=<%=d%>">�ε�ʺ������� <i class="fa fa-angle-double-right"></i></a>
              </div>
            </div>
          </div>
          <div class="item">
            <img src="assets/images/j_009.png" alt="">
            <div class="down-content">
              <div class="text-button-pay">
               <%String e ="5"; %>
                <a href="Road_map.jsp?num=<%=e%>">�ε�ʺ������� <i class="fa fa-angle-double-right"></i></a>
              </div>
            </div>
          </div>
          <div class="item">
            <img src="assets/images/j_011.png" alt="">
            <div class="down-content">
              <div class="text-button-pay">
                <%String f ="6"; %>
                <a href="Road_map.jsp?num=<%=f%>">�ε�ʺ������� <i class="fa fa-angle-double-right"></i></a>
              </div>
            </div>
          </div>
          <div class="item">
            <img src="assets/images/j_013.png" alt="">
            <div class="down-content">
              <div class="text-button-pay">
               <%String g ="7"; %>
                <a href="Road_map.jsp?num=<%=g%>">�ε�ʺ������� <i class="fa fa-angle-double-right"></i></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
<!--IT�����κ�---------------------------------------------------------------------------------------------------------------------------------------->
    <section class="section coming-soon" data-section="section3">
    <div class="container">
      <div class="row">
      	<div class="col-md-12" style="text-align : center;">
            <div class="section-heading">
            <h2>IT ����</h2>
          </div>
          </div>
        <div class="col-md-5">
         <img src="assets/images/002.png" style = "width : 100% ">

 <!-------------- form�±׿� �ε�� �ٷΰ��� CSS�ٿ����ִµ� ----------------------------------------------->
           <!--  <form id="contact" action="" method="get">
              <div class="row">
                  <fieldset>
                    <button type="submit" id="form-submit" class="button"></button> 
                  </fieldset>-->
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>
  
  	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<p>
						<i class="fa fa-copyright"></i> Copyright 2020 by Grad School |
						Design: <a href="https://templatemo.com" rel="sponsored"
							target="_parent">TemplateMo</a><br> Distributed By: <a
							href="https://themewagon.com" rel="sponsored" target="_blank">ThemeWagon</a>
					</p>
				</div>
			</div>
		</div>
	</footer>
  <!-- Scripts �����ȵ�------------------------------------------------------------------------------------------------------------------>
  <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/isotope.min.js"></script>
    <script src="assets/js/owl-carousel.js"></script>
    <script src="assets/js/lightbox.js"></script>
    <script src="assets/js/tabs.js"></script>
    <script src="assets/js/video.js"></script>
    <script src="assets/js/slick-slider.js"></script>
    <script src="assets/js/custom.js"></script>
    <script>
        //according to loftblog tut
        $('.nav li:first').addClass('active');

        var showSection = function showSection(section, isAnimate) {
          var
          direction = section.replace(/#/, ''),
          reqSection = $('.section').filter('[data-section="' + direction + '"]'),
          reqSectionPos = reqSection.offset().top - 0;

          if (isAnimate) {
            $('body, html').animate({
              scrollTop: reqSectionPos },
            800);
          } else {
            $('body, html').scrollTop(reqSectionPos);
          }

        };

          var checkSection = function checkSection() {
          $('.section').each(function () {
            var
            $this = $(this),
            topEdge = $this.offset().top - 80,
            bottomEdge = topEdge + $this.height(),
            wScroll = $(window).scrollTop();
            if (topEdge < wScroll && bottomEdge > wScroll) {
              var
              currentId = $this.data('section'),
              reqLink = $('a').filter('[href*=\\#' + currentId + ']');
              reqLink.closest('li').addClass('active').
              siblings().removeClass('active');
            }
          });
        };

        $('.main-menu > nav, .scroll-to-section').on('click', 'a', function (e) {
          if($(e.target).hasClass('external')) {
            return;
          }
             e.preventDefault();
          $('#menu li').removeClass('active');
          showSection($(this).attr('href'), true);
      });  
 
        $(window).scroll(function () {
          checkSection();
        });
    </script>
</body>
</html>



