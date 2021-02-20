<%@page import="java.util.ArrayList"%>
<%@page import="jdk.internal.misc.FileSystemOption"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html lang="en">
<!--
   Strongly Typed by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<head>
<title>Strongly Typed by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />

<!-- 기상 -->
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>api 테스트입니다</title>

<script src="weatherapi.js"></script>
<script src="https://kit.fontawesome.com/096073a2a8.js"
	crossorigin="anonymous"></script>
<script type="text/javascript" src="assets/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	function visible() {
		$('#sidbarSection').css("visibility", "visible");
	}
</script>
</head>
<style>
#yellow {
	color: green;
	font-weight: bold;
}

.image.featured {
	display: block;
	width: 100%;
	margin: 0 0 0.5em 0;
}

ul.divided li {
	border-top: solid 2px #e5e5e5;
	padding-left: 0;
	margin: 1em 0 0 0;
	padding: 1em 0 0 0;
}

.box.excerpt .date {
	background: #878787;
	color: #fff;
	font-weight: 400;
	text-transform: uppercase;
	border-radius: 4px;
	border: 0;
	box-shadow: 0.125em 0.175em 0 0 rgba(0, 0, 0, 0.125);
	display: inline-block;
	font-size: 0.85em;
	letter-spacing: 2px;
	padding: 0.25em 1em 0.25em 1em;
	margin: 0 0 0.5em 0;
}

h2 {
	font-size: 1.65em;
	font-weight: 400;
	letter-spacing: 4px;
	margin: 0 0 0 0;
	line-height: 1.75em;
}

#main {
	padding: 1.5em 0;
}

#banner {
	position: relative;
	overflow: hidden;
	background-image: url( "images/sunny.jpg" );
	/* background: #F6CEF5; */ /* 연다홍 #F5A9A9 */ /* 연보라 #D5C2EE */
	color: #fff;
	text-align: center;
	border-top: solid 2px #e5e5e5;
	border-bottom: solid 2px #e5e5e5;
	box-shadow: inset 0px -8px 0px 0px #fff, inset 0px 8px 0px 0px #fff;
	position: relative;
	text-transform: uppercase;
	background-size: cover;
	padding: 10em 0;
}
.weather-container {
		padding: 30px;
        text-align: center;
        background-color: #ffffff;
        background-color: rgba( 255, 255, 255, 0.9 );
        
        /* opacity: 0.5; 글씨를 까맣게 하려면 이것을 쓰면 배경과 같이 하얗게 되서 안됨. rgba를 써야함*/
}
.location{
	text-align: center;
	color:black;
}

.one {
	text-align: center;
    font-size: 60%;	
	color:black;
}

.two {
	text-align: center;
	font-size: 80%;
	color:black;
}

.container {
	margin: 0 auto;
	max-width: 100%;
	width: 70em;
}
/* 하단부 반응형 맞춤 */
.row>.col-12-medium {
	width: 40%;
	margin: 0 auto;
}

#sidebar {
	padding-top: 30px;
}

#sidbarSection {/* 
	visibility: hidden; */
}

#content>section, #content>article {
	border-top: solid 0px #e5e5e5;
	box-shadow: inset 0px 8px 0px 0px #fff, inset 0px 10px 0px 0px #e5e5e5;
	margin: 1em 0 0 0;
	padding: 2em 0 0 0;
}

.excerpt {
	margin: 0 0 0 0;
}

table thead {
			background: cornsilk;
			color: #fff;
			font-weight: 900;
			text-transform: uppercase;
			border: 0;
			box-shadow: 0.125em 0.175em 0 0 rgba(0, 0, 0, 0.125);
			font-size: 1.2em;
			letter-spacing: 2px;
		}

