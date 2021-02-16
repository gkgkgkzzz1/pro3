<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 오류나면 language="java" 삭제 -->
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script type="text/javascript" src="assets/js/jquery.min.js"></script>
	<script type="text/javascript">
		let request = new XMLHttpRequest();
		function searchFunction(){
			request.open("Post","./CosSelect?proName="+encodeURIComponent(document.getElementById("proName").value), true);
			request.onreadystatechange = searchProcess;
			request.send(null);
		}
		
		function searchProcess(){
			var table = document.getElementById("ajaxTable");
			table.innerHTML ="";
			if(request.readyState = 4 && request.status == 200){
				var object = eval('('+requset.responseText + ')');
				var result = object.result;
				for(var i = 0; i<result.length; i++){
					var row = table.insertRow(0);
					for(var j = 0; j<result[i].length; j++){
						var cell = row.insertCell(j);
						cell.innerHTML = result[i][j].value;
					}
				}
			}
		}
	</script>
</head>
<body>
	<div class="container">
		<div class="form-group row pull-right">
			<div class="col xs-8">
				<input class="form-control"  id="proName" onkeyup="searchFunction()" type="text" size="20">
			</div>
			<div class="col xs-2">
				<button class="btn btn-primary" onclick="searchFunction();">검색</button>
			</div>
		</div>
		<br>
		<table class="table" style="text-align: center; border: 1px solid">
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
</body>
</html>