<%@page import="com.model.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Strongly Typed by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Left Sidebar - Strongly Typed by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		
		    <style>
        html, body{
            margin: 0;
            padding: 0;
            height: 100%;
            width: 100%;
        }

        #header1{
            position: sticky;
            z-index: 999;
            color: white;
            text-align: center;
            transform: translate(-50%, -50%);
        } 

        #header > p {
            font-size: 0.9em;
        }

        #camera, #camera--view, #camera--sensor, #camera--output{
            position: inherit;
            height: 167.5px;
            width: 355px;
            object-fit: contain;

        }

        #camera--view, #camera--sensor, #camera--output{
            transform: scaleX(-1);
            filter: FlipH;
        }

        #camera--trigger,#sendUrl{
            width: 180px;
            color: white;
            background-color: black;
            font-size: 16px;
            border-radius: 30px;
            border: none;
            padding: 15px 20px;
            text-align: center;
            box-shadow: 0 5px 10px 0 rgba(0,0,0,0, 0.2);
            position: sticky;
            bottom: 30px;
            left: calc(50% - 90px);
        }

        .taken {
            height: 280px!important;
            width: 560px!important;
        }
        
        #buttons{
        	display: flex;
        	justify-content: center; /* 완전 딱 붙여서 하는거 */
			justify-content : space-evenly; /* 가운데 살짝 띄워짐 */
        }
        #camera--sensor{
        	visibility: hidden;
        	width: 0;
        	/* 캡쳐 이미지 저장하는 캔버스
        	사용자가 찍은 사진은 img 태그에서 보여주므로 사용자 눈에 안보여도 되므로 안보이게끔 설정*/
        }
 		#camera--output, #camera--view{
 			transform: rotateY(180deg);         
 			-webkit-transform:rotateY(0deg); /* Safari and Chrome */         
 			-moz-transform:rotateY(180deg); /* Firefox */
 			/* 사진을 거울처럼 보기 */
 			position : contain;
 		}

    </style>
	<script type="text/javascript" src="assets/js/jquery-3.5.1.min.js"></script>
		
	</head>
	<body class="left-sidebar is-preload">
