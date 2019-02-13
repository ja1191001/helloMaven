<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<title>환영합니다</title>
</head>
<body>
	<div style="padding: 10px; background-color: pink; text-align: center;">
	    <h2>이번주 당첨번호를 알고 싶으신가요?</h2>
	    <h3>
	        <a href="#" id="moveCheckNum">당첨번호 확인하러 이동</a>
	    </h3>
	</div>
	
	<div id="loginAlam" style=" text-align: center;">
	    <h2 style="color: red; padding-top: 130px;">확인 전에 로그인 잊지 마세요!!!</h2>
	    <h3>
	        <a href="#" id="moveLogin" >로그인</a>
	    </h3>
	</div>
	
	<div id="logoutAlam" style=" text-align: center;">
	    <h2 style="color: red; padding-top: 130px;">로그아웃 잊지 마세요!!!</h2>
	    <h3>
	        <a href="#" id="moveLogout" >로그아웃</a>
	    </h3>
	</div>
	
	<form id="checkNum" name="checkNum" action="checkNum.do">
		<input type="hidden" id="loginId" name="loginId" value=""/>
	</form>
	
	<script type="text/javascript">
		$(function(){
			var loginId = sessionStorage.getItem("ID");
			
			if(loginId == 'admin'){
				$('#logoutAlam').prop('hidden', false);
				$('#loginAlam').prop('hidden', true);
			} else {
				$('#loginAlam').prop('hidden', false);
				$('#logoutAlam').prop('hidden', true);
			}
			
			$('#moveCheckNum').on('click', function() {
				$('#loginId').val(loginId);
				$('#checkNum').submit();
			});
			
			$('#moveLogin').on('click', function() {
				location.href="/login.do";
			});
		
			$('#moveLogout').on('click', function() {
				$("#loginId").val("");
				sessionStorage.removeItem("ID");
				location.href="/";
			});
		});
	</script>
</body>
</html>