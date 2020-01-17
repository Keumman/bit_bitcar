<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/footer.css">
<link rel="stylesheet" href="./css/sell_style.css">
<script type="text/javascript" src="sell.js"></script>
<head>
<meta charset="UTF-8">
<title>datail_${datailcar.type}.jsp</title>
</head>

<body>
<%@ include file="common/header.jsp" %>
<div class="container">
 <img src="${datailcar.img}" alt="${datailcar.type}" class="image">
  <div class="overlay">${datailcar.type}</div>
</div>
	<div class="column">
		<fieldset id="sellinput"> 
			<legend> 등 록 정 보 </legend><br>
			<li class="content">브랜드 : ${datailcar.brand}</li><br>
			<li for="type" class="content">차 종 : ${datailcar.type} </li><br>
			<li for="year" class="content">연 식 : ${datailcar.year}</li><br>
			<li for="history" class="content">사고이력 : ${datailcar.history}</li><br>
			<li for="km" class="content">주행거리 : ${datailcar.km}</li><br>
			<li for="price" class="content">가 격 : ${datailcar.price}</li><br>
		</fieldset>
</div>
<div class="row">
	<div class="img-magnifier-container">
  <img id="myimage" src="${datailcar.subimg1}" width="600" height="400" alt="${datailcar.type}">
</div>
 <div class="column">
  <img id="image1" src="${datailcar.subimg2}" width="600" height="400" alt="${datailcar.type}">
</div>
 <div class="column">
  <img id="image2" src="${datailcar.subimg3}" width="600" height="400" alt="${datailcar.type}">
</div></div>

<%@ include file="common/board.jsp" %>
<%@ include file="common/footer.jsp" %>
</div>
</body>

<script type="text/javascript">
magnify("myimage", 3);
</script>
</html>