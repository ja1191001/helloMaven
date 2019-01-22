<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<head>
<meta charset="EUC-KR">
<title>환영합니다</title>
</head>
<script type="text/javascript">
$(function(){
	$('#moveCheckNum').on('click', function() {
		alert('이동할까요?');
	});
	$('#moveLogin').on('click', function() {
		location.href="/HelloMaven/login.jsp";
	});
});
</script>
<center>
<div style="padding: 10px; background-color: pink;">
    <h2>이번주 당첨번호를 알고 싶으신가요?</h2>
    <h3>
        <a href="#" id="moveCheckNum">당첨번호 확인하러 이동</a>
    </h3>
</div>
    <h2 style="color: red; padding-top: 130px;">확인 전에 로그인 잊지 마세요!!!</h2>
    <h3>
        <a href="#" id="moveLogin" >로그인</a>
    </h3>
</center>
<form>
	<input type="hidden" id="loginId" value="${loginId}"/>
</form>
