<%@page import="com.model.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
				
				$('#ajaxTable').append("<tr><td>"+company+"</td><td>"+proName+"</td><td><img class='imgs' src='"+img+".jpg'></td><td><button class='good' id ='"+proName+"'>좋음</button>\t<button class='bad' id ='"+proName+"'>나쁨</button></td></tr>");
			}
			
		    $("button").click(function(){
		    	alert("hello");
		    	var id = $(this).attr('id');
		    	var rat = $(this).attr('class');
		    	alert("상품명"+ id);
		    	alert("평가"+rat);
		    	$.ajax({
		    		url : "memHisInsert.jsp",
		    		type : "GET",
		    		data : {proName : id, rating : rat},
		    		dataType : "json",
		    		success : function (result){
						for(let j = 0; j< res.cosmetics.length; j++){
							let proName = res.cosmetics[j].proname;
							let rating = res.cosmetics[j].rating;
							
		    				$('#ajaxTable2').append("<tr><td>"+proname+"</td><td>"+rating+"</td></tr>");
						}
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
width: 250px;
height: 250px;
}
</style>
</head>
<body>

<% memberDTO member = (memberDTO)session.getAttribute("list");
String id = member.getId(); 
System.out.println(id);%>
	<div class="container">
		<div class="form-group row pull-right">
			<div class="col xs-8">
				<input class="form-control"  name = "proName" id="proName"type="text" size="20">
			</div>
			<div class="col xs-2">
			<% request.setCharacterEncoding("EUC-KR"); %>
				<button class="btn btn-primary" onclick="searchFunction();" type="button">검색</button>
			</div>
		</div>
		<br>
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
		
		
		<br><br><br><br><br>
		<h1>회원님의 평가 목록</h1>
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

</body>
</html>