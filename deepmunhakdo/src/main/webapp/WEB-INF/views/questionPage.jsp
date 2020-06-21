<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>question</title>
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
	#ViewTimer{
		position : fixed;
		top : 125px;
		right : 15%;
		width : 100px;
		height : 55px;
		text-align : center;
	}
	#text{
		clear : both;
		text-align : justify;
		padding : 15px 10px 15px 10px;
		font-family : "Times new Roman";
	}
	#option{
		clear : both;
		text-align : left;
		font-family : "Times new Roman";
	}
	#button{
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
	#arrowBox{
		text-align : center;
	}
</style>
<script src="http://code.jquery.com/jquery-1.9.0rc1.js"></script> 
<script type="text/javascript">
		
	    // 타이머
		var SetTime = 240;
			
		function msg_time() {
				
			m = Math.floor(SetTime / 60) + "분 " + (SetTime % 60) + "초";
			var msg = "<font color='red'>" + m + "</font>";
			document.all.ViewTimer.innerHTML = msg;	
			SetTime--;	
			if (SetTime < 0) {
				clearInterval(tid);
				alert("시간이 초과되었습니다.");
				document.location.href="showResultPage";
			}
		}
		//window.onload 
		$(document).ready(function TimerStart(){ tid=setInterval('msg_time()',1000) });
			
