<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <!--<link rel="icon" href="../../favicon.ico">-->
    <title></title>
    <link href="${pageContext.request.contextPath }/resource/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resource/css/YCComm.min.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/resource/js/jquery-3.3.1.min.js"></script>
    <script>
    $(function() {
		document.onkeydown = function(e) {
			var keycode = document.all ? event.keyCode : e.which;
			if (keycode == 13)
				ValidateSubmit();
		};
	});

	function ValidationEmail() {
		var flag = true;
		//验证邮箱 
		if (!$("#inputEmail").val().match(/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/)) {
			$("#emailspan").html();
			$("#emailspan").html("Please enter the correct email address");
			flag = false;
		} else {
			var email = $.trim($("#inputEmail").val());
			$.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath }/regist/validationEmail",
				data : {email:email},
				success : function(result) {
					if(result!=0){
						$("#emailspan").html("This email address has not been registered");
				}
					else{
						$("#emailspan").html("");
					flag=true;	
					}
					}
			});
		}
		return flag;
	}

	function ValidationPassword(){
		var flag = true;
		var pwd = $.trim($("#inputPassword").val());
	    if(pwd.length<6){
	    	$("#pwdspan").html("The password must be at least six digits");
	    	flag=false;
	    }
	    else if(pwd.length>18){
	    	$("#pwdspan").html("The password must be 18 digits at most");
	    	flag=false;
	    }
	    else{
	    	  $("#pwdspan").html("");
	    	  flag=true;
	    }
	    return flag;
	}
	function ValidateSubmit(){
		ValidationEmail();
		ValidationPassword();
		 if(ValidationEmail()&&ValidationPassword()){
			 var param={};
			 param.email=$.trim($("#inputEmail").val());
			 param.password=$.trim($("#inputPassword").val());
    			$.ajax({
    				url:"${pageContext.request.contextPath }/loginAction",
    				type: "POST",
    				async:false,
    				contentType: "application/json",
    				data:JSON.stringify(param),
    				success:function(data){
    					if(data==1){
    						$("#form1").attr("action","${pageContext.request.contextPath }/");
    					}
    					else{
    						alert("Password error, please check and try again");
    					}
    				}
    				
    			});
		 }
		 else{
			 alert("Please check the current error input and submit again");
		 }
	 }
    </script>


</head>

<body>
<div  class="top">
    <img src="${pageContext.request.contextPath }/resource/image/logo.png" width="130px" height="25px" >
    <a class="msg" href="#"><img src="${pageContext.request.contextPath }/resource/image/msg.png" height="25px" ></a>
</div>
<div class="container">

    <form class="form-signin" id="form1">
        <a href="javascript:;" onClick="javascript :history.back(-1);"><img src="${pageContext.request.contextPath }/resource/image/arrow-previous.png" border="0" title="返回上一页"></a>
        <h2 class="form-signin-heading">SIGN IN</h2>
        <label for="inputEmail" class="sr-only">Email address</label>
        
        <input type="email" id="inputEmail" class="form-control" value="${user.email}" onblur="ValidationEmail()"  placeholder="Email address" required autofocus>
        <span id="emailspan"></span>
        <label for="inputPassword" class="sr-only">Password</label>
        
        <input type="password" id="inputPassword" class="form-control"  onkeyup="ValidationPassword()" placeholder="Password" required>
        <span id="pwdspan"></span>
        <div class="checkbox" style="margin-top: 30px">
                <input type="checkbox" value="remember-me" style="margin: 0;padding: 0">  <label style="color: #cccccc;vertical-align: middle;margin-left:20px;padding: 0">Remember me
            </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit" style="margin-top: 20px" onclick="ValidateSubmit()" >Sign in</button>
        <label class="regist-box"><a href="${pageContext.request.contextPath }/registPage" class="regist">CREATE ACCOUNT</a> </label>
    </form>

</div>



</body>
</html>
