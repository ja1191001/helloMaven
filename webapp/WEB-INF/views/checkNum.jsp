<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>번호확인</title>
</head>
<body>
	<div style="text-align: center;">
		<h2>이번주 당첨 번호</h2>
		<h2> ${message}	</h2>
		
		<div style="padding-top: 50px; text-align: center;">
			<input type="button" onclick="javascript:history.back();" value="돌아가기"/>
		</div>
	</div>
</body>
</html>