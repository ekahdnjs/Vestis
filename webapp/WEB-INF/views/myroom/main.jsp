<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">


<title>My room</title>

<!-- Custom fonts for this template -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/assets/css/business-casual.css" rel="stylesheet">


<!-- Theme style -->
<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/theme-style.min.css" rel="stylesheet">

<style>
.photo {
	float: right;
	width: 40%;
	margin-left: 30px;
	margin-right: 50px;
	padding: 1rem;
}

.photo-size {
	float: left;
	width: 40%;
	margin-left: 30px;
	margin-right: 30px;
	padding: 1rem;
}

.none ul {
	list-style-type: none;
}

.top {
	margin-top: 30px;
	margin-left: 5px;
}
/* .carousel-control-prev-icon{
	background-image: url("/Vestis/assets/img/images.png") !important;
	
}
 */
.system-box {
	background: #FFFFFF;
	float: left;
	width: 100%;
	height: 522.61px;
	padding: 1%
}

.cWeather {
	position: absolute;
	left: 1%;
	top: 1%;
	z-index: 10;
}

.systemLabel {
	bottom: 1px !important;
	padding-bottom: 1px !important;
}
</style>


</head>
<body>

<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

<div class="myroomimg">
	<div class="container">
	<h3>MY ROOM</h3>
	</div>
</div>


<div class="container ">
<div class="row">
<c:import url="/WEB-INF/views/includes/navigation.jsp"></c:import>


<!-- ---------------------------------------------------------------------- -->

	<div class="col-md-10 content container tb2" >
		<!-- 사진 전체틀1 -->
		<div class="photo-size bg-faded  my-4 hj-border">
			<!-- Image Carousel -->
			<div id="carouselExampleIndicators" class="carousel slide"
				data-ride="carousel">
				<!-- 사진 내에 버튼 -->
				<!-- <ol class="carousel-indicators">
				  <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
				  <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				  <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				</ol> -->
				<!-- 사진 -->
				<div class="carousel-inner personCodiList" role="listbox"></div>
				<!-- 양쪽버튼 -->
				<a class="carousel-control-prev" href="#carouselExampleIndicators"
					role="button" data-slide="prev"> <span style="color: black"
					aria-hidden="true"><h1>《</h1></span> <span class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
					role="button" data-slide="next"> <span style="color: black"
					aria-hidden="true"><h1>》</h1></span> <span class="sr-only">Next</span>
				</a>
			</div>
		</div>

		<!-- 사진 전체틀2 -->
		<div class="photo bg-faded my-4 hj-border">
			<!-- Image Carousel -->
			<div id="carouselExampleIndicators2" class="carousel slide"
				data-ride="carousel">
				<!-- 사진 내에 버튼 -->
				<!-- <ol class="carousel-indicators">
				  <li data-target="#carouselExampleIndicators2" data-slide-to="0" class="active" ></li>
				  <li data-target="#carouselExampleIndicators2" data-slide-to="1"></li>
				  <li data-target="#carouselExampleIndicators2" data-slide-to="2"></li>
				</ol> -->
				<!-- 사진 -->
				<div class="carousel-inner systemCodiList" role="listbox">
					<div class="carousel-item">
						<img id="yesterdayCodi" class="d-block img-fluid w-100"
							src="${pageContext.request.contextPath}/assets/img/base_systemRecommendImg.png"
							alt="1">
						<div class="carousel-caption d-none d-md-block systemLabel">
							<h3 class="text-shadow" style="color: black;">
								<strong>어제의 추천 코디</strong>
							</h3>
							<p class="text-shadow">어제의 날씨에 맞춘 시스템 추천 코디입니다.</p>
						</div>
					</div>
					<div id = "todaySystem" class="carousel-item active">
						<canvas id="todayCanvas" width="412" height="522.61"
							style="background: #FFFFF; border-radius: 1em;"></canvas>
						<input id="data" name="data" type="hidden"> <input
							id="info_weather" name="weather" type="hidden"
							value="${todayWeatherNo}"> <input id="info_temp"
							name="temp" type="hidden" value="${todayTemp}">

						<div class="carousel-caption d-none d-md-block systemLabel">
							<h3 class="text-shadow" style="color: black;">
								<strong>오늘의 추천 코디</strong>
							</h3>
							<p class="text-shadow">오늘의 날씨에 맞춘 시스템 추천 코디입니다.</p>
						</div>
					</div>
					<div class="carousel-item">
						<canvas id="tomorrowCanvas" width="412" height="522.61"
							style="background: #FFFFFF; border-radius: 1em;"></canvas>
						<div class="carousel-caption d-none d-md-block systemLabel">
							<h3 class="text-shadow" style="color: black;">
								<strong>내일의 추천 코디</strong>
							</h3>
							<p class="text-shadow">내일의 날씨에 맞춘 시스템 추천 코디입니다.</p>
						</div>
					</div>
				</div>
				<!-- 양쪽버튼 -->
				<a class="carousel-control-prev" href="#carouselExampleIndicators2"
					role="button" data-slide="prev"> <span style="color: black"
					aria-hidden="true"><h1>《</h1></span> <span class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleIndicators2"
					role="button" data-slide="next"> <span style="color: black"
					aria-hidden="true"><h1>》</h1></span> <span class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
