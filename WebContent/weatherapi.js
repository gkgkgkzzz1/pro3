const getJSON = function(url, callback) {
    const xhr = new XMLHttpRequest();
    xhr.open('GET', url, true);
    xhr.responseType='json';
    xhr.onload = function() {
        //접속이 성공하면 null 값 반환, 그 외는 staus 값 변환
        const status = xhr.status;
        if (status == 200) {
            callback(null, xhr.response);
        } else {
            callback(status, xhr.response);
        }
    };
    xhr.send();
}

var latitude ='';
var longitude = '';


navigator.geolocation.getCurrentPosition(function(pos) {
     latitude = pos.coords.latitude;
     longitude = pos.coords.longitude;
    
    /* 설명 : 현재 위치가 어디인지 위도 경도가 떠서 확인하는 alert 창으로 생략가능
    alert(typeof latitude);
    alert("현재 위치는 : " + latitude + ", "+ longitude);*/
    
    getJSON(`http://api.openweathermap.org/data/2.5/weather?lat=${latitude}&lon=${longitude}&appid=cd104f67661c1eedfe693e2da3745f82&units=metric`,
    function(err, data) {
        // null 값이 아니면 err
        if (err !== null) {
            alert('오류' + err);
        } else {
            loadWeather(data);
        }
    }
    );
});




function loadWeather(data) {
    let location = document.querySelector('.location');
    /*let currentTime = document.querySelector('.current-time');
    let currentTemp = document.querySelector('.current-temp');*/
    let feelsLike = document.querySelector('.feels-like');
    let minTemp = document.querySelector('.min-temp');
    let maxTemp = document.querySelector('.max-temp');
    let icon2 = document.querySelector('.icon2');
    let weatherIcon = data.weather[0].icon;
    let humidity = document.querySelector('.humidity');
    let cloud = document.querySelector('.cloud');

    let date = new Date();
    let month = date.getMonth() + 1;
    let day = date.getDate();
    let hours = date.getHours();
    let minutes = date.getMinutes();

    location.append(data.name);
    /*currentTemp.append(`${data.main.temp}도`);*/
    feelsLike.append(`${data.main.feels_like}`);
    maxTemp.append(`최고: ${data.main.temp_max}`);
    minTemp.append(`최저: ${data.main.temp_min}`);
    humidity.append(`${data.main.humidity}%`);
    cloud.append(`${data.clouds.all}%`)
    icon2.innerHTML = `<img src='http://openweathermap.org/img/wn/${weatherIcon}.png'>`

    //currentTime.append(`${month}월 ${day}일`);
	 
	if(`${data.main.humidity}`< 40){
        $(".yoseph").append("<p>피부 수분은 <span style='color:#FFF000 ; font-weight:bold;'>건조</span> 합니다.</p><br>");	
    } 
	 
	else if(`${data.main.humidity}`<= 60){
        $(".yoseph").append("<p>피부 수분은 <span style='color:green ; font-weight:bold;'>쾌적</span> 합니다.<br></p>");	
    }
      
    else{
        $(".yoseph").append("<p>피부 수분은 <span style='color:blue ; font-weight:bold;'>다습</span> 합니다.<br></p>");	
    }
    
    
    
    
    if(`${data.main.humidity}`< 40){
        $(".yoseph2").append("<header><span class='date'>히알루론 모이스춰 수분크림</span></header>");
        $(".yoseph2").append("<a href='#' class='image featured'><img src='images/dry1.jpg'></a>")
        $(".yoseph2").append("<p> # <br> # <br> # <br> # </p>")
    } 
	 
	else if(`${data.main.humidity}`<= 60){
        $(".yoseph2").append("<header><span class='date'>닥터지 레드 블레미쉬 클리어 수딩 크림</span></header>");	
        $(".yoseph2").append("<a href='#' class='image featured'><img src='images/good1.jpg'></a>")
        $(".yoseph2").append("<p> # <br> # <br> # <br> # </p>")
    }
      
    else{
        $(".yoseph2").append("<header><span class='date'>HD 퍼펙트 파우더 팩트</span></header>");
        $(".yoseph2").append("<a href='#' class='image featured'><img src='images/wet3.png'></a>")
        $(".yoseph2").append("<p> # <br> # <br> # <br> # </p>")	
    }
    
    
    
    if(`${data.main.humidity}`< 40){
        $(".yoseph3").append("<header><span class='date'>워터퓨즈 하이드로 듀 드랍</span></header>");	
        $(".yoseph3").append("<a href='#' class='image featured'><img src='images/dry2.jpg'></a>")
        $(".yoseph3").append("<p> # <br> # <br> # <br> # </p>")
    } 
	 
	else if(`${data.main.humidity}`<= 60){
        $(".yoseph3").append("<header><span class='date'>프리 울트라 모이스쳐라이징 로션</span></header>");
        $(".yoseph3").append("<a href='#' class='image featured'><img src='images/good2.jpg'></a>")
        $(".yoseph3").append("<p> # <br> # <br> # <br> # </p>")	
    }
      
    else{
        $(".yoseph3").append("<header><span class='date'>플랑크톤 피부강화 에센스 로션</span></header>");	
        $(".yoseph3").append("<a href='#' class='image featured'><img src='images/wet2.jpg'></a>")
        $(".yoseph3").append("<p> # <br> # <br> # <br> # </p>")
    }
};


