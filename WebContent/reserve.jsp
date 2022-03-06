<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>JAVA CHiP</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  <!-- Favicons -->
  
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/line-awesome/css/line-awesome.min.css" rel="stylesheet">
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Selecao - v2.2.0
  * Template URL: https://bootstrapmade.com/selecao-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->


  <!-- css -->
  <link rel="stylesheet" href="./cafe/css/seat_intro.css">
  <!-- 슬라이드 효과 -->
  <link rel="stylesheet" href="./cafe/css/seat_intro_slide.css">
  <!-- 스크롤 효과 -->
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
  <!-- 스크롤 스크립트 추가 -->
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

  <!-- 마우스 오버 jquery 추가 -->
  <script src="http://code.jquery.com/jquery-1.6.2.min.js" type="text/javascript"></script>
  <script type="text/javascript">
      $(function(){
          $('.use').mouseover(function(e) { // mouse hover 좌표
              $(this).mousemove(function(e) {
                  $('#blueprint_layer #subtitle').empty().append($(this).attr("title_sub")); // 오버 레이어 문구 치환
                  $('#blueprint_layer #maintitle').empty().append($(this).attr("title_main")); // 오버 레이어 제목 치환
                  $('#blueprint_layer #seatExplain').empty().append($(this).attr("seat_explain")); // 오버 레이어 설명 치환
                  var t=e.pageY - 560;
                  var l=e.pageX + 20;
                  $('#blueprint_layer').css({"top":t, "left":l,"position":"absolute","opacity":"0,8" }).show();
              });
          });
          $('.use').mouseout(function() {
              $('#blueprint_layer').hide();
          });
      });
  </script>

</head>
<style>
  #s_button {
    background: #ef6603;
    border: 0;
    padding: 10px 24px;
    color: #fff;
    transition: 0.4s;
    border-radius: 50px;
  }

  select {
    width: 200px;
    padding: .8em .5em;
    font-family: inherit;
    background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    border: 1px solid #999;
    border-radius: 0px;
  }

  select::-ms-expand {
    /* for IE 11 */
    display: none;
  }
</style>

