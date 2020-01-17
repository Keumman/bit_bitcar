<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script type="text/javascript">

window.onload = function(){
	$('form').hide()
};

$(document).ready(function(){
	$("#btn1").click(function(){
	    $("form").show();
	  });  
	$("#btn2").click(function(){
	    $("form").hide();
	  });
});
</script>
<head>

<style type="text/css">

.board{
	margin: 0 auto;
	text-align: center;
	vertical-align: bottom;
}

.pageform{
	color: black;
	font-size: 15px;
  	text-decoration: none;
  	display: inline-block;
  	padding: 8px 16px;
}

a:hover {
 	background-color: #ddd;
  	color: black;
}

</style>

<meta charset="UTF-8">
<title>board.jsp</title>
</head>
<body>
<div class="board">
	<div id="wrap">
<!-- 댓 글 쓰 기 버 튼 부분 -->
<br><br>
		<button id="btn1" style="background-color: orange; color: white; border: 2px solid orange;"> 댓 글 쓰 기 </button>
		<button id="btn2" onclick="" style="background-color: olive; color: white; 	border: 2px solid olive;"> close </button>
<br><br>

		
		
		
		<form method="post" action="addboard.do" name="boardForm" enctype="multipart/form-data">

			<input type="hidden" name="b_type" value="${datailcar.type}">
			<textarea id="txt" name="txt" cols="80" rows="10" style="resize:none" placeholder="write here"></textarea>			
			<div class="btn">
				<input type="submit" value="등록" >
				<input type="reset" value="작성취소" >
			</div>		
		</form>
	</div>	
	<!-- 페이지 넘버 부분 -->
	<br>
	<div id="pageForm">
		<c:if test="${startPage != 1}">
			<a href='BoardListAction.bo?page=${startPage-1}' class="previous">[ 이전 ]</a>
			<!-- <a onclick="history.back()" class="previous">&#8249;</a> -->
		</c:if>

		<c:forEach var="pageNum" begin="${startPage}" end="${endPage}">
			<c:if test="${pageNum == spage}">
				${pageNum}&nbsp;
			</c:if>
			<c:if test="${pageNum != spage}">
				<a href='BoardListAction.bo?page=${pageNum}'>${pageNum}&nbsp;</a>
			</c:if>
		</c:forEach>
		
		<c:if test="${endPage != maxPage }">
			<a href='BoardListAction.bo?page=${endPage+1 }' class="next">[다음]</a>
			<!-- <a onclick="history.forward()" class="next">&#8250;</a> -->
		</c:if>
	</div>
	
</div>
</body>
</html>