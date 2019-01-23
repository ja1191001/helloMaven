<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%-- <%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %> --%>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<head>
<meta charset="EUC-KR">
<title>로그인을 해주세요</title>
</head>
<script type="text/javascript">
$(function(){
	$('#moveLogin').on('click', function() {
		location.href="/login.do";
	});
});
</script>
<center>
    <h2 style="color: red; padding-top: 130px;">로그인을 해주세요!!!</h2>
    <h3>
        <a href="#" id="moveLogin" >로그인하러 가기</a>
    </h3>
</center>