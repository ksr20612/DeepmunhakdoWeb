<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/src/jquery.booklet.latest.css" type="text/css" rel="stylesheet" media="screen, projection, tv" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
<script> window.jQuery || document.write('<script src="${pageContext.request.contextPath}/resources/src/jquery-2.1.0.min.js"><\/script>') </script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/src/jquery.easing.1.3.js"></script>
<script src="${pageContext.request.contextPath}/resources/src/jquery.booklet.latest.min.js"></script>
<title>Shakespeare</title>
<style>

</style>
</head>
<body>
<body oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
	<div id="wrapper">
		<div id="top">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
			  <a href="./mainPage"><img src="./img/logo_2.PNG" width=160px></a>
			  &nbsp;
			  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			    <span class="navbar-toggler-icon"></span>
			  </button>
			  <div class="collapse navbar-collapse" id="navbarNav">
			    <ul class="navbar-nav">
			      <li class="nav-item">
			        <a class="nav-link" href="./mainPage">Home</a>
			      </li>
			      <li class="nav-item">
			        <a class="nav-link" href="./aboutUsPage">About Us</a>
			      </li>
			      <li class="nav-item active">
			        <a class="nav-link" href="./projectPage">Projects <span class="sr-only">(current)</span></a>
			      </li>
			  	  <li class="nav-item">
			        <a class="nav-link" href="./contactUsPage">Contact Us</a>
			      </li>
			    </ul>
			  </div>
			</nav>		
		</div> <br>
		<div id="mybook">
		    <div>
		        <img src="./img/shakespeare/Heart_Full_of_Love_1.jpg" width=100%>
		    </div>
		    <div>
		        <img src="./img/shakespeare/ABC_cafe_1.jpg" width=100% >
		    </div>
		    <div>
		        <img src="./img/shakespeare/ABC_cafe_2.jpg" width=100%>
		    </div>
		    <div>
		        <img src="./img/shakespeare/ABC_cafe_3.jpg" width=100%>
		    </div>
		    <div>
		        <img src="./img/shakespeare/ABC_cafe_4.jpg" width=100%>
		    </div>
		  	<div>
		        <img src="./img/shakespeare/One_Day_More_1.jpg" width=100%>
		    </div>	
		  	<div>
		        <img src="./img/shakespeare/One_Day_More_2.jpg" width=100%>
		    </div>	
		  	<div>
		        <img src="./img/shakespeare/One_Day_More_3.jpg" width=100%>
		    </div>
		  	<div>
		        <img src="./img/shakespeare/One_Day_More_4.jpg" width=100%>
		    </div>
		  	<div>
		        <img src="./img/shakespeare/One_Day_More_5.jpg" width=100%>
		    </div>		    
		    <div>
		        <img src="./img/shakespeare/Do_You_Hear_the_People_sing.jpg" width=100%>
		    </div>	
		    <div>
		        <img src="./img/shakespeare/On_My_Own_1.jpg" width=100%>
		    </div>
		  	<div>
		        <img src="./img/shakespeare/On_My_Own_2.jpg" width=100%>
		    </div>		    			
	</div>
<script type="text/javascript">
	$(function() {
	    //single book
	    $('#mybook').booklet({
	    	width : '80%',
	    	height : 720,
	    	pagePadding: 0,
	        tabs:  true,
	        tabWidth:  180,
	        tabHeight:  20,
	        manual: false,
	        overlays: true,
	        cursor: 'crosshair'
	    });
	});
</script>
</body>
</html>