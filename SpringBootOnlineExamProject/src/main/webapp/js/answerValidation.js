
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