<%
memberDTO member = (memberDTO)session.getAttribute("list");
String id = member.getId();
%>
		<div id="page-wrapper">

			<!-- Header -->
			
				<section id="header">
					<div class="container">

						<!-- Logo -->
							<h1 id="logo"><a href="index.jsp"> Search Ingredient</a></h1>
							<p >카메라를 이용한 성분 확인</p>

						<!-- Logo -->
										
						<!-- Nav -->
						
						<!-- Nav -->
						<nav id="nav">
							<ul>
								
								<li><a class="icon solid fa-home" href="index.jsp"><span>HOME</span></a></li>
								
								<li display = hidden>
									<a href="#" class="icon fa-chart-bar"><span>회원가입/로그인</span></a>
									<ul>
										<li><a href="join.jsp">회원가입</a></li>
										<li><a href="login.jsp">로그인</a></li>
									</ul>
								</li>
								<li><a class="icon solid fa-cog" href="camRecog.jsp"><span>OCR 이용 이미지 인식</span></a></li>
								<li><a class="icon solid fa-retweet" href="weather.jsp"><span>날씨별 화장품 추천</span></a></li>
								<li><a class="icon solid fa-sitemap" href="BefoHis"><span>나의 사용목록 추가</span></a></li>
							</ul>
						</nav>
						
						<!-- Nav -->
						
																						
						
						

					</div>
				</section>
			<!-- Header -->
			<!-- Main -->
				<section id="main">
					<div class="container">
						<div class="row">

							<!-- Sidebar -->
								<div id="sidebar" class="col-4 col-12-medium">

									<!-- Excerpts -->
										<section>
											<ul class="divided">
												<li>

													<!-- Excerpt -->
														<article class="box excerpt">
															<header>
																<span class="date">July 30</span>
																<h3><a href="#">Just another post</a></h3>
															</header>
															<p>Lorem ipsum dolor odio facilisis convallis. Etiam non nunc vel est
															suscipit convallis non id orci lorem ipsum sed magna consequat feugiat lorem dolore.</p>
														</article>

												</li>
												<li>

													<!-- Excerpt -->
														<article class="box excerpt">
															<header>
																<span class="date">July 28</span>
																<h3><a href="#">And another post</a></h3>
															</header>
															<p>Lorem ipsum dolor odio facilisis convallis. Etiam non nunc vel est
															suscipit convallis non id orci lorem ipsum sed magna consequat feugiat lorem dolore.</p>
														</article>

												</li>
												<li>

													<!-- Excerpt -->
														<article class="box excerpt">
															<header>
																<span class="date">July 24</span>
																<h3><a href="#">One more post</a></h3>
															</header>
															<p>Lorem ipsum dolor odio facilisis convallis. Etiam non nunc vel est
															suscipit convallis non id orci lorem ipsum sed magna consequat feugiat lorem dolore.</p>
														</article>

												</li>
											</ul>
										</section>

									<!-- Highlights -->
										<section>
											<ul class="divided">
												<li>

													<!-- Highlight -->
														<article class="box highlight">
															<header>
																<h3><a href="#">Something of note</a></h3>
															</header>
															<a href="#" class="image left"><img src="images/pic06.jpg" alt="" /></a>
															<p>Phasellus sed laoreet massa id justo mattis pharetra. Fusce suscipit ligula vel quam
															viverra sit amet mollis tortor congue magna lorem ipsum dolor et quisque ut odio facilisis
															convallis. Etiam non nunc vel est suscipit convallis non id orci. Ut interdum tempus
															facilisis convallis. Etiam non nunc vel est suscipit convallis non id orci.</p>
															<ul class="actions">
																<li><a href="#" class="button icon solid fa-file">Learn More</a></li>
															</ul>
														</article>

												</li>
												<li>

													<!-- Highlight -->
														<article class="box highlight">
															<header>
																<h3><a href="#">Something of less note</a></h3>
															</header>
															<a href="#" class="image left"><img src="images/pic07.jpg" alt="" /></a>
															<p>Phasellus sed laoreet massa id justo mattis pharetra. Fusce suscipit ligula vel quam
															viverra sit amet mollis tortor congue magna lorem ipsum dolor et quisque ut odio facilisis
															convallis. Etiam non nunc vel est suscipit convallis non id orci. Ut interdum tempus
															facilisis convallis. Etiam non nunc vel est suscipit convallis non id orci.</p>
															<ul class="actions">
																<li><a href="#" class="button icon solid fa-file">Learn More</a></li>
															</ul>
														</article>

												</li>
											</ul>
										</section>

								</div>






							<!-- Content -->
								<div id="content" class="col-8 col-12-medium imp-medium">

									<!-- Post -->
										<article class="box post">
											<header1 align = "center">
												<h2 >촬영을 통해 성분을 분석하고 적합하지 않은 성분을 찾아요.
												</h2>
											</header1>
											<br>
											
											<div     style ="padding-left: 150px;"
											>

										    <main id="camera" >
										        
										        
										        <canvas id="camera--sensor"></canvas>
										
										        <!-- 기기의 카메라에 접근하여 영상을 페이지에 재생한다. -->
										        <video id="camera--view" autoplay playsinline style ="

    visibility: hidden;
    width: 0;
    height: 0;
"></video>
										        
										        <img src="./images/cam.png" alt="" id="camera--output" style="
    position: absolute;
    
