<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
   
<!-- <script type="text/javascript" src="js/answerValidation.js"></script> -->
<script>

function onClkMathematics(){
	
	document.getElementById("mathDiv").style.display="block";
	document.getElementById("sciDiv").style.display="none";
	document.getElementById("socDiv").style.display="none";
	document.getElementById("engDiv").style.display="none";
}
function onClkScience(){
	document.getElementById("mathDiv").style.display="none";
	document.getElementById("sciDiv").style.display="block";
	document.getElementById("socDiv").style.display="none";
	document.getElementById("engDiv").style.display="none";
}
function onClkSocial(){
	document.getElementById("mathDiv").style.display="none";
	document.getElementById("sciDiv").style.display="none";
	document.getElementById("socDiv").style.display="block";
	document.getElementById("engDiv").style.display="none";
}
function onClkEnglish(){
	document.getElementById("mathDiv").style.display="none";
	document.getElementById("sciDiv").style.display="none";
	document.getElementById("socDiv").style.display="none";
	document.getElementById("engDiv").style.display="block";
}
function onClkSubmit(){
	var mathMarksCount=0,scienceMarksCount=0,socMarksCount=0,engMarksCount=0;
	
	if(document.querySelector('input[name="multiplication"]:checked')!=null&&document.querySelector('input[name="multiplication"]:checked').value=="42")
		mathMarksCount++;
	if(document.querySelector('input[name="LCM"]:checked')!=null&&document.querySelector('input[name="LCM"]:checked').value=="12")
		mathMarksCount++;
	if(document.querySelector('input[name="fraction"]:checked')!=null&&document.querySelector('input[name="fraction"]:checked').value=="All of the above")
		mathMarksCount++;
	if(document.querySelector('input[name="rectLenght"]:checked')!=null&&document.querySelector('input[name="rectLenght"]:checked').value=="15cm2")
		mathMarksCount++;
	if(document.querySelector('input[name="primeNumber"]:checked')!=null&&document.querySelector('input[name="primeNumber"]:checked').value=="13")
		mathMarksCount++;
	if(document.querySelector('input[name="percentage"]:checked')!=null&&document.querySelector('input[name="percentage"]:checked').value=="30")
		mathMarksCount++;
	if(document.querySelector('input[name="square"]:checked')!=null&&document.querySelector('input[name="square"]:checked').value=="64")
		mathMarksCount++;
	if(document.querySelector('input[name="rightAngle"]:checked')!=null&&document.querySelector('input[name="rightAngle"]:checked').value=="90")
		mathMarksCount++;
	if(document.querySelector('input[name="additingMul"]:checked')!=null&&document.querySelector('input[name="additingMul"]:checked').value=="4")
		mathMarksCount++;
	if(document.querySelector('input[name="gcf"]:checked')!=null&&document.querySelector('input[name="gcf"]:checked').value=="6")
		mathMarksCount++;
	if(document.querySelector('input[name="respiratory"]:checked')!=null&&document.querySelector('input[name="respiratory"]:checked').value=="To exchange gases")
		scienceMarksCount++;
	if(document.querySelector('input[name="planet"]:checked')!=null&&document.querySelector('input[name="planet"]:checked').value=="Mars")
		scienceMarksCount++;
	if(document.querySelector('input[name="nonrenewable"]:checked')!=null&&document.querySelector('input[name="nonrenewable"]:checked').value=="Coal")
		scienceMarksCount++;
	if(document.querySelector('input[name="rockForm"]:checked')!=null&&document.querySelector('input[name="rockForm"]:checked').value=="Igneous")
		scienceMarksCount++;
	if(document.querySelector('input[name="waterFormula"]:checked')!=null&&document.querySelector('input[name="waterFormula"]:checked').value=="H2o")
		scienceMarksCount++;
	if(document.querySelector('input[name="pumpBlood"]:checked')!=null&&document.querySelector('input[name="pumpBlood"]:checked').value=="Heart")
		scienceMarksCount++;
	if(document.querySelector('input[name="sunlight"]:checked')!=null&&document.querySelector('input[name="sunlight"]:checked').value=="Photosynthesis")
		scienceMarksCount++;
	if(document.querySelector('input[name="geniticMaterial"]:checked')!=null&&document.querySelector('input[name="geniticMaterial"]:checked').value=="Nucelas")
		scienceMarksCount++;
	if(document.querySelector('input[name="unitLife"]:checked')!=null&&document.querySelector('input[name="unitLife"]:checked').value=="Cell")
		scienceMarksCount++;
	if(document.querySelector('input[name="photosynthesis"]:checked')!=null&&document.querySelector('input[name="photosynthesis"]:checked').value=="Carbon dioxide")
		scienceMarksCount++;
	
	if(document.querySelector('input[name="UNO"]:checked')!=null&&document.querySelector('input[name="UNO"]:checked').value=="To maintain international peace and security")
		socMarksCount++;
	if(document.querySelector('input[name="democroticCountries"]:checked')!=null&&document.querySelector('input[name="democroticCountries"]:checked').value=="Right to free speech")
		socMarksCount++;
	if(document.querySelector('input[name="longestRiver"]:checked')!=null&&document.querySelector('input[name="longestRiver"]:checked').value=="Nile River")
		socMarksCount++;
	if(document.querySelector('input[name="pyramids"]:checked')!=null&&document.querySelector('input[name="pyramids"]:checked').value=="Egyptian")
		socMarksCount++;
	if(document.querySelector('input[name="uslaw"]:checked')!=null&&document.querySelector('input[name="uslaw"]:checked').value=="The Constitution")
		socMarksCount++;
	if(document.querySelector('input[name="civilization"]:checked')!=null&&document.querySelector('input[name="civilization"]:checked').value=="Africa")
		scienceMarksCount++;
	if(document.querySelector('input[name="president"]:checked')!=null&&document.querySelector('input[name="president"]:checked').value=="George Washington")
		socMarksCount++;
	if(document.querySelector('input[name="capital"]:checked')!=null&&document.querySelector('input[name="capital"]:checked').value=="Paris")
		socMarksCount++;
	if(document.querySelector('input[name="civilRights"]:checked')!=null&&document.querySelector('input[name="civilRights"]:checked').value=="To end racial segregation and discrimination")
		socMarksCount++;
	
	if(document.querySelector('input[name="happy"]:checked')!=null&&document.querySelector('input[name="happy"]:checked').value=="Joyful")
		engMarksCount++;
	
	if(document.querySelector('input[name="verbsentence"]:checked')!=null&&document.querySelector('input[name="verbsentence"]:checked').value=="Runs")
		engMarksCount++;
	if(document.querySelector('input[name="passiveVoice"]:checked')!=null&&document.querySelector('input[name="passiveVoice"]:checked').value=="A delicious meal was cooked by the chef.")
		engMarksCount++;
	if(document.querySelector('input[name="simile"]:checked')!=null&&document.querySelector('input[name="simile"]:checked').value=="He was as brave as a lion.")
		engMarksCount++;
	if(document.querySelector('input[name="everySat"]:checked')!=null&&document.querySelector('input[name="everySat"]:checked').value=="Goes")
		engMarksCount++;
	if(document.querySelector('input[name="paragraph"]:checked')!=null&&document.querySelector('input[name="paragraph"]:checked').value=="The most important point the author is making")
		engMarksCount++;
	if(document.querySelector('input[name="adjective"]:checked')!=null&&document.querySelector('input[name="adjective"]:checked').value=="Blue")
		engMarksCount++;
	if(document.querySelector('input[name="plural"]:checked')!=null&&document.querySelector('input[name="plural"]:checked').value=="Children")
		engMarksCount++;
	if(document.querySelector('input[name="idiom"]:checked')!=null&&document.querySelector('input[name="idiom"]:checked').value=="Something very easy")
		engMarksCount++;
	var data = {
		    "mathMarks": mathMarksCount,
		    "scienceMarksCount": scienceMarksCount,
		    "socialMarksCount": socMarksCount,
		    "engMarksCount":engMarksCount
		};

		var url = "http://localhost:7777/SpringBootOnlineExamProject/exam/marksCount";
		if(data) url =  url + '?' + Object.keys(data).map(function (key) { return [key, data[key]].map(encodeURIComponent).join("="); }).join("&");

		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange = function() {
		    if (this.readyState == 4 && this.status == 200) {
		    	document.getElementById("parentDiv").style.display="none";
		    	
		       document.getElementById("response").innerHTML=xhr.responseText
		    }
		};
		xhr.open("POST", url, true);         
		xhr.setRequestHeader("Accept", "application/json");
		xhr.setRequestHeader("Content-Type", "application/json");
		
		xhr.send();
	alert(mathMarksCount+","+scienceMarksCount+","+socMarksCount+","+engMarksCount);
}
</script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<h1 style="color: red;text-align: center;">Welcome to Exam portal</h1>
<div id="response"></div>
<div id="parentDiv">
<form action="save" >

