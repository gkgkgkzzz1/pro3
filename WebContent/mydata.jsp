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
		<title>No Sidebar - Strongly Typed by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<script src="assets/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
function searchFunction(){
	var name = document.getElementById("proName").value;
	$.ajax({
		url: "cosSelect.jsp",
		type : "GET",
		data : {proName : name},
		dataType : "json",
		success : function (res) {
			/* alert(res)
			console.log(res) */
			$('#ajaxTable').empty();
			for(let i = 0; i < res.cosmetics.length; i++){
							
				let company = res.cosmetics[i].company;
				let proName = res.cosmetics[i].proname;
				let img = res.cosmetics[i].img;
				
				$('#ajaxTable').append("<tr><td>"+company+"</td><td>"+proName+"</td><td ><img class='imgs' src='"+img+".jpg'></td><td style ='display:flex;padding-top: 60px;'><button class='GOOD' id ='"+proName+"'><img src='./images/up.png'></button>\t<button class='BAD' id ='"+proName+"'><img src ='./images/down.png' style='padding-top:13px;'></button></td></tr>");
			}
			
		    $("td > button").click(function(){
		    	var id = $(this).attr('id');
		    	var rat = $(this).attr('class');
		    	$.ajax({
		    		url : "memHisInsert.jsp",
		    		type : "GET",
		    		data : {proName : id, rating : rat},
		    		dataType : "json",
		    		success : function (result){
/* 		    			alert(result);
 */		    			$('#ajaxTable2').empty();
						for(let j = 0; j< result.cosmetics.length; j++){
							let proName = result.cosmetics[j].proname;
							let rating = result.cosmetics[j].rating;
							
		    				$('#ajaxTable2').append("<tr><td>"+proName+"</td><td>"+rating+"</td></tr>");
						}
		    		},
		    		error : function(a,b,c){
		    			alert("fail")
		    			alert(b)
		    			alert(c)
		    		}
		    	})
		    });
		},
		error : function(a,b,c){
			alert("fail")
			alert(b)
			alert(c)
		}
	})
	
}

</script>
<style type="text/css">
.imgs{
width:10rem;
}
.GOOD, .BAD {
	padding-left: 20px;
	padding-right: 20px;
	border-radius: 50px;
}

td {
	vertical-align : middle;
	justify-content: center;
}
button img {
	width: 30px;
}
tr > td:nth-child(4){
	justify-content: space-around; 
}

#proName {
	width: 250px;
    height: 40px;
}
#proNameBtn{
	border: 1px soild black;
	padding-top: 0px;
    padding-left: 0px;
    padding-right: 0px;
    padding-bottom: 0px;
    height: 40px;
    width: 60px;
}
#searchGroup{
	margin-left: 0px;
    margin-top: 0px;
    padding-left: 20px;
    justify-content: center;
}

button{
	background: white;
}
.GOOD:hover {
	background: #4472C4;
}



</style>
	</head>
	<body class="no-sidebar is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<section id="header">
					<div class="container">

						<!-- Logo -->
							<h1 id="logo"><a href="index.html">나의 화장품 사용이력</a></h1>
							<p>내가 사용한 화장품 목록을 확인해 보세요.</p>

						<!-- Nav -->
							<nav id="nav">
								<ul>
									<li><a class="icon solid fa-home" href="index.html"><span>Introduction</span></a></li>
									<li>
										<a href="#" class="icon fa-chart-bar"><span>Dropdown</span></a>
										<ul>
											<li><a href="#">Lorem ipsum dolor</a></li>
											<li><a href="#">Magna phasellus</a></li>
											<li><a href="#">Etiam dolore nisl</a></li>
											<li>
												<a href="#">Phasellus consequat</a>
												<ul>
													<li><a href="#">Magna phasellus</a></li>
													<li><a href="#">Etiam dolore nisl</a></li>
													<li><a href="#">Phasellus consequat</a></li>
												</ul>
											</li>
											<li><a href="#">Veroeros feugiat</a></li>
										</ul>
									</li>
									<li><a class="icon solid fa-cog" href="left-sidebar.html"><span>Left Sidebar</span></a></li>
									<li><a class="icon solid fa-retweet" href="right-sidebar.html"><span>Right Sidebar</span></a></li>
									<li><a class="icon solid fa-sitemap" href="no-sidebar.html"><span>No Sidebar</span></a></li>
								</ul>
							</nav>

					</div>
				</section>

			<!-- Main -->
				<section id="main">
					<div class="container">
						<div id="content">
							<div class="form-group row pull-right" id="searchGroup" >
								<span style="padding-top: 0px; padding-left: 0px;">
								<input class="form-control"  name = "proName" id="proName" onkeyup="searchFunction()" type="text" size="20"></span>
								<% request.setCharacterEncoding("EUC-KR"); %>
								<span style="padding-top: 0px; padding-left: 0px;">
								<button class="btn btn-primary" id="proNameBtn" onclick="searchFunction();" type="button"style="text-align = center;padding-top: 0px;padding-left: 0px;"><img src="./images/search.png"></button></span>
							</div>
	<div class="nuribox">
		<div class = "box"> 
		<h1>제품 검색</h1>
		<table class="selectTable" style="text-align: center; border: 1px solid">
			<thead>
				<tr>
					<th style="text-align: center; width: 150px; border: 1px;">회사명</th>
					<th style="text-align: center; width: 150px; border: 1px;">제품명</th>
					<th style="text-align: center; width: 150px; border: 1px;">사진</th>
				    <th style="text-align: center; width: 150px; border: 1px;">평가</th>
				</tr>
			</thead>
			<tbody id="ajaxTable">
				
			</tbody>
		</table>
		</div>
		<div class = "nuribox">
		<h1>평가 목록</h1>
		<table class = "memTable" style="text-align: center; border: 1px solid">
			<thead>
				<tr>
					<th style="text-align: center; width: 150px; border: 1px;">제품명</th>
					<th style="text-align: center; width: 150px; border: 1px;">평가</th>
				</tr>
			</thead>
			<tbody id = "ajaxTable2">
			
			</tbody>
		</table>
		</div>
	</div>

						</div>
					</div>
				</section>

			<!-- Footer -->
				<section id="footer">
					<div class="container">
						<header>
							<h2>사용했던 화장품 검색</h2>
						</header>
						<div class="row">
							<div class="col-6 col-12-medium">
								<section>
									<form method="post" action="#">
										<div class="row gtr-50">
										
										
										<div class = "search">
										
											
											<input type = "text" list = "search">
											<datalist id = "search">
											
											<!-- 화장품 검색 탭 if문, for 문 돌려서 찾기 -->
											
												<option>진식 </option>
												<option>요셉 </option>
												<option>누리 </option>
												<option>덕운 </option>
												<option>미림 </option>
												<option>수지 </option>
																						
											
											
											</datalist>
										
									
										</div>
											<br><br>
											<p> <strong>나의 화장품 이력</strong> </p>																				
											
											
											
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

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>