</div>
</div>



<!-- ---------------------------------------------------------------------- -->

	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

	<div id="imageStore" style="display: none">
		<img id="todayImg0"
			src="">
		<img id="todayImg1"
			src="">
		<img id="todayImg2"
			src="">
		<img id="todayWeatherImg"
			src="">
	</div>

	<!-- Bootstrap core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/vendor/popper/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
</body>
<script type="text/javascript">
	$(document).ready(function() {
		var tomorrowCloth = new Array();
		drawTomorrowCloth();

		if("${yesterImg}" != "") {
			console.log("어제한 코디가 있다");
			$("yesterdayCodi").attr('src', "${pageContext.request.contextPath}/upload/${yesterImg}");
		}
		
		if ("${todayImg}" == "") {
			console.log("오늘 코디 해줘야함");

			$("#todayWeatherImg").attr('src', "${pageContext.request.contextPath}/assets/img/${todayWeather}.png");
			for(var i=0; i<3; i++) {
				//var str = 
				if("${todayCloth[i].dbName}" != "") {
					$("todayImgi").attr('src', "${pageContext.request.contextPath}/upload/${todayCloth[i].dbName}");
				}
			}
			/* $("todayImg0").attr('src', "${pageContext.request.contextPath}/upload/${todayCloth[0].dbName}");
			$("todayImg1").attr('src', "${pageContext.request.contextPath}/upload/${todayCloth[1].dbName}");
			$("todayImg2").attr('src', "${pageContext.request.contextPath}/upload/${todayCloth[2].dbName}"); */
		} else {
			$('#todayCanvas').remove();
			
			str = "";
			str += "<img class=\"d-block img-fluid w-100\"";
			str += "	src=\"${pageContext.request.contextPath}/upload/${todayImg}\"";
			str += "	alt=\"1\">";
			
			$('#todaySystem').prepend(str);
			
		} 

		var no = ${userNo};
		getPersonCodi(no);
	});

	window.onload = function() {
		console.log("로딩 끝");
		if ("${todayImg}" != "") {
			console.log("오늘 코디 이미 해줌");
		} else {
			console.log("오늘의 코디");
			//캔버스에 옷 그리기
			drawTodayCloth();

			//캔버스에 그려진것 저장하는 함수
			saveTodayCodi();
		}

	}
	//사용자 추천 ajax 함수
	function getPersonCodi(no) {
		$.ajax({
			url : "${pageContext.request.contextPath }/myroom/getCodiThree",
			type : "post",
			dataType : "json",
			data : {"no" : no},
			success : function(codiList) {
				if (codiList.length == 0) {
					var str = "";
					str += "<div class=\"list0 carousel-item\">";
					str += " <img class=\"d-block img-fluid w-100\" src=\"${pageContext.request.contextPath}/assets/img/base_recommendImg.png\" alt=\"추천코디\">";
					str += "</div>";
					$(".personCodiList").append(str);

					$('.list0').addClass('active');
				} else {
					for (var i = 0; i < codiList.length; i++) {
						showCodiList(codiList[i], i);
						$('.list0').addClass('active');
					}
				}

			},
			error : function(XHR, status, error) { //실패했을때 에러메세지 찍어달라는것, 통신상의 에러라던지 그런것들
				console.error(status + " : " + error);
			}
		});
	}

	//사용자 추천 코디 보여주기
	function showCodiList(codiList, no) {
		var str = "";
		str += "<div class=\"list"+no+" carousel-item\">";
		str += " <img class=\"d-block img-fluid w-100\" src=\"${pageContext.request.contextPath}/upload/"+codiList.codi+"\" alt=\"추천코디\">";
		str += "    <div class=\"carousel-caption d-none d-md-block\">";
		str += "      <h5 class=\"text-shadow\" style=\"color:black;\">\""
				+ codiList.otherNicname + "\"님의 추천 코디</h5>";
		str += "    </div>";
		str += "</div>";
		$(".personCodiList").append(str);
	}

	function drawTomorrowCloth() {
		//이미지 객체 생성
		var topImg = new Image();
		var bottomImg = new Image();
		var shoesImg = new Image();
		var weatherImg = new Image();

		//이미지 경로 설정
		if("${tomorrowCloth[0].dbName}" != "") {
			topImg.src = "${pageContext.request.contextPath}/upload/${tomorrowCloth[0].dbName}";
		}
		if("${tomorrowCloth[1].dbName}" != "") {
			bottomImg.src = "${pageContext.request.contextPath}/upload/${tomorrowCloth[1].dbName}";
		}
		if("${tomorrowCloth[2].dbName}" != "") {
			shoesImg.src = "${pageContext.request.contextPath}/upload/${tomorrowCloth[2].dbName}";
		}
		weatherImg.src = "${pageContext.request.contextPath}/assets/img/${tomorrowWeather}.png";

		console.log("변경6");
		var canvas = document.getElementById('tomorrowCanvas');
		var ctx = canvas.getContext("2d");
		ctx.fillStyle = "white";
		ctx.fillRect(0, 0, canvas.width, canvas.height);

		//페이지 로드후 이미지가 로드 되었을 때 이미지 출력
		topImg.onload = function() {
			//canvas.drawImage() 함수를 사용하여 이미지 출력
			//drawImage ( image sx, sy, sWidth, sHeight, dx, dy, dWidth, dHeight)
			ctx.drawImage(topImg, 30, 20, 200, 200);
		};

		//페이지 로드후 이미지가 로드 되었을 때 이미지 출력
		bottomImg.onload = function() {
			//canvas.drawImage() 함수를 사용하여 이미지 출력
			//drawImage ( image sx, sy, sWidth, sHeight, dx, dy, dWidth, dHeight)
			ctx.drawImage(bottomImg, 90, 150, 200, 200);
		};

		//페이지 로드후 이미지가 로드 되었을 때 이미지 출력
		shoesImg.onload = function() {
			//canvas.drawImage() 함수를 사용하여 이미지 출력
			//drawImage ( image sx, sy, sWidth, sHeight, dx, dy, dWidth, dHeight)
			ctx.drawImage(shoesImg, 200, 280, 150, 150);
		};

		//페이지 로드후 이미지가 로드 되었을 때 이미지 출력
		weatherImg.onload = function() {
			//canvas.drawImage() 함수를 사용하여 이미지 출력
			//drawImage ( image sx, sy, sWidth, sHeight, dx, dy, dWidth, dHeight)
			ctx.drawImage(weatherImg, 6, 6, 45, 45);
		};

		ctx.font = "15px Arial";
		ctx.fillStyle = 'black';
		ctx.fillText("${tomorrowTemp}", 53, 33);
	}

	function drawTodayCloth() {
		var canvas = document.getElementById('todayCanvas');
		var ctx = canvas.getContext("2d");

		ctx.fillStyle = "white";
		ctx.fillRect(0, 0, canvas.width, canvas.height);

		var topImg = document.getElementById("todayImg0");
		console.log(topImg);
		ctx.drawImage(topImg, 30, 20, 200, 200);

		var bottomImg = document.getElementById("todayImg1");
		ctx.drawImage(bottomImg, 90, 150, 200, 200);

		var shoseImg = document.getElementById("todayImg2");
		ctx.drawImage(shoseImg, 200, 280, 150, 150);

		var weatherImg = document.getElementById("todayWeatherImg");
		ctx.drawImage(weatherImg, 6, 6, 45, 45);

		ctx.font = "15px Arial";
		ctx.fillStyle = 'black';
		ctx.fillText("${todayTemp}", 53, 33);

		console.log("todayCloth");
		var todayImgData = document.getElementById('todayCanvas').toDataURL();
		console.log(todayImgData);
		$('#data').val(todayImgData);

	}

	function saveTodayCodi(clothItems) {
		var clothItems = new Array();

		<c:forEach items="${todayCloth}" var="cloth">
		var noJson = new Object();
		noJson = "${cloth.no}";
		clothItems.push(noJson);
		</c:forEach>

		jQuery.ajaxSettings.traditional = true;
		console.log(clothItems);
		var allData = {
			"data" : $('#data').serialize(),
			"choice" : clothItems,
			"weather" : $("#info_weather").val(),
			"temp" : $("#info_temp").val(),
			"authNo" : 0
		};

		console.log(allData);
		$.ajax({
			url : "${pageContext.request.contextPath}/myroom/save/${userNo}",
			type : "POST",

			data : allData,

			success : function(result) {
				console.log(result);
			},

			error : function(XHR, status, error) {
				console.log("실패");
			}
		});
	}
</script>


</html>