</script>
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
				<div id="ViewTimer" class="shadow p-3 mb-5 bg-white rounded"></div>
				<c:choose>
					<c:when test="${SATQuestion.questionType == 1 }">
						<div id="text"> &nbsp; &nbsp; ${SATQuestion.text }</div> <br>
						
						<div class="btn-group-vertical btn-group-toggle btn-block" data-toggle="buttons">
							  <label id="option" class="btn btn-light">
							    <input type="radio" name="choice" id="option1" autocomplete="off" value="1">${SATQuestion.choice1 }
							  </label>
							  <label id="option" class="btn btn-light">
							    <input type="radio" name="choice" id="option2" autocomplete="off" value="2">${SATQuestion.choice2 }
							  </label>
							  <label id="option" class="btn btn-light">
							    <input type="radio" name="choice" id="option3" autocomplete="off" value="3">${SATQuestion.choice3 }
							  </label>
							  <label id="option" class="btn btn-light">
							    <input type="radio" name="choice" id="option4" autocomplete="off" value="4">${SATQuestion.choice4 }
							  </label>
							  <label id="option" class="btn btn-light">
							    <input type="radio" name="choice" id="option5" autocomplete="off" value="5">${SATQuestion.choice5 }
							  </label>					  
						</div>
					</c:when>
					<c:when test="${SATQuestion.questionType == 2 }">
						<br><br> <div id="text_box"> &nbsp; &nbsp; ${SATQuestion.text }</div> <br>
						<div id="text_extra">${SATQuestion.extraText1 }</div> <br>
						<div id="text_extra">${SATQuestion.extraText2 }</div> <br>
						<div id="text_extra">${SATQuestion.extraText3 }</div> <br>
						
						<div class="btn-group-vertical btn-group-toggle btn-block" data-toggle="buttons">
							  <label id="option" class="btn btn-light">
							    <input type="radio" name="choice" id="option1" autocomplete="off" value="1">${SATQuestion.choice1 }
							  </label>
							  <label id="option" class="btn btn-light">
							    <input type="radio" name="choice" id="option2" autocomplete="off" value="2">${SATQuestion.choice2 }
							  </label>
							  <label id="option" class="btn btn-light">
							    <input type="radio" name="choice" id="option3" autocomplete="off" value="3">${SATQuestion.choice3 }
							  </label>
							  <label id="option" class="btn btn-light">
							    <input type="radio" name="choice" id="option4" autocomplete="off" value="4">${SATQuestion.choice4 }
							  </label>
							  <label id="option" class="btn btn-light">
							    <input type="radio" name="choice" id="option5" autocomplete="off" value="5">${SATQuestion.choice5 }
							  </label>					  
						</div>
					</c:when>
					<c:when test="${SATQuestion.questionType == 3 }">
						<br> <div id="text_box"> ${SATQuestion.extraText1 }</div> <br>
						<div id="text"> &nbsp; &nbsp; ${SATQuestion.text }</div> <br>
						
						<div class="btn-group btn-group-toggle btn-block" data-toggle="buttons">
							  <label id="option" class="btn btn-light">
							    <input type="radio" name="choice" id="option1" autocomplete="off" value="1">${SATQuestion.choice1 }
							  </label>
							  <label id="option" class="btn btn-light">
							    <input type="radio" name="choice" id="option2" autocomplete="off" value="2">${SATQuestion.choice2 }
							  </label>
							  <label id="option" class="btn btn-light">
							    <input type="radio" name="choice" id="option3" autocomplete="off" value="3">${SATQuestion.choice3 }
							  </label>
							  <label id="option" class="btn btn-light">
							    <input type="radio" name="choice" id="option4" autocomplete="off" value="4">${SATQuestion.choice4 }
							  </label>
							  <label id="option" class="btn btn-light">
							    <input type="radio" name="choice" id="option5" autocomplete="off" value="5">${SATQuestion.choice5 }
							  </label>					  
						</div>
					</c:when>
					<c:when test="${SATQuestion.questionType == 4 }">
						<br> <div id="text_box"> &nbsp; &nbsp; ${SATQuestion.text }</div>
						<div id="arrowBox">
							<img src="./img/arrow_down.png" id="arrow" width=20px>
						</div>
						<div id="text_box">${SATQuestion.extraText1 }</div> <br>
						
						<div class="btn-group-vertical btn-group-toggle btn-block" data-toggle="buttons">
							  <label id="option" class="btn btn-light">
							    <input type="radio" name="choice" id="option1" autocomplete="off" value="1">${SATQuestion.choice1 }
							  </label>
							  <label id="option" class="btn btn-light">
							    <input type="radio" name="choice" id="option2" autocomplete="off" value="2">${SATQuestion.choice2 }
							  </label>
							  <label id="option" class="btn btn-light">
							    <input type="radio" name="choice" id="option3" autocomplete="off" value="3">${SATQuestion.choice3 }
							  </label>
							  <label id="option" class="btn btn-light">
							    <input type="radio" name="choice" id="option4" autocomplete="off" value="4">${SATQuestion.choice4 }
							  </label>
							  <label id="option" class="btn btn-light">
							    <input type="radio" name="choice" id="option5" autocomplete="off" value="5">${SATQuestion.choice5 }
							  </label>					  
						</div>
					</c:when>
					<c:otherwise>
						<div id="text"> &nbsp; &nbsp; ${SATQuestion.text }</div> <br>
						
						<div class="btn-group btn-group-toggle btn-block" data-toggle="buttons">
							  <label id="option" class="btn btn-light">
							    <input type="radio" name="choice" id="option1" autocomplete="off" value="1">${SATQuestion.choice1 }
							  </label>
							  <label id="option" class="btn btn-light">
							    <input type="radio" name="choice" id="option2" autocomplete="off" value="2">${SATQuestion.choice2 }
							  </label>
							  <label id="option" class="btn btn-light">
							    <input type="radio" name="choice" id="option3" autocomplete="off" value="3">${SATQuestion.choice3 }
							  </label>
							  <label id="option" class="btn btn-light">
							    <input type="radio" name="choice" id="option4" autocomplete="off" value="4">${SATQuestion.choice4 }
							  </label>
							  <label id="option" class="btn btn-light">
							    <input type="radio" name="choice" id="option5" autocomplete="off" value="5">${SATQuestion.choice5 }
							  </label>					  
						</div>
					</c:otherwise>
				</c:choose>
				
				<button type="button" id="button" class="btn btn-outline-danger btn-block" onclick="checkAnswer()">제출하기</button>
				
				<!-- <div id="choices">	
						<label for="choice1"><input type="radio" id="choice1" name="choice" value="1">&nbsp; 1. ${SATQuestion.choice1 }</label> <br>
						<label for="choice2"><input type="radio" id="choice2" name="choice" value="2">&nbsp; 2. ${SATQuestion.choice2 }</label> <br>
						<label for="choice3"><input type="radio" id="choice3" name="choice" value="3">&nbsp; 3. ${SATQuestion.choice3 }</label> <br>
						<label for="choice4"><input type="radio" id="choice4" name="choice" value="4">&nbsp; 4. ${SATQuestion.choice4 }</label> <br>
						<label for="choice5"><input type="radio" id="choice5" name="choice" value="5">&nbsp; 5. ${SATQuestion.choice5 }</label> <br>
				</div>
				<button type="button" id="button" class="btn btn-outline-danger" onclick="checkAnswer()">제출하기</button> -->
			</div>
			<div id="rightContent"></div>
		</div> <br>
		<hr id="line" width="80%">
		<div id="footer">
		
		</div>
	</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script>
		// 정답 가져오기 & 답 맞춰보기
		function checkAnswer(){
			var choice = $('input[name="choice"]:checked').val();
			if(choice != null){
				if(${SATQuestion.answer} == choice){
					alert("정답입니다!");
					document.location.href="showResultPage";
				}else{
					alert("오답입니다.");
					document.location.href="showResultPage";
				}
			}else{
				alert("정답을 선택해주세요.");
			}
		}
	</script>		
</body>
</html>