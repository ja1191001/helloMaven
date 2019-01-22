<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!doctype html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="<c:url value="/static/css/login.css"/>" media="all" />
	<script src="<c:url value="/static/js/lib/jquery-1.12.4.min.js"/>"></script>
	<script src="<c:url value="/static/js/lib/jquery-ui-1.12.1/jquery-ui.min.js"/>"></script>
	<script src="http://www.modernizr.com/downloads/modernizr-latest.js"></script>
	<script type="text/javascript" src="placeholder.js"></script>
	<script src="<c:url value="/static/js/plugins.js"/>"></script>
<script type="text/javaScript">	
<%
session.invalidate();
%>

$(function(){
	
	$('#idChk').focus();
	
	$('#idChk').keyup(function (e){
		  if (window.event.keyCode == 13) {
	          // 엔터키가 눌렸을 때 실행할 내용
	          formChk();
	     }//end if
	 });
	
	$('#passWordChk').keyup(function (e){
		  if (window.event.keyCode == 13) {
	          // 엔터키가 눌렸을 때 실행할 내용
	          formChk();
	     }//end if
	 });
});

function formChk(){
	var idCh = $('#idChk').val();
	var passWordCh = $('#passWordChk').val();
	
	if(idCh==""){
		alert("아이디를 입력해 주세요");
		$('#idChk').focus();
	}else{
		if(passWordCh==""){
			alert("패스워드를 입력해 주세요");
			$('#passWordChk').focus();
		}else{
			var loginData = { "id": idCh, "passWord": passWordCh} ;
			$.ajax({
				  url : "<c:url value="/loginAjax.do"/>"
				, type : "POST"
				, data : loginData
				, dataType : 'text'
				, async: false
				, error : function(request,status,error){
					alert("error");
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					return false;
				}//error
				, success : function(result) {
					if(result==0){
						alert("해당 아이디가 없습니다.");
						$('#idChk').val("");
						$('#idChk').focus();
					}else if(result == 2){
						alert("비밀번호를 다시 입력해 주세요");
						$('#passWordChk').val("");
						$('#passWordChk').focus();
					}else if(result == 3){
						alert("로그인 되었습니다.");
						$("#slick-login").attr("action","<c:url value="/egovSampleList.do"/>").submit();
					}else{
						alert("로그인 도중 오류가 발생했습니다.");
						$('#idChk').val("");
						$('#passWordChk').val("");
						$('#idChk').focus();
					}//end else	
				}//success
			});	//ajax	
		}//end else
	}//end else
}//forChk
</script>
</head>
<body>
			<p>게시판 로그인</p>
			<form id="slick-login">
		        <label for="username">ID</label>
		        <input type="text" id="idChk" name="id" class="placeholder" placeholder="id" autocomplete="off">
				<input type="hidden" id="userId" name="id" value="admin">
		        
		        <label for="password">password</label>
				<input type="password" id="passWordChk" class="placeholder" name="passWord"  placeholder="Password" value="123" autocomplete="off">
		        <input type="button" onclick="formChk()" value="로그인"/>
		    </form>
</body>
</html>