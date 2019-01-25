<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<title>로그인을 해주세요</title>
</head>
<body>
	<div style="text-align: center;">
	    <h2 style="color: red; padding-top: 130px;">로그인을 해주세요!!!</h2>
	    <h3>
	        <a href="#" id="moveLogin" >로그인하러 가기</a>
	    </h3>
	</div>
	
	<script type="text/javascript">
		$(function(){
			$('#moveLogin').on('click', function() {
				location.href="/login.do";
			});
		});
	</script>
</body>
</html>