<div class=row>
<div class="col-1"></div>
<div class="col-2">
<input type="button" value="Mathematics" onclick="onClkMathematics()">
</div>
<div class="col-2">
<input type="button" value="Science" onclick="onClkScience()">
</div>
<div class="col-2">
<input type="button" value="Social" onclick="onClkSocial()">
</div>
<div class="col-2">
<input type="button" value="English" onclick="onClkEnglish()">
</div>
<div class="col-2">
<input type="button" value="Submit" onclick="onClkSubmit()">
</div>
</div>

<div id="mathDiv" >
<h6 style="text-align: center;;color: red;">Mathematics Quiz</h6>
<div class="row">
<div class="col-3"></div>
<div class="col-4">
<p>What is the value of 7 × 6?</p><!--Answer 42  -->
  <input type="radio" id="36" name="multiplication" value="36">
  <label for="36">36</label><br>
  <input type="radio" id="42" name="multiplication" value="42">
  <label for="42">42</label><br>
  <input type="radio" id="48" name="multiplication" value="48">
  <label for="48">48</label><br>
   <input type="radio" id="56" name="multiplication" value="56">
  <label for="56">56</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
  <p>What is the least common multiple (LCM) of 3 and 4?</p><!--Answer 12  -->
  <input type="radio" id="6" name="LCM" value="6">
  <label for="6">6</label><br>
  <input type="radio" id="8" name="LCM" value="8">
  <label for="8">8</label><br>
  <input type="radio" id="12" name="LCM" value="12">
  <label for="12">12</label><br>
   <input type="radio" id="24" name="LCM" value="24">
  <label for="24">24</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
  <p>Which of the following fractions is equivalent to 3/4?</p><!--Answer All of the above  -->
  <input type="radio" id="6/8" name="fraction" value="6/8">
  <label for="6/8">6/8</label><br>
  <input type="radio" id="9/12" name="fraction" value="9/12">
  <label for="9/12">9/12</label><br>
  <input type="radio" id="12/16" name="fraction" value="12/16">
  <label for="12/16">12/16</label><br>
   <input type="radio" id="All of the above" name="fraction" value="All of the above">
  <label for="All of the above">All of the above</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
  <p>What is the area of a rectangle with length 5 cm and width 3 cm?</p><!--Answer 15cm2  -->
  <input type="radio"  name="rectLenght" value="8cm2">
  <label for="8cm2">8cm2</label><br>
  <input type="radio" name="rectLenght" value="15cm2">
  <label for="15cm2">15cm2</label><br>
  <input type="radio"  name="rectLenght" value="18cm2">
  <label for="18cm2">18cm2</label><br>
   <input type="radio"  name="rectLenght" value="20cm2">
  <label for="20cm2">20cm2</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
   <p>Which of the following is a prime number?</p><!--Answer 13  -->
  <input type="radio"  name="primeNumber" value="4">
  <label for="4">4</label><br>
  <input type="radio" name="primeNumber" value="6">
  <label for="6">6</label><br>
  <input type="radio"  name="primeNumber" value="9">
  <label for="9">9</label><br>
   <input type="radio"  name="primeNumber" value="13">
  <label for="13">13</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
  <p>What is 15% of 200?</p><!--Answer 30  -->
  <input type="radio"  name="percentage" value="20">
  <label for="20">20</label><br>
  <input type="radio" name="percentage" value="30">
  <label for="30">30</label><br>
  <input type="radio"  name="percentage" value="35">
  <label for="35">35</label><br>
   <input type="radio"  name="percentage" value="40">
  <label for="40">40</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
  <p>What is the value of 8*8</p><!--Answer 64  -->
  <input type="radio"  name="square" value="16">
  <label for="16">16</label><br>
  <input type="radio" name="square" value="32">
  <label for="32">32</label><br>
  <input type="radio"  name="square" value="64">
  <label for="64">64</label><br>
   <input type="radio"  name="square" value="128">
  <label for="128">128</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
   <p>How many degrees are in a right angle?</p><!--Answer 90  -->
  <input type="radio"  name="rightAngle" value="45">
  <label for="45">45</label><br>
  <input type="radio" name="rightAngle" value="60">
  <label for="60">60</label><br>
  <input type="radio"  name="rightAngle" value="90">
  <label for="90">90</label><br>
   <input type="radio"  name="rightAngle" value="120">
  <label for="120">120</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
  <p>If you add 3 to a number and then multiply the result by 4, you get 28. What is the number?</p><!--Answer 4  -->
  <input type="radio"  name="additingMul" value="2">
  <label for="45">2</label><br>
  <input type="radio" name="additingMul" value="3">
  <label for="60">3</label><br>
  <input type="radio"  name="additingMul" value="4">
  <label for="90">4</label><br>
   <input type="radio"  name="additingMul" value="5">
  <label for="120">5</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
  <p>Which of the following is the greatest common factor (GCF) of 12 and 18?</p><!--Answer 6  -->
  <input type="radio"  name="gcf" value="2">
  <label for="45">2</label><br>
  <input type="radio" name="gcf" value="3">
  <label for="60">3</label><br>
  <input type="radio"  name="gcf" value="6">
  <label for="90">6</label><br>
   <input type="radio"  name="gcf" value="9">
  <label for="120">9</label><br>
  </div>
  </div>
