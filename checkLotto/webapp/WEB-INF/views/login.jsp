<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!doctype html>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javaScript">	
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
	
	$('#chkBtn').on('click',function(){
		formChk();
	});
});

function formChk(){
	var idCh = $('#idChk').val();
	var passWordCh = $('#passWordChk').val();
	
	if(idCh == ""){
		alert("아이디를 입력해 주세요");
		$('#idChk').focus();
	}else{
		if(passWordCh == ""){
			alert("패스워드를 입력해 주세요");
			$('#passWordChk').focus();
		}else{
			if(idCh == "admin" && passWordCh == "1234"){
				$("#loginId").val(idCh);
				$('#slick-login').submit();
			} else {
				alert("아이디와 패스워드를 정확히 입력해 주세요.");
			}
		}//end else
	}//end else
}//forChk

function goMain(){
	window.location.href = 'http://localhost:8080/';
}
</script>
</head>
<body>
			<p style="padding-top: 20px; text-align: center;">로그인</p>
			<form id="slick-login" style="text-align: center;" action="/">
				<input type="hidden" id="loginId" name="loginId">
		        <div>
			        <label for="username">ID</label>
			        <input type="text" id="idChk" name="id" class="placeholder" placeholder="id를 입력하세요" autocomplete="off">
		        </div>
		        <div>
			        <label for="password">password</label>
					<input type="password" id="passWordChk" class="placeholder" name="passWord"  placeholder="Password" value="123" autocomplete="off">
		        </div>
		        <div>
			        <input type="button" id="chkBtn" value="로그인"/>
		        </div>
		    </form>
		    
		    <div style="padding-top: 50px; text-align: center;">
		        <input type="button" onclick="goMain();" value="돌아가기"/>
		    </div>
</body>
