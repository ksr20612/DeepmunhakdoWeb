<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>
<script src="http://code.jquery.com/jquery-1.9.0rc1.js"></script> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style>
	#container{
		margin : 20px;
	}
	#leftContent{
		border : 1px solid white;
		float : left;
		width : 27%;
	}
	#questionBox{
		margin : 50px 0px 0px 0px;
		width : 46%;
		float : left;
	}
	#rightContent{
		border : 1px solid white;
		float : right;
		width : 27%;
	}
	#question{
		float : left;
		padding : 15px 10px 15px 10px;
	}
	#text{
		clear : both;
		text-align : justify;
		padding : 15px 10px 15px 10px;
		font-family : "Times new Roman";
	}
	#process_button{
		margin : 10px 0px 0px 0px;
	}
	#line{
		clear : both;
	}
	#text_box{
		clear : both;
		text-align : justify;
		border : 1px solid black;
		padding : 10px 10px 10px 10px;
		font-family : "Times new Roman";
	}
	#text_extra{
		clear : both;
		padding : 0px 10px 0px 10px;
		text-align : justify;
		font-family : "Times new Roman";
	}
	#choices{
		padding : 0px 15px 0px 15px;
		font-family : "Times new Roman";
	}
	#arrowBox{
		text-align : center;
	}
</style>
</head>
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
		</div>
		<div id="container">
			<div id="leftContent"></div>
			<div id="questionBox" class="shadow p-3 mb-5 bg-white rounded">
				<div id="question">
					${SATQuestion.question }
				</div>
				<c:choose>
					<c:when test="${SATQuestion.questionType == 1 }">
						<div id="text"> &nbsp; &nbsp; ${SATQuestion.text }</div> <br>
					</c:when>
					<c:when test="${SATQuestion.questionType == 2 }">
						<br><br> <div id="text_box"> &nbsp; &nbsp; ${SATQuestion.text }</div> <br>
						<div id="text_extra">${SATQuestion.extraText1 }</div> <br>
						<div id="text_extra">${SATQuestion.extraText2 }</div> <br>
						<div id="text_extra">${SATQuestion.extraText3 }</div> <br>
					</c:when>
					<c:when test="${SATQuestion.questionType == 3 }">
						<br> <div id="text_box">${SATQuestion.extraText1 }</div> <br>
						<div id="text">&nbsp; &nbsp; ${SATQuestion.text }</div> <br>
					</c:when>
					<c:when test="${SATQuestion.questionType == 4 }">
						<br> <div id="text_box">${SATQuestion.text }</div>
						<div id="arrowBox">
							<img src="./img/arrow_down.png" id="arrow" width=20px>
						</div>
						<div id="text_box">${SATQuestion.extraText1 }</div> <br>
					</c:when>
					<c:otherwise>
						<div id="text"> &nbsp; &nbsp; ${SATQuestion.text }</div> <br>				
					</c:otherwise>
				</c:choose>	
				
				<div id="choices">
					<div id="choice1" class="choice">${SATQuestion.choice1 }</div>
					<div id="choice2" class="choice">${SATQuestion.choice2 }</div>
					<div id="choice3" class="choice">${SATQuestion.choice3 }</div>
					<div id="choice4" class="choice">${SATQuestion.choice4 }</div>
					<div id="choice5" class="choice">${SATQuestion.choice5 }</div>				
				</div> <br>														

				<button type="button" class="btn btn-outline-danger btn-block" id="process_button" onclick="process()">해설 보기</button>
				<button type="button" class="btn btn-outline-secondary btn-block" id="replay_button" onclick="replay()">다른 문제 풀기</button>
			</div>
		</div>
		<hr id="line" width="80%">
		<div id="footer">
		
		</div>
	</div>	
</body>
<script type="text/javascript">
	
	// 정답을 빨간색으로
	var answer = "choice" + ${SATQuestion.answer};
	document.getElementById(answer).style.color ='red';
	
	// 보기가 작은 유형일 경우 한 줄 정렬
	var questionType = ${SATQuestion.questionType};
	if(questionType == "3" || questionType == "5"){
		var e = document.getElementsByClassName("choice");
		for( var i = 0; i < e.length; i++){
			e[i].style.cssFloat = 'left';
			e[i].style.margin = '0px 90px 0px 0px';
		}
	}
	
	function replay(){
		document.location.href="readProjectPage?projectIdx=1";
	}
	
	function process(){
		document.location.href="showProcessPage1";
	}
	
</script>
</html>