">
										        <!-- 고라파덕 부분에 카메라 이미지 넣어서 찍는거 조절하기... img 크기 조절도 해야해 -->
										
										        
										
										    </main>
										    
    
    
    
    
										</div>
										
										
										
										
											</span>
											
										</article>
										<div style =" width : 150px; height : 150px;">
											
										
										</div>
										
										<div id = "buttons">
										 
											<form action="http://118.40.82.69:9000/imgUp" method="post" enctype="multipart/form-data">
												<input type="hidden" name='memId' value="<%=id%>">
												<input type="hidden" name="inputUrl" id="inputUrl" value="" >
												<input type="submit" id="sendUrl" value="분석하기">
											</form>
											<button id="camera--trigger">사진촬영</button>
										</div>
											
											<p> </p>
								</div>

						</div>
					</div>
				</section>

			<!-- Footer -->
				<section id="footer">
					<div class="container">
						<header>
							<h2>Questions or comments? <strong>Get in touch:</strong></h2>
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
												<a href="#" class="form-button-submit button icon solid fa-envelope">Send Message</a>
											</div>
										</div>
									</form>
								</section>
							</div>
							<div class="col-6 col-12-medium">
								<section>
									<p>Erat lorem ipsum veroeros consequat magna tempus lorem ipsum consequat Phaselamet
									mollis tortor congue. Sed quis mauris sit amet magna accumsan tristique. Curabitur
									leo nibh, rutrum eu malesuada.</p>
									<div class="row">
										<div class="col-6 col-12-small">
											<ul class="icons">
												<li class="icon solid fa-home">
													1234 Somewhere Road<br />
													Nashville, TN 00000<br />
													USA
												</li>
												<li class="icon solid fa-phone">
													(000) 000-0000
												</li>
												<li class="icon solid fa-envelope">
													<a href="#">info@untitled.tld</a>
												</li>
											</ul>
										</div>
										<div class="col-6 col-12-small">
											<ul class="icons">
												<li class="icon brands fa-twitter">
													<a href="#">@untitled</a>
												</li>
												<li class="icon brands fa-instagram">
													<a href="#">instagram.com/untitled</a>
												</li>
												<li class="icon brands fa-dribbble">
													<a href="#">dribbble.com/untitled</a>
												</li>
												<li class="icon brands fa-facebook-f">
													<a href="#">facebook.com/untitled</a>
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
							<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
						</ul>
					</div>
				</section>

		</div>
		    <script>

        let constraints = { video: { facingMode: "user"}, audio: false};
        const cameraView = document.querySelector("#camera--view");
        const cameraOutput = document.querySelector("#camera--output");
        const cameraSensor = document.querySelector("#camera--sensor");
        const cameraTrigger = document.querySelector("#camera--trigger");


        function cameraStart(){
            navigator.mediaDevices.getUserMedia(constraints)
                .then(function(stream){
                    track = stream.getTracks()[0];
                    cameraView.srcObject = stream;

                })
                .catch(function(error){
                    console.error("카메라에 문제가 있습니다.", error);
                })
        }
		
        var imgUrl
        //촬영 버튼 클릭 리스너
        cameraTrigger.addEventListener("click", function(){
            
            cameraSensor.width = cameraView.videoWidth; //640으로 정해져서 나오네?
            cameraSensor.height = cameraView.videoHeight;
            cameraSensor.getContext("2d").drawImage(cameraView, 0, 0);
            cameraOutput.src = cameraSensor.toDataURL("image/webp");
            imgUrl = $("#camera--output").attr('src');
            $("#inputUrl").val(imgUrl);
            // alert(imgUrl); imgUrl 이 잘 전달되는지 확인했음 잘 전달됨 
            cameraOutput.classList.add("taken");
            console.log(cameraSensor.height);
          
            $("#camera--output").css("padding-right","160px");
        });
       /*  function imgSend(){
        	$.ajax({
        		url : "http://118.40.82.69.9000/imgUp",
        		type : "POST",
        		data : {img : imgUrl}
        	})
        } */
    
        // 페이지가 로드되면 함수 실행
        window.addEventListener("load", cameraStart, false);
    </script>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>