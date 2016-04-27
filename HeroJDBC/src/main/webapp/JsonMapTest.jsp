<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script type="text/javascript">
//帶入後台 Database 匯出之 JSON 資料
    window.onload = function () {
    	$.ajax(
    		'${pageContext.request.contextPath}/googlemap/GoogleMapServlet',
    		{
    			async:false,
    			cache:false,
    			contentType:'application/json',
    			success:function(data){
    				LoadMap(data);
    			}
    		}
    	);
    }
//Google Map Function    
    function LoadMap(markers) {
        var mapOptions = {
            zoom : 16,
			minZoom: 16,
			draggable : true,
			zoomControl : false,
			mapTypeId : google.maps.MapTypeId.HYBRID
        };
        var infoWindow = new google.maps.InfoWindow();
        var latlngbounds = new google.maps.LatLngBounds();
        var map = new google.maps.Map(document.getElementById("Map"), mapOptions);
//迴圈帶出 Marker 進行多點標記 
        for (var i = 0; i < markers.length; i++) {
            var data = markers[i]
            var myLatlng = new google.maps.LatLng(data.Latitude, data.Longitude);
            var image = {
            	    url: data.icon,
            	    // This marker is 20 pixels wide by 32 pixels high.
            	    size: new google.maps.Size(50, 50),

            	  };

            var marker = new google.maps.Marker({
                position: myLatlng,
                map: map,
                title: data.MissionTitle,
                icon: image,
            });
            (function (marker, data) {
                google.maps.event.addListener(marker, "mouseover", function (e) {
                    infoWindow.setContent("<div style = 'width:200px;min-height:40px'>" + '任務名稱:'  + data.MissionTitle  + '<br>' + '發起人: ' + data.MemberName + '<br>' + '需求人數: ' + data.MissionPeople + '<br>' + '需求性別: ' + data.MissionGender + '<br>' + '開始時間: ' + data.MissionStrt + '<br>' + '結束時間: ' + data.MissionEnd + '<br>' + '任務說明: ' + data.MissionDesc + '<br>' + "</div>");
                    infoWindow.open(map, marker);
                });
            })(marker, data);
            latlngbounds.extend(marker.position);
        }
        var bounds = new google.maps.LatLngBounds();
        map.setCenter(latlngbounds.getCenter());
        map.fitBounds(latlngbounds);  
      //呼叫 W3C 地理資訊 嘗試取得使用者位置
		if (navigator.geolocation) {
			browserSupportFlag = true;
			navigator.geolocation.getCurrentPosition(function(position) {
				initialLocation = new google.maps.LatLng(
						position.coords.latitude, position.coords.longitude);
				map.setCenter(initialLocation);
			}, function() {
				handleNoGeolocation(browserSupportFlag);
			});
		} else {
			browserSupportFlag = false;
			handleNoGeolocation(browserSupportFlag);
		}
		function handleNoGeolocation(errorFlag) {
			if (errorFlag == true) {
				alert("地圖定位失敗");
			} else {
				alert("您的瀏覽器不支援定位服務");
			}
			initialLocation = taipei;
			map.setCenter(initialLocation);
		}
    }
</script>
</head>
<body>
<div id="Map" style="width: 900px; height: 900px">
</div>
</body>
</html>