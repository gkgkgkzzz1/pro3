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
    
    alert(typeof latitude);
    alert("현재 위치는 : " + latitude + ", "+ longitude);
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
    let icon = document.querySelector('.icon');
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
    feelsLike.append(`최고:${data.main.feels_like}도`);
    maxTemp.append(`최고:${data.main.temp_max}도`);
    minTemp.append(`최저:${data.main.temp_min}도`);
    humidity.append(`습도: ${data.main.humidity}%`);
    cloud.append(`구름양: ${data.clouds.all}%`)
    icon.innerHTML = `<img src='http://openweathermap.org/img/wn/${weatherIcon}.png'>`

    //currentTime.append(`${month}월 ${day}일`);
}