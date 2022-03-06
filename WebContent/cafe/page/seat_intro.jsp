<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=0.5">
    <title>좌석 예약</title>

    <!-- css -->
    <link rel="stylesheet" href="../css/seat_intro.css">

    <!-- 슬라이드 효과 -->
    <link rel="stylesheet" href="../css/seat_intro_slide.css">

    <!-- 스크롤 효과 -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

    <!-- 스크롤 스크립트 추가 -->
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

    <!-- 팝업 효과 -->
    <link rel="stylesheet" href="../css/seat_intro_popup.css">

    <!-- 마우스 오버 jquery 추가 -->
    <script src="http://code.jquery.com/jquery-1.6.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function(){
            $('.use').mouseover(function(e) { // mouse hover 좌표
                $(this).mousemove(function(e) {
                    $('#blueprint_layer #subtitle').empty().append($(this).attr("title_sub")); // 오버 레이어 문구 치환
                    $('#blueprint_layer #maintitle').empty().append($(this).attr("title_main")); // 오버 레이어 제목 치환
                    $('#blueprint_layer #seatExplain').empty().append($(this).attr("seat_explain")); // 오버 레이어 설명 치환
                    var t=e.pageY-1600;
                    var l=e.pageX-150;
                    $('#blueprint_layer').css({"top":t, "left":l,"position":"absolute","opacity":"0,8" }).show();
                });
            });
            $('.use').mouseout(function() {
                $('#blueprint_layer').hide();
            });
        });
    </script>

</head>

<body>
    <!-- 스크롤 효과 스크립트 실행 -->
    <script>
        AOS.init();
    </script>

    <!-- 상단 내부 소개 슬라이드 -->
    <div id="seat_intro_slide" data-aos="fade-up" data-aos-duration="1500">
        <input type="radio" name="pos" id="seat_intro_slide_pos1" checked>
        <input type="radio" name="pos" id="seat_intro_slide_pos2">
        <input type="radio" name="pos" id="seat_intro_slide_pos3">
        <input type="radio" name="pos" id="seat_intro_slide_pos4">
        <ul data-aos="fade-up" data-aos-duration="1500">
            <li>
                <img class="seat_intro_slide_image" src="../images/1.jpg"/>
            </li>
            <li>
                <img class="seat_intro_slide_image" src="../images/2.jpg"/>
            </li>
            <li>
                <img class="seat_intro_slide_image" src="../images/3.jpg"/>
            </li>
            <li>
                <img class="seat_intro_slide_image" src="../images/4.jpg"/>
            </li>
        </ul>
        <p class="pos">
            <label for="seat_intro_slide_pos1"></label>
            <label for="seat_intro_slide_pos2"></label>
            <label for="seat_intro_slide_pos3"></label>
            <label for="seat_intro_slide_pos4"></label>
        </p>
    </div>

    <!-- 중단 좌석 소개 -->
    <div id="seat_intro_interior" data-aos="fade-up" data-aos-duration="1500">
        <div class="seat_intro_interior_doc" data-aos="fade-up" data-aos-duration="1500"> <!-- 배치도 안내글 -->
            <strong>좌석 소개</strong><p>
            <span>원하시는 좌석 위로<p>마우스를 올려보세요.</span>
        </div>
        <div id="seat_intro_interior_blueprint" data-aos="fade-up" data-aos-duration="1500"> <!-- 배치도 테이블 -->
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
                            onmouseover="seatImage.src='../images/1.jpg'"
                            title_sub="모두와 함께하는 회의가 필요할 때"
                            title_main="세미나실"
                            seat_explain="test3">
                            세미나실 A</td>
                        <td></td>
                        <td class="use" onmouseover="seatImage.src='../images/1.jpg'"
                            title_sub="나만의 공간에서 누리는 편안함" title_main="개인실"
                            seat_explain="test">
                            개인실 A</td>
                        <td class="use" onmouseover="seatImage.src='../images/1.jpg'"
                            title_sub="나만의 공간에서 누리는 편안함" title_main="개인실"
                            seat_explain="test">
                            개인실 B</td>
                        <td class="use" onmouseover="seatImage.src='../images/1.jpg'"
                            title_sub="나만의 공간에서 누리는 편안함" title_main="개인실"
                            seat_explain="test">
                            개인실 C</td>
                        <td class="use" onmouseover="seatImage.src='../images/1.jpg'"
                            title_sub="나만의 공간에서 누리는 편안함" title_main="개인실"
                            seat_explain="test">
                            개인실 D</td>
                        <td class="use" onmouseover="seatImage.src='../images/1.jpg'"
                            title_sub="나만의 공간에서 누리는 편안함" title_main="개인실"
                            seat_explain="test">
                            개인실 E</td>
                        <td class="use" onmouseover="seatImage.src='../images/1.jpg'"
                            title_sub="나만의 공간에서 누리는 편안함" title_main="개인실"
                            seat_explain="test">
                            개인실 F</td>
                        <td></td> <td></td> <td></td>
                    </tr>
                    <tr> <!--2-->
                        <td></td> <td></td> <td></td> <td></td>
                        <td></td> <td></td> <td></td> <td></td>
                        <td class="use" colspan="2" rowspan="2"
                            onmouseover="seatImage.src='../images/1.jpg'"
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
                            onmouseover="seatImage.src='../images/1.jpg'"
                            title_sub="친구 또는 연인과 독립된 공간을"
                            title_main="컨테이너실"
                            seat_explain="test2">
                            컨테이너실 B</td>
                    </tr>
                    <tr> <!--5-->
                        <td class="use" colspan="2" rowspan="4"
                            onmouseover="seatImage.src='../images/1.jpg'"
                            title_sub="모두와 함께하는 회의가 필요할 때"
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
                            onmouseover="seatImage.src='../images/1.jpg'"
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
                            onmouseover="seatImage.src='../images/1.jpg'"
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
    </div>
    
    <div id="seat_intro_goToReserve" data-aos="fade-up" data-aos-duration="1500"> <!-- 하단 예약하러 가기 버튼 div -->
        <figure class="snip1384">
            <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample83.jpg" alt="sample83" />
            <figcaption>
                <button><h3>Go</h3></button>
                <p>Which is worse, that everyone has his price, or that the price is always so low.</p><i class="ion-ios-arrow-right"></i>
            </figcaption>
        </figure>
        <figure class="snip1384">
            <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample66.jpg" alt="sample66" />
            <figcaption>
                <h3>Guy Mann</h3>
                <p>I'm killing time while I wait for life to shower me with meaning and happiness.</p><i class="ion-ios-arrow-right"></i>
            </figcaption>
        </figure>
        <figure class="snip1384">
            <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample92.jpg" alt="sample92" />
            <figcaption>
                <h3>Nigel Nigel</h3>
                <p>The only skills I have the patience to learn are those that have no real application in life. </p><i class="ion-ios-arrow-right"></i>
            </figcaption>
        </figure>
        <button data-aos="fade-up" data-aos-duration="1500">예약하러 가기</button>
    </div>
</body>
</html>