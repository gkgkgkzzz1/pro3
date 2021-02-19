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
<title>api 테스트</title>

<script src="weatherapi.js"></script>
<script src="https://kit.fontawesome.com/096073a2a8.js"
	crossorigin="anonymous"></script>
<script type="text/javascript" src="assets/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	function visible() {
		$('#sidbarSection').css("visibility","visible");
	}
</script>
</head>
<style>
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
	background: #F6CEF5; /* 연다홍 #F5A9A9 */ /* 연보라 #D5C2EE */
	color: #fff;
	text-align: center;
	border-top: solid 2px #e5e5e5;
	border-bottom: solid 2px #e5e5e5;
	box-shadow: inset 0px -8px 0px 0px #fff, inset 0px 8px 0px 0px #fff;
	position: relative;
	text-transform: uppercase;
	/* background: url("../../images/banner.jpg"); */
	background-size: cover;
	padding: 10em 0;
}

.one {
	text-align: center;
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
#sidbarSection{
	visibility: hidden;
}

</style>
<body class="homepage is-preload">

	<div id="page-wrapper">

		<!-- Header -->
		<section id="header">

			<div class="container">

				<!-- Logo -->
				<h1 id="logo">
					<a href="index.html">Today Skin Weather</a>
				</h1>
				<p>당신의 피부를 안전하게 지켜주세요. 피부</p>

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

						<thead>
							<tr>
								<th class="one">도시온도</th>
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
								<td>
									<div class='weather-data'>
										<h1 class='location'>
											<class class='fas fa-city'>
										</h1>
									</div>
									<div class='weather-temp'></div>

								</td>
								<!-- 날씨 아이콘 -->
								<td>
									<div class='icon'>날씨</div>
								</td>
								<!-- 최고/최저 기온 -->
								<td>
									<div class='max-temp'></div>
									<div class='min-temp'></div>
								</td>
								<!-- 체감온도 -->
								<td>
									<div class='feels-like'></div>
								</td>
								<!-- 습도 -->
								<td>
									<div class='humidity'></div>
								</td>
								<!-- 운량 -->
								<td>
									<div class='cloud'></div>
								</td>
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
<<<<<<< HEAD
=======
							<br>
>>>>>>> branch 'master' of https://github.com/gkgkgkzzz1/pro3.git
							<h3>현재</h3>
<<<<<<< HEAD
							<p>피부 온도는 __ 하네요</p>
=======
							<%-- <% if 습도 > 39 {
								console("건조"); 
							}%> <%else if 60>=습도>=40 {
								console("쾌적")
							}%> <%else {
								console("다습")
							}%> --%>

							<%-- <% if 자외선수치 > ? {
								console("주의"); 
							}%> <%else if ?>=습도>=? {
								console("보통")
							}%> <%else {
								console("위험")
							}%> --%>

>>>>>>> branch 'master' of https://github.com/gkgkgkzzz1/pro3.git
							<p>피부 수분은 역시 __ 하니 알맞게 관리해주세요</p>
							<p>자외선 수치는 (낮음/보통/높음/매우높음/위험) 입니다</p>
							<p>미세먼지 수치는 __ 입니다</p>
							<ul class="actions" onclick="visible()">
								<li><a class="button icon solid fa-fil">Continue
										Reading</a></li>
							</ul>
						</article>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
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
								<li>
								<select id="selid" name="myChoice">
									<option value="7200">원하는 시간을 선택해주십시오(기본: 2시간)</option>
									<option value="10800">3시간</option>
									<option value="3600">1시간</option>
									<option value="1800">30분</option>
									<option value="900">15분</option>
								</select><br> <input type="button" value="GO!" onclick="noodle()">
								<br>
								<br> <span id="countdown">time selected</span> <br>
								<br> <input type="button" value="Close"
									onclick='window.close()'>
							</div>
						</li>
						</form>
						<script type="text/javascript">
	var count = 0;
	var time = 0;
	var choice = 0;
	
	function noodle() {
		
		clearInterval(time);	// 타이머 우선 초기화 시켜주기(time initialize)
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
		time = setInterval("myTimer()",1000);
		
	}
	function myTimer() {
		count = count - 1; // 타이머 선택 숫자에서 -1씩 감산함(갱신되기 때문)
		
		document.getElementById("countdown").innerHTML
			= "완료까지 <b>" + count +"</b>초 남았습니다.";
		if(count == 0) { 
			clearInterval(time);	// 시간 초기화
			alert("시간이 완료되었습니다. 썬크림을 다시 발라주세요")
		}
	}
	
	//우클릭 사용금지
	document.oncontextmenu = function() {
		alert("마우스의 우클릭은 사용할 수 없습니다.")
		return false;
	}
	</script>

					</div>



					<!-- Sidebar -->
					<div id="sidebar" class="col-4 col-12-medium">

						<!-- Excerpts -->
						<section id="sidbarSection">
							<ul class="divided">
								<li>
									<!-- Excerpt -->
									<article class="box excerpt">
										<header>
											<span class="date">추천 화장품 1</span>
											<h3>
												<a href="#">수분크림</a>
											</h3>
										</header>
										<a href="#" class="image featured"><img
											src="images/water.jpg" alt="" /></a>
										<p>세부설명</p>
									</article>

								</li>
								<li>
									<!-- Excerpt -->
									<article class="box excerpt">
										<header>
											<span class="date">추천 화장품 2</span>
											<h3>
												<a href="#">로션</a>
											</h3>
										</header>
										<a href="#" class="image featured"><img
											src="images/lotion.jpg" alt="" /></a>
										<p>세부설명</p>
									</article>

								</li>
								<li>
									<!-- Excerpt -->
									<article class="box excerpt">
										<header>
											<span class="date">추천 화장품 3</span>
											<h3>
												<a href="#">썬크림</a>
											</h3>
										</header>
										<a href="#" class="image featured"><img
											src="images/sun.jpg" alt="" /></a>
										<p>세부설명</p>
									</article>

								</li>
							</ul>
						</section>

					</div>

				</div>
			</div>
		</section>

		<!-- Footer -->
		<section id="footer">
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

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

	<script>
	var time = 600; //기준시간 작성
	var min = ""; //분
	var sec = ""; //초

	//setInterval(함수, 시간) : 주기적인 실행
	var x = setInterval(function() {
		//parseInt() : 정수를 반환
		min = parseInt(time/60); //몫을 계산
		sec = time%60; //나머지를 계산

		document.getElementById("demo").innerHTML = min + "분" + sec + "초";
		time--;

		//타임아웃 시
		if (time < 0) {
			clearInterval(x); //setInterval() 실행을 끝냄
			document.getElementById("demo").innerHTML = "시간초과";
		}
	}, 1000);
</script>

</body>
</html>