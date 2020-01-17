<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="./css/index2.css">
<head>
<meta charset="UTF-8">
<title>index.jsp</title>

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
}
</script>

<script>

$(function() {
	$('#hyundai').click(function() {
		location.href="./hyundaiCar.do";
	});
	
	$('#kia').click(function() {
		location.href="./kiaCar.do";
	});
});


</script>

</head>
<body>
<!-- 헤 더 로 그 인  -->
<%@ include file="common/header2.jsp" %>

<span onclick="openNav()">&#9776; MENU</span>
<div id="main">

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
 			<a href="company.jsp"> Company </a>
			<a href="howto.jsp"> How to </a>
			<a href="./hyundaiCar.do"> Hyundai </a>
			<a href="./kiaCar.do"> K I A </a>
			<a href="./listCar2.do"> Search </a>
			<c:if test="${loginUser.role=='user'}">
			<a href="mypage.jsp"> My-PAGE </a>
			</c:if>
			<c:if test="${loginUser.role=='admin'}">
			<a href="./listCar.do"> Manage </a>
			</c:if>
</div>
	<div id="hyundai">
		<p id="ph"> H Y U N D A I 
		<p class="p1"> Lifetime partner in automobiles and beyond</p>
	</div>

	<div id="kia">
		<p id="pk"> K I A </p>
		<p class="p1">Amplify Your Joy with Emotive Driving</p>
	</div>
</div>

</body>
</html>