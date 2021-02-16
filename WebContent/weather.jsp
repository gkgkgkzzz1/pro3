<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>api 테스트</title>

    <script src="weatherapi.js"></script>
    <script src="https://kit.fontawesome.com/096073a2a8.js" crossorigin="anonymous"></script>
    
</head>
<body>

    <section class='weather-container'>
        <div class='weather-data'>
            <h1 class='location'><class class = 'fas fa-city'></h1>
        </div>
        <div class='weather-temp'>
            <div class='current-temp'></div>
            <div class='icon'></div>
            <div class='feels-like'>체감온도</div>
            <div class='max-temp'></div>
            <div class='min-temp'></div>
        </div>
    </section>
</body>
</html>