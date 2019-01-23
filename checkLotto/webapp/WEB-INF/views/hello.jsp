<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
	var loginId = '${loginId}';
	
	if(loginId != 'Maven'){
		$('#logoutAlam').prop('hidden', false);
		$('#loginAlam').prop('hidden', true);
	} else {
		$('#loginAlam').prop('hidden', false);
		$('#logoutAlam').prop('hidden', true);
	}
	
	$('#moveCheckNum').on('click', function() {
		$('#checkNum').submit();
	});
	
	$('#moveLogin').on('click', function() {
		location.href="/login.do";
	});

	$('#moveLogout').on('click', function() {
		$("#loginId").val("");
		location.href="/";
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
<div id="loginAlam">
    <h2 style="color: red; padding-top: 130px;">확인 전에 로그인 잊지 마세요!!!</h2>
    <h3>
        <a href="#" id="moveLogin" >로그인</a>
    </h3>
</div>
<div id="logoutAlam">
    <h2 style="color: red; padding-top: 130px;">로그아웃 잊지 마세요!!!</h2>
    <h3>
        <a href="#" id="moveLogout" >로그아웃</a>
    </h3>
</div>
</center>
<form id="checkNum" name="checkNum" action="checkNum.do">
	<input type="hidden" id="loginId" name="loginId" value="${loginId}"/>
</form>