<body>

  <%
		String userId = null;
		if(session.getAttribute("userId") != null){
			userId = (String)session.getAttribute("userId");
		}
		
	%>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center ">
    <div class="container d-flex align-items-center">

      <div class="logo mr-auto">
        <h1 class="text-light"><a href="main.jsp">JAVA CHiP</a></h1>
        <!-- 로고 클릭시 메인화면으로 -->
        
      </div>

      <nav class="nav-menu d-none d-lg-block">
        <ul>
        
        	<%
        		//비로그인 상태
        		if(userId == null){
        	%>
        	
          <li><a href="main.jsp">Home</a></li>
          <li><a href="#about">About</a></li>
          <li><a href="order.jsp">Order</a></li>
          <li><a href="reserve.jsp">Reserve</a></li>
          <li><a href="#pricing"></a></li>
          <li><a href="login.jsp">Login</a></li>
          <!-- ---드롭다운 메뉴 폼--- -->
          <!-- <li class="drop-down"><a href="">Drop Down</a>
            <ul>
              <li><a href="#">Drop Down 1</a></li>
              <li class="drop-down"><a href="#">Drop Down 2</a>
                <ul>
                  <li><a href="#">Deep Drop Down 1</a></li>
                  <li><a href="#">Deep Drop Down 2</a></li>
                  <li><a href="#">Deep Drop Down 3</a></li>
                  <li><a href="#">Deep Drop Down 4</a></li>
                  <li><a href="#">Deep Drop Down 5</a></li>
                </ul>
              </li>
              <li><a href="#">Drop Down 3</a></li>
              <li><a href="#">Drop Down 4</a></li>
              <li><a href="#">Drop Down 5</a></li>
            </ul>
          </li> -->
          <li><a href="signup.jsp">Sign Up</a></li>
          
          <%
          	}else{
          	//로그인 상태
          	%>
          	
          <li><a href="main.jsp">Home</a></li>
          <li><a href="#about">About</a></li>
          <li><a href="order.jsp">Order</a></li>
          <li><a href="reserve.jsp">Reserve</a></li>
          <li><a href="#pricing"></a></li>
          <li><a href="logoutAction.jsp">Logout</a></li>
          <li><a href="mypage.jsp">MyPage</a></li>
          
          <% 
          	}
          %>

        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <!-- <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Inner Page</h2>
          <ol>
            <li><a href="index.html">Home</a></li>
            <li>Inner Page</li>
          </ol>
        </div>

      </div>
    </section> -->
    <!-- End Breadcrumbs -->

    <section class="inner-page" style="height: 1200px;">
      <div style="margin-top: 30px;">
        <div class="container" style="padding-top: 50px;">
          <div class="section-title" data-aos="zoom-out">
            <h2>service</h2>
            <p>좌석 예약</p>
          </div>
        </div>

        <!-- 스크롤 효과 스크립트 실행 -->
        <script>
          AOS.init();
      </script>

      <div id="seat_intro_slide">
          <input type="radio" name="pos" id="seat_intro_slide_pos1" checked>
          <input type="radio" name="pos" id="seat_intro_slide_pos2">
          <input type="radio" name="pos" id="seat_intro_slide_pos3">
          <ul>
              <li data-aos="fade-up" data-aos-duration="1500">
                  <img class="seat_intro_slide_image" src="./cafe/images/1.jpg"/>
              </li>
              <li>
                  <img class="seat_intro_slide_image" src="./cafe/images/2.jpg"/>
              </li>
              <li>
                  <div id="seat_intro_interior">
                      <div class="seat_intro_interior_doc"> <!-- 배치도 안내글 -->
                        <strong>좌석 소개</strong><p><br>
                        <span>원하시는 좌석 위로<p>마우스를 올려보세요.</span>
                      </div>
                      <div id="seat_intro_interior_blueprint"> <!-- 배치도 테이블 -->
                        <div id="blueprint_layer" class="overLayer"> <!-- 마우스오버 팝업창 -->
                          <img id="seatImage" src="" />
                          <p>
                          <span id="subtitle">문구(title_sub)</span>
                          <p>
                          <strong id="maintitle">제목(title_main)</strong>
                          <p>
                          <span id="seatExplain">내용(seat_explain)</span>
                        </div>
                      <div id="blueprint_table" > <!-- 배치도 내용 -->
                        <table class="tableLayer">
                          <tr> <!--1-->
                            <td class="use" colspan="2" rowspan="4"
                              onmouseover="seatImage.src='./cafe/images/1.jpg'"
                              title_sub="모두와 함께하는 회의"
                              title_main="세미나실"
                              seat_explain="test3">
                              세미나실 A</td>
                            <td></td>
                            <td class="use" onmouseover="seatImage.src='./cafe/images/1.jpg'"
                              title_sub="나만의 공간에서 누리는 편안함" title_main="개인실"
                              seat_explain="test">
                              개인실 A</td>
                            <td class="use" onmouseover="seatImage.src='./cafe/images/1.jpg'"
                              title_sub="나만의 공간에서 누리는 편안함" title_main="개인실"
                              seat_explain="test">
                              개인실 B</td>
                            <td class="use" onmouseover="seatImage.src='./cafe/images/1.jpg'"
                              title_sub="나만의 공간에서 누리는 편안함" title_main="개인실"
                              seat_explain="test">
                              개인실 C</td>
                            <td class="use" onmouseover="seatImage.src='./cafe/images/1.jpg'"
                              title_sub="나만의 공간에서 누리는 편안함" title_main="개인실"
                              seat_explain="test">
                              개인실 D</td>
                            <td class="use" onmouseover="seatImage.src='./cafe/images/1.jpg'"
                              title_sub="나만의 공간에서 누리는 편안함" title_main="개인실"
                              seat_explain="test">
                              개인실 E</td>
                            <td class="use" onmouseover="seatImage.src='./cafe/images/1.jpg'"
                              title_sub="나만의 공간에서 누리는 편안함" title_main="개인실"
                              seat_explain="test">
                              개인실 F</td>
                            <td></td> <td></td> <td></td>
                          </tr>
                          <tr> <!--2-->
                            <td></td> <td></td> <td></td> <td></td>
                            <td></td> <td></td> <td></td> <td></td>
                            <td class="use" colspan="2" rowspan="2"
                              onmouseover="seatImage.src='./cafe/images/1.jpg'"
                              title_sub="친구 또는 연인과 독립된 공간을"
                              title_main="컨테이너실"
                              seat_explain="test2">
                              컨테이너실 A</td>
                          </tr>
                          <tr> <!--3-->
                            <td></td>
                            <td class = "notUse" colspan="6" rowspan="2">공용 테이블</td>
                            <td></td>
                          </tr>
                          <tr> <!--4-->
                            <td></td> <td></td>
                            <td class="use" colspan="2" rowspan="2"
                              onmouseover="seatImage.src='./cafe/images/1.jpg'"
                              title_sub="친구 또는 연인과 독립된 공간을"
                              title_main="컨테이너실"
                              seat_explain="test2">
                              컨테이너실 B</td>
                          </tr>
                          <tr> <!--5-->
                            <td class="use" colspan="2" rowspan="4"
                              onmouseover="seatImage.src='./cafe/images/1.jpg'"
                              title_sub="모두와 함께하는 회의"
                              title_main="세미나실"
                              seat_explain="test3">
                              세미나실 B</td>
                            <td></td> <td></td> <td></td> <td></td>
                            <td></td> <td></td> <td></td> <td></td>
                          </tr>
                          <tr> <!--6-->
                            <td></td>
                            <td class = "notUse" colspan="6" rowspan="2">공용 테이블</td>
                            <td></td>
                            <td class="use" colspan="2" rowspan="2"
                              onmouseover="seatImage.src='./cafe/images/1.jpg'"
                              title_sub="친구 또는 연인과 독립된 공간을"
                              title_main="컨테이너실"
                              seat_explain="test2">
                              컨테이너실 C</td>
                          </tr>
                          <tr> <!--7-->
                            <td></td> <td></td>
                          </tr>
                          <tr> <!--8-->
                            <td></td> <td></td> <td></td> <td></td> <td></td>
                            <td></td> <td></td> <td></td>
                            <td class="use" colspan="2" rowspan="2"
                              onmouseover="seatImage.src='./cafe/images/1.jpg'"
                              title_sub="친구 또는 연인과 독립된 공간을"
                              title_main="컨테이너실"
                              seat_explain="test2">
                              컨테이너실 D</td>
                          </tr>
                          <tr> <!--9-->
                              <td></td> <td></td> <td></td> <td></td> <td></td>
                              <td></td> <td></td> <td></td> <td></td> <td></td>
                          </tr>
                          <tr> <!--10-->
                          <td class="notUse">화장실</td> <td class="notUse" colspan="2">카운터</td>
                          <td></td> <td></td>
                          <td class="notUse" colspan="3">입구</td>
                          <td></td> <td></td> <td></td> <td></td>
                        </tr>
                      </table>
                    </div>
                  </div>
                <button id="btn_gotoReserve" onclick="window.open('./cafe/page/seat_reserve.jsp','window_name','width=1000,height=500,location=no,status=no,scrollbars=no');">예약하기</button>
              </div>
            </li>
          </ul>
          <p class="pos">
            <label for="seat_intro_slide_pos1"></label>
            <label for="seat_intro_slide_pos2"></label>
            <label for="seat_intro_slide_pos3"></label>
          </p>
        </div>
      </div>

    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <h3>JAVA CHiP</h3>
      <p>JSP와 서블릿 강의 조별 프로젝트 J조의 홈페이지 입니다.</p>
      <div class="social-links">
        <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
        <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
      </div>
      
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top"><i class="ri-arrow-up-line"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/venobox/venobox.min.js"></script>
  <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>