</div>
<div id="sciDiv" style="display: none;">
<h6 style="color: red;text-align: center;">Science Quiz</h6>
<div class="row">
<div class="col-3"></div>
<div class="col-4">
<p>What is the main function of the respiratory system?</p><!--Answer To exchange gases  -->
  <input type="radio" id="36" name="respiratory" value="To digest food">
  <label for="36">To digest food</label><br>
  <input type="radio" id="42" name="respiratory" value="To circulate food">
  <label for="42">To circulate food</label><br>
  <input type="radio" id="48" name="respiratory" value="To exchange gases">
  <label for="48">To exchange gases</label><br>
   <input type="radio" id="56" name="respiratory" value="To protect the body">
  <label for="56">To protect the body</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
  <p>What planet is known as the "Red Planet"?</p><!--Answer Mars  -->
  <input type="radio" id="6" name="planet" value="Earth">
  <label for="6">Earth</label><br>
  <input type="radio" id="8" name="planet" value="Mars">
  <label for="8">Mars</label><br>
  <input type="radio" id="12" name="planet" value="Venus">
  <label for="12">Venus</label><br>
   <input type="radio" id="24" name="planet" value="Jupiter">
  <label for="24">Jupiter</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
  <p>Which of the following is a non-renewable energy resource?</p><!--Answer Coal  -->
  <input type="radio" id="6/8" name="nonrenewable" value="Solar energy">
  <label for="6/8">Solar energy</label><br>
  <input type="radio" id="9/12" name="nonrenewable" value="Wind energy">
  <label for="9/12">Wind energy</label><br>
  <input type="radio" id="12/16" name="nonrenewable" value="Coal">
  <label for="12/16">Coal</label><br>
   <input type="radio" id="All of the above" name="nonrenewable" value="Hydropower">
  <label for="All of the above">Hydropower</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
  <p>What type of rock is formed from cooled lava or magma?</p><!--Answer Igneous  -->
  <input type="radio"  name="rockForm" value="Sedimentary">
  <label for="8cm2">Sedimentary</label><br>
  <input type="radio" name="rockForm" value="Igneous">
  <label for="15cm2">Igneous</label><br>
  <input type="radio"  name="rockForm" value="Metamorphic">
  <label for="18cm2">Metamorphic</label><br>
   <input type="radio"  name="rockForm" value="Fossil">
  <label for="20cm2">Fossil</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
   <p>What is the chemical symbol for water?</p><!--Answer H2o  -->
  <input type="radio"  name="waterFormula" value="H2o">
  <label for="4">H2o</label><br>
  <input type="radio" name="waterFormula" value="co2">
  <label for="6">c02</label><br>
  <input type="radio"  name="waterFormula" value="o2">
  <label for="9">02</label><br>
   <input type="radio"  name="waterFormula" value="Nacl">
  <label for="13">Nacl</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
  <p>Which organ in the human body is responsible for pumping blood?</p><!--Answer Heart  -->
  <input type="radio"  name="pumpBlood" value="Brain">
  <label for="20">Brain</label><br>
  <input type="radio" name="pumpBlood" value="Lungs">
  <label for="30">Lungs</label><br>
  <input type="radio"  name="pumpBlood" value="Liver">
  <label for="35">Liver</label><br>
   <input type="radio"  name="pumpBlood" value="Heart">
  <label for="40">Heart</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
  <p>What is the process by which plants make their food using sunlight?</p><!--Answer Photosynthesis  -->
  <input type="radio"  name="sunlight" value="Respiration">
  <label for="16">Respiration</label><br>
  <input type="radio" name="sunlight" value="Digestion">
  <label for="32">Digestion</label><br>
  <input type="radio"  name="sunlight" value="Photosynthesis">
  <label for="64">Photosynthesis</label><br>
   <input type="radio"  name="sunlight" value="Transpiration">
  <label for="128">Transpiration</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
   <p>Which part of a cell contains the genetic material?</p><!--Answer Nucelas  -->
  <input type="radio"  name="geniticMaterial" value="Nucelas">
  <label for="45">Nucelas</label><br>
  <input type="radio" name="geniticMaterial" value="Mitochondria">
  <label for="60">Mitochondria</label><br>
  <input type="radio"  name="geniticMaterial" value="Cytoplasm">
  <label for="90">Cytoplasm</label><br>
   <input type="radio"  name="geniticMaterial" value="Cell membrane">
  <label for="120">Cell membrane</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
  <p>What is the basic unit of life?</p><!--Answer Cell  -->
  <input type="radio"  name="unitLife" value="Tissue">
  <label for="45">Tissue</label><br>
  <input type="radio" name="unitLife" value="Organ">
  <label for="60">Organ</label><br>
  <input type="radio"  name="unitLife" value="Cell">
  <label for="90">Cell</label><br>
   <input type="radio"  name="unitLife" value="Organism">
  <label for="120">Organism</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
  <p>Which gas do plants take in during photosynthesis?</p><!--Answer Carbon dioxide  -->
  <input type="radio"  name="photosynthesis" value="Oxygen">
  <label for="45">Oxygen</label><br>
  <input type="radio" name="photosynthesis" value="Nitorgen">
  <label for="60">Nitorgen</label><br>
  <input type="radio"  name="photosynthesis" value="Carbon dioxide">
  <label for="90">Carbon dioxide</label><br>
   <input type="radio"  name="photosynthesis" value="Hydrogen">
  <label for="120">Hydrogen</label><br>
  </div>
  </div>
</div>
<div id="socDiv" style="display: none;">
<h6 style="color: red;text-align: center;">Social Quiz</h6>
<div class="row">
<div class="col-3"></div>
<div class="col-4">
<p>What is the primary purpose of the United Nations?</p><!--Answer To maintain international peace and security  -->
  <input type="radio" id="36" name="UNO" value="To control world trade">
  <label for="36">To control world trade</label><br>
  <input type="radio" id="42" name="UNO" value="To maintain international peace and security">
  <label for="42"> To maintain international peace and security</label><br>
  <input type="radio" id="48" name="UNO" value="To promote one-world government">
  <label for="48">To promote one-world government</label><br>
   <input type="radio" id="56" name="UNO" value="To create laws for all countries">
  <label for="56">To create laws for all countries</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
  <p>Which of the following is considered a fundamental right in most democratic countries?</p><!--Answer Right to free speech  -->
  <input type="radio" id="6" name="democroticCountries" value="Right to free speech">
  <label for="6">Right to free speech</label><br>
  <input type="radio" id="8" name="democroticCountries" value="Right to free transportation">
  <label for="8">Right to free transportation</label><br>
  <input type="radio" id="12" name="democroticCountries" value="Right to unlimited wealth">
  <label for="12">Right to unlimited wealth</label><br>
   <input type="radio" id="24" name="democroticCountries" value=" Right to invade other countries">
  <label for="24"> Right to invade other countries</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
  <p>What is the longest river in the world?</p><!--Answer Nile River  -->
  <input type="radio" id="6/8" name="longestRiver" value="Amazon River">
  <label for="6/8">Amazon River</label><br>
  <input type="radio" id="9/12" name="longestRiver" value="Mississippi River">
  <label for="9/12">Mississippi River</label><br>
  <input type="radio" id="12/16" name="longestRiver" value="Nile River">
  <label for="12/16">Nile River</label><br>
   <input type="radio" id="All of the above" name="longestRiver" value="Yangtze River">
  <label for="All of the above">Yangtze River</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
  <p>Which ancient civilization built the pyramids?</p><!--Answer Egyptian  -->
  <input type="radio"  name="pyramids" value="Roman">
  <label for="8cm2">Roman</label><br>
  <input type="radio" name="pyramids" value="Mesopotamian">
  <label for="15cm2">Mesopotamian</label><br>
  <input type="radio"  name="pyramids" value="Greek">
  <label for="18cm2">Greek</label><br>
   <input type="radio"  name="pyramids" value="Egyptian">
  <label for="20cm2">Egyptian</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
   <p>What document is the supreme law of the United States?</p><!--Answer The Constitution  -->
  <input type="radio"  name="uslaw" value=" The Declaration of Independence">
  <label for="4"> The Declaration of Independence</label><br>
  <input type="radio" name="uslaw" value="The Bill of Rights">
  <label for="6">The Bill of Rights</label><br>
  <input type="radio"  name="uslaw" value="The Constitution">
  <label for="9">The Constitution</label><br>
   <input type="radio"  name="uslaw" value="The Emancipation Proclamation">
  <label for="13">The Emancipation Proclamation</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
  <p>Which continent is known as the birthplace of civilization?</p><!--Answer Africa  -->
  <input type="radio"  name="civilization" value="Africa">
  <label for="20">Africa</label><br>
  <input type="radio" name="civilization" value="Asia">
  <label for="30">Asia</label><br>
  <input type="radio"  name="civilization" value="Europe">
  <label for="35">Europe</label><br>
   <input type="radio"  name="civilization" value="South America">
  <label for="40">South America</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
  <p>Who was the first President of the United States?</p><!--Answer George Washington  -->
  <input type="radio"  name="president" value=" Thomas Jefferson">
  <label for="16"> Thomas Jefferson</label><br>
  <input type="radio" name="president" value="Abraham Lincoln">
  <label for="32">Abraham Lincoln</label><br>
  <input type="radio"  name="president" value="George Washington">
  <label for="64">George Washington</label><br>
   <input type="radio"  name="president" value="John Adams">
  <label for="128">John Adams</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
   <p>What is the capital of France?</p><!--Answer  Paris -->
  <input type="radio"  name="capital" value="Rome">
  <label for="45">Rome</label><br>
  <input type="radio" name="capital" value="Madrid">
  <label for="60">Madrid</label><br>
  <input type="radio"  name="capital" value="Berlin">
  <label for="90">Berlin</label><br>
   <input type="radio"  name="capital" value="Paris">
  <label for="120">Paris</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
  <p>Which system of government is ruled by the people, typically through elected representatives?</p><!--Answer Democracy  -->
  <input type="radio"  name="govtRp" value="Monarchy">
  <label for="45">Monarchy</label><br>
  <input type="radio" name="govtRp" value="Dictatorship">
  <label for="60">Dictatorship</label><br>
  <input type="radio"  name="govtRp" value="Democracy">
  <label for="90">Democracy</label><br>
   <input type="radio"  name="govtRp" value="Oligarchy">
  <label for="120">Oligarchy</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
  <p>What is the main reason for the Civil Rights Movement in the United States?</p><!--Answer To end racial segregation and discrimination  -->
  <input type="radio"  name="civilRights" value="To gain independence from Britain">
  <label for="45">To gain independence from Britain</label><br>
  <input type="radio" name="civilRights" value=" To end racial segregation and discrimination">
  <label for="60"> To end racial segregation and discrimination</label><br>
  <input type="radio"  name="civilRights" value="To increase taxes on the wealthy">
  <label for="90">To increase taxes on the wealthy</label><br>
   <input type="radio"  name="civilRights" value=" To promote environmental conservation">
  <label for="120"> To promote environmental conservation</label><br>
  </div>
  </div>
</div>
<div id="engDiv" style="display: none;">
<h6 style="color: red;text-align: center;">English Quiz</h6>
<div class="row">
<div class="col-3"></div>
<div class="col-4">
<p>Which of the following is a synonym for the word "happy"?</p><!--Answer Joyful -->
  <input type="radio" id="36" name="happy" value="Sad">
  <label for="36">Sad</label><br>
  <input type="radio" id="42" name="happy" value="Joyful">
  <label for="42">Joyful</label><br>
  <input type="radio" id="48" name="happy" value="Angry">
  <label for="48">Angry</label><br>
   <input type="radio" id="56" name="happy" value="Tired">
  <label for="56">Tired</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
  <p>Identify the verb in the following sentence: "She runs quickly to catch the bus."</p><!--Answer Runs -->
  <input type="radio" id="6" name="verbsentence" value="She">
  <label for="6">She</label><br>
  <input type="radio" id="8" name="verbsentence" value="Runs">
  <label for="8">Runs</label><br>
  <input type="radio" id="12" name="verbsentence" value="Quickly">
  <label for="12">Quickly</label><br>
   <input type="radio" id="24" name="verbsentence" value=" Bus">
  <label for="24"> Bus</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
  <p>Which sentence is written in the passive voice?</p><!--Answer A delicious meal was cooked by the chef.  -->
  <input type="radio" id="6/8" name="passiveVoice" value="The chef cooked a delicious meal.">
  <label for="6/8">The chef cooked a delicious meal.</label><br>
  <input type="radio" id="9/12" name="passiveVoice" value=" A delicious meal was cooked by the chef.">
  <label for="9/12"> A delicious meal was cooked by the chef.</label><br>
  <input type="radio" id="12/16" name="passiveVoice" value="The chef is cooking a delicious meal.">
  <label for="12/16">The chef is cooking a delicious meal.</label><br>
   <input type="radio" id="All of the above" name="passiveVoice" value="The chef will cook a delicious meal.">
  <label for="All of the above">The chef will cook a delicious meal.</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
  <p>Which of the following is a simile?</p><!--Answer He was as brave as a lion.  -->
  <input type="radio"  name="simile" value="He was as brave as a lion.">
  <label for="8cm2">He was as brave as a lion.</label><br>
  <input type="radio" name="simile" value="The stars were diamonds in the sky.">
  <label for="15cm2">The stars were diamonds in the sky.</label><br>
  <input type="radio"  name="simile" value="Time is a thief.">
  <label for="18cm2">Time is a thief.</label><br>
   <input type="radio"  name="simile" value="The wind whispered through the trees.">
  <label for="20cm2">The wind whispered through the trees.</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
   <p>Choose the correct form of the verb: "She _____ to the store every Saturday."</p><!--Answer Goes  -->
  <input type="radio"  name="everySat" value=" Go">
  <label for="4"> Go</label><br>
  <input type="radio" name="everySat" value="Going">
  <label for="6">Going</label><br>
  <input type="radio"  name="everySat" value="Goes">
  <label for="9">Goes</label><br>
   <input type="radio"  name="everySat" value="Gone">
  <label for="13">Gone</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
  <p>What is the main idea of a paragraph?</p><!--Answer The most important point the author is making  -->
  <input type="radio"  name="paragraph" value="A small detail that supports the story">
  <label for="20">A small detail that supports the story</label><br>
  <input type="radio" name="paragraph" value="The most important point the author is making">
  <label for="30">The most important point the author is making</label><br>
  <input type="radio"  name="paragraph" value="The first sentence in a paragraph">
  <label for="35">The first sentence in a paragraph</label><br>
   <input type="radio"  name="paragraph" value="A question the author asks">
  <label for="40">A question the author asks</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
  <p>Which word is an example of an adjective?</p><!--Answer Blue  -->
  <input type="radio"  name="adjective" value=" Quickly">
  <label for="16">Quickly</label><br>
  <input type="radio" name="adjective" value="Dog">
  <label for="32">Dog</label><br>
  <input type="radio"  name="adjective" value="Blue">
  <label for="64">Blue</label><br>
   <input type="radio"  name="adjective" value="Run">
  <label for="128">Run</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
   <p>What is the correct plural form of the word "child"?</p><!--Answer  Children -->
  <input type="radio"  name="plural" value="Childs">
  <label for="45">Childs</label><br>
  <input type="radio" name="plural" value="Childes">
  <label for="60">Childes</label><br>
  <input type="radio"  name="plural" value="Children">
  <label for="90">Children</label><br>
   <input type="radio"  name="plural" value="Childrens">
  <label for="120">Childrens</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
  <p>Which punctuation mark is used to show possession?</p><!--Answer Apostrophe  -->
  <input type="radio"  name="possession" value="Comma (,)">
  <label for="45">Comma (,)</label><br>
  <input type="radio" name="possession" value="Apostrophe">
  <label for="60">Apostrophe</label><br>
  <input type="radio"  name="possession" value="Semicolon (;)">
  <label for="90">Semicolon (;)</label><br>
   <input type="radio"  name="possession" value="Colon (:)">
  <label for="120">Colon (:)</label><br>
  </div>
  </div>
  <div class="row">
<div class="col-3"></div>
<div class="col-4">
  <p>What is the meaning of the idiom "a piece of cake"?</p><!--Answer Something very easy  -->
  <input type="radio"  name="idiom" value="A difficult task">
  <label for="45">A difficult task</label><br>
  <input type="radio" name="idiom" value="A sweet dessert">
  <label for="60">A sweet dessert</label><br>
  <input type="radio"  name="idiom" value=" Something very easy">
  <label for="90"> Something very easy</label><br>
   <input type="radio"  name="idiom" value="A part of a whole">
  <label for="120">A part of a whole</label><br>
  </div>
  </div>
</div>


</form>
</div>