</style>
<body class="homepage is-preload">
	<!-- mise 서블릿 가져왔음. -->
	<%
		ArrayList<String> weatherlist = (ArrayList<String>) session.getAttribute("mise");
	ArrayList<String> uvlist = (ArrayList<String>) session.getAttribute("uv");
	%>

	<div id="page-wrapper">

		<!-- Header -->
		<section id="header">

			<div class="container">

				<!-- Logo -->
				<h1 id="logo">
					<a href="index.html">Today Skin Weather</a>
				</h1>
				<p>당신의 피부를 안전하게 지켜주세요.</p>

				<!-- Nav -->
				<nav id="nav">
					<ul>

						<li><a class="icon solid fa-home" href="index.jsp"><span>HOME</span></a></li>
						<li><a href="#" class="icon fa-chart-bar"><span>회원가입/로그인</span></a>
							<ul>
								<li><a href="join.jsp">회원가입</a></li>
								<li><a href="login.jsp">로그인</a></li>
								<li><a href="mydata.jsp">나의 사용목록 추가</a></li>

							</ul></li>
						<li><a class="icon solid fa-cog" href="left-sidebar.html"><span>OCR
									이용 이미지 인식</span></a></li>
						<li><a class="icon solid fa-retweet" href="weather.jsp"><span>날씨별
									화장품 추천</span></a></li>
						<li><a class="icon solid fa-sitemap" href="mydata.jsp"><span>나의
									사용목록 추가</span></a></li>
					</ul>
				</nav>

			</div>
		</section>


		<!-- Banner -->
		<section id="banner">
			<div class="container">

				<section class='weather-container'>
					<table>

						<thead class="thead">
							<tr>
								<th class="one">도시</th>
								<th class="one">날씨</th>
								<th class="one">기온</th>
								<th class="one">체감온도</th>
								<th class="one">습도</th>
								<th class="one">운량</th>
								<th class="one">미세먼지</th>
								<th class="one">자외선</th>
							</tr>
						</thead>

						<tbody>

							<tr>
								<!-- 도시, 현재온도 -->
								<td class="two">
									<div class='weather-data'>
										<h1 class='location'>
										</h1>
									</div>
									<div class='weather-temp'></div>

								</td>

								<td class="two">
									<!-- 기상아이콘이 테이블 안에 넣어지지 않는 오류 해결 => weatherapi.js 의 icon 태그와 다른 icon 태그가 겺쳐서 일어나는 문제로서
								weatherapi.js 에 있는 icon의 이름을 바꿔줌으로서 해결 -->
								
									<div class='icon2'></div>
								</td>
								<!-- 기온 -->
								<td class="two">
									<div class="current-temp"></div>
									<!-- 최고/최저 기온 나타내고 싶을 때 이것과 js 내용 활성화 하면 사용가능
									 <div class='max-temp'></div>
									<div class='min-temp'></div> -->
								</td>
								<!-- 체감온도 -->
								<td class="two">
									<div class='feels-like'></div>
								</td>
								<!-- 습도 -->
								<td class="two">
									<div class='humidity'></div>
								</td>
								<!-- 운량 -->
								<td class="two">
									<div class='cloud'></div>
								</td>
								<!-- 미세먼지 -->
								<td class="two"><%=weatherlist.get(10)%></td>
								<!-- 자외선 -->
								<td class="two"><%=uvlist.get(2)%> <%-- 내일 : <%= uvlist.get(3) %> 
									 모레 : <%= uvlist.get(4) %>  --%></td>
							</tr>
						</tbody>

					</table>
				</section>
			</div>

		</section>
		<!-- Main -->
		<section id="main">
			<div class="#">
				<div class="row">

					<!-- Content -->
					<div id="content" class="col-8 col-12-medium">

						<!-- Post -->
						<article class="box post">
							<header>
								<h2>
									<a href="#"><strong>Guest</strong></a>님의
								</h2>
								<h2>
									<a>오늘의 피부날씨는?</a>
								</h2>
							</header>
							<!-- <a href="#" class="image featured"><img
                        src="images/pic04.jpg" alt="" /></a> -->
							<!-- <ul class="divided">
                                    <li></li>
                                 </ul> -->
							<br>
							<h3>현재</h3>							

							<div>
								<!-- 습도 불러오기 -->
								<div class="yoseph"></div>
								<!-- 자외선 불러오기 -->
								<div>
									<%
										if (Integer.parseInt(uvlist.get(2)) <= 2) {
									%>
									<p>
										자외선 수치는 <span style="color: green; font-weight: bold;">낮음</span>
										입니다
									</p>
									<%
										} else if (Integer.parseInt(uvlist.get(2)) <= 5) {
									%>
									<p>
										자외선 수치는 <span style="color: #339933; font-weight: bold;">보통</span>
										입니다
									</p>
									<%
										} else if (Integer.parseInt(uvlist.get(2)) <= 7) {
									%>
									<p>
										자외선 수치는 <span style="color: coral; font-weight: bold;">높음</span>
										입니다
									</p>
									<%
										} else if (Integer.parseInt(uvlist.get(2)) <= 10) {
									%>
									<p>
										자외선 수치는 <span style="color: red; font-weight: bold;">매우높음
											입니다
									</p>
									<%
										} else {
									%>
									<p>
										자외선 수치는 <span style="color: purple; font-weight: bold;">위험</span>
										입니다
									</p>
									<%
										}
									%>
								</div>
								<!-- 미세먼지 불러오기 -->
								<div>
									<%
										if (Integer.parseInt(weatherlist.get(10)) <= 15) {
									%>
									<span style="color: green; font-weight: bold;">좋음</span> 입니다.
									</p>
									<%
										} else if (Integer.parseInt(weatherlist.get(10)) <= 35) {
									%>
									<p>
										미세먼지 수치는 <span
											style="color: darkolivegreen; font-weight: bold;">보통</span>
										입니다.
									</p>
									<%
										} else if (Integer.parseInt(weatherlist.get(10)) <= 75) {
									%>
									<p>
										미세먼지 수치는 <span style="color: red; font-weight: bold;">나쁨</span>
										입니다.
									</p>
									<%
										} else {
									%>
									<p>
										미세먼지 수치는 <span style="color: red; font-weight: bold;">매우나쁨</span>
										입니다.
									</p>
									<%
										}
									%>
								</div>

							</div>
							
							<!-- 만약 눌러서 출력하고 싶다면 
							 <ul class="actions" onclick="visible()">
								<li><a class="button icon solid fa-fil">날씨에 맞는 화장품 추천</a></li>
							</ul> -->
						</article>
						<br>

						<section>
							<ul class="divided">
								<li>
									<form action="" name="frm">

										<div align="center">

											<article class="box excerpt">
												<header>
													<span class="date">Suncream Timer</span>
												</header>

											</article>
											<li><select id="selid" name="myChoice">
													<option value="7200">시간을 선택해주세요(기본: 2시간)</option>
													<option value="10800">3시간</option>
													<option value="3600">1시간</option>
													<option value="1800">30분</option>
													<option value="900">15분</option>
													<option value="1">1초</option>
											</select><br> <input type="button" value="GO!" onclick="noodle()">
												<br> <br> <span id="countdown">time
													selected</span> <br> <br> <!-- <input type="button" value="Close"
									onclick='window.close()'> -->
										</div>
								</li>
								</form>
								<script type="text/javascript">
									var count = 0;
									var time = 0;
									var choice = 0;

									function noodle() {

										clearInterval(time); // 타이머 우선 초기화 시켜주기(time initialize)
										/* 
										 	ID로 가져오기
											// select의 value를 가져오기 : value
											var val = document.getElementById("selid").value;
											alert(val);	// 확인용
											// select의 index값을 가져오기 : selectedIndex
											var indexNum = document.getElementById("selid").selectedIndex;
											alert(indexNum);	// 확인용
										 */

										// 	name으로 index 찾기
										choice = document.frm.myChoice.selectedIndex;
										//	alert(choice);

										// 찾은 index로 value찾기
										count = parseInt(document.frm.myChoice.options[choice].value);
										//		alert(count); 

										// 타이머 함수 1초씩 호출하는 함수 만들기
										time = setInterval("myTimer()", 1000);

									}
									function myTimer() {
										count = count - 1; // 타이머 선택 숫자에서 -1씩 감산함(갱신되기 때문)

										A = parseInt(count / 3600);
										a = parseInt(count % 3600);
										B = parseInt(a / 60);
										C = parseInt(count % 60);

										document.getElementById("countdown").innerHTML = "완료까지 <b>"
												+ A + "시 " + B + "분 " + C+ "</b>초 남았습니다.";
										/* 
										document.getElementById("countdown").innerHTML = "완료까지 <b>"
												+ count + "</b>초 남았습니다."; */
										if (count == 0) {
											clearInterval(time); // 시간 초기화
											alert("시간이 완료되었습니다. 썬크림을 다시 발라주세요!")
										}
									}
									/* 
									//우클릭 사용금지
									document.oncontextmenu = function() {
										alert("마우스의 우클릭은 사용할 수 없습니다.")
										return false;
									} */
								</script>
					</div>
					<!-- Sidebar -->
					<div id="sidebar" class="col-4 col-12-medium">

						<!-- Excerpts -->
						<section id="sidbarSection">
							<ul class="divided">
								<li>
									<!-- 화장품 소개 1 -->
									<article class="box excerpt">
										<div class="yoseph2"></div>
									</article>

								</li>
								<li>
									<!-- 화장품 소개 2 -->
									<article class="box excerpt">
										<div class="yoseph3"></div>	
									</article>

								</li>
								<li>
									<!-- 화장품 소개 3 -->
									<article class="box excerpt">
										
										<%if (Integer.parseInt(uvlist.get(2)) <= 2) {%>
										<header>
											<span class="date">디쥬 여행용 썬크림</span>
										</header>
										<a href="#" class="image featured"><img
											src="images/PA+.jpg" /></a>
										<p>#피부톤을 밝게 <br> #피부결을 뽀송하게 <br> #자외선 차단 <br>#톤업선 크림</p>
										<%} else if (Integer.parseInt(uvlist.get(2)) <= 5) {%>
										<header>
											<span class="date">순정 진정 방어 선크림</span>
										</header>
										<a href="#" class="image featured"><img
											src="images/PA++.jpg" alt="" /></a>
										<p>#피부진정 <br> #외부자극 케어 <br> #자외선 차단 <br>#무기 자외선 차단</p>
										<%} else if (Integer.parseInt(uvlist.get(2)) <= 7) {%>
										<header>
											<span class="date">퍼펙트 선크림</span>
										</header>
										<a href="#" class="image featured"><img
											src="images/PA+++.jpg" alt="" /></a>
										<p>#자외선 차단 <br> #해바라기 새싹으로 스트레스 받는 세포생성 감소 <br> #아사이베리 성분으로 자외선에 대한 피부방여력 증진 <br>#워터프루프로 물과 땀에 강함</p>
										<%} else if (Integer.parseInt(uvlist.get(2)) <= 10) {%>
										<header>
											<span class="date">알로에 선크림</span>
										</header>
										<a href="#" class="image featured"><img
											src="images/PA++++.jpg" alt="" /></a>
										<p>#피부톤을 밝게 <br> #끈적임 ZERO<br> #자외선 차단 <br>#발림성 & 흡수력</p>
										<%}%>
									</article>

								</li>
							</ul>
						</section>
					</div>
				</div>
			</div>
		</section>

		<!-- Footer -->
		<!-- <section id="footer">
			<div class="container">
				<header>
					<h2>
						Questions or comments? <strong>Get in touch:</strong>
					</h2>
				</header>
				<div class="row">
					<div class="col-6 col-12-medium">
						<section>
							<form method="post" action="#">
								<div class="row gtr-50">
									<div class="col-6 col-12-small">
										<input name="name" placeholder="Name" type="text" />
									</div>
									<div class="col-6 col-12-small">
										<input name="email" placeholder="Email" type="text" />
									</div>
									<div class="col-12">
										<textarea name="message" placeholder="Message"></textarea>
									</div>
									<div class="col-12">
										<a href="#"
											class="form-button-submit button icon solid fa-envelope">Send
											Message</a>
									</div>
								</div>
							</form>
						</section>
					</div>
					<div class="col-6 col-12-medium">
						<section>
							<p>Erat lorem ipsum veroeros consequat magna tempus lorem
								ipsum consequat Phaselamet mollis tortor congue. Sed quis mauris
								sit amet magna accumsan tristique. Curabitur leo nibh, rutrum eu
								malesuada.</p>
							<div class="row">
								<div class="col-6 col-12-small">
									<ul class="icons">
										<li class="icon solid fa-home">1234 Somewhere Road<br />
											Nashville, TN 00000<br /> USA
										</li>
										<li class="icon solid fa-phone">(000) 000-0000</li>
										<li class="icon solid fa-envelope"><a href="#">info@untitled.tld</a>
										</li>
									</ul>
								</div>
								<div class="col-6 col-12-small">
									<ul class="icons">
										<li class="icon brands fa-twitter"><a href="#">@untitled</a>
										</li>
										<li class="icon brands fa-instagram"><a href="#">instagram.com/untitled</a>
										</li>
										<li class="icon brands fa-dribbble"><a href="#">dribbble.com/untitled</a>
										</li>
										<li class="icon brands fa-facebook-f"><a href="#">facebook.com/untitled</a>
										</li>
									</ul>
								</div>
							</div>
						</section>
					</div>
				</div>
			</div>
			<div id="copyright" class="container">
				<ul class="links">
					<li>&copy; Untitled. All rights reserved.</li>
					<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
				</ul>
			</div>
		</section>
	</div> -->
	
	<div id="copyright" class="container">
				<ul class="links">
					<li>© Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
				</ul>
			</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>