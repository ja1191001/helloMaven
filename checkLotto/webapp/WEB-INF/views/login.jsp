<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!doctype html>
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
			<p style="padding-top: 20px; text-align: center;">로그인</p>
			<form id="slick-login" style="text-align: center;">
		        <div>
			        <label for="username">ID</label>
			        <input type="text" id="idChk" name="id" class="placeholder" placeholder="id" autocomplete="off">
		        </div>
		        <div>
			        <label for="password">password</label>
					<input type="password" id="passWordChk" class="placeholder" name="passWord"  placeholder="Password" value="123" autocomplete="off">
		        </div>
		        <div>
			        <input type="button" onclick="formChk()" value="로그인"/>
		        </div>
		    </form>
		    
		    <div style="padding-top: 50px; text-align: center;">
		        <input type="button" onclick="javascript:history.back();" value="돌아가기"/>
		    </div>
</body>
