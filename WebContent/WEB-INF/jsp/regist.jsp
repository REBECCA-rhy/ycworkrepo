<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
     <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="${pageContext.request.contextPath }/resource/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resource/css/YCComm.min.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/resource/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
    $(function() {
    		document.onkeydown = function(e) {
    			var keycode = document.all ? event.keyCode : e.which;
    			if (keycode == 13)
    				ValidateSubmit();
    		};
    	});
    
    	function ValidationEmail() {
    		var flag=true;
    		//验证邮箱 
    		if (!$("#inputEmail").val().match(/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/)) {
    			$("#emailspan").html();
    			$("#emailspan").html("Please enter the correct email address");
    			flag = false;
    		} 
    		else {
    			var email = $.trim($("#inputEmail").val());
    			$.ajax({
    				type : "POST",
    				async:false,
    				url : "${pageContext.request.contextPath }/regist/validationEmail",
    				data : {email:email},
    				success :function callback(result) {
    					if(result==0){
    						flag=false;
    						$("#emailspan").html("The email address has been registered");
    					}
    					else{
    						$("#emailspan").html("");
    					    flag=true;	
    					}
    					
    					return flag;
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
    	
    	function ValidationConfirmPassword(){
    		var flag=false;
    		var comfirmpwd = $.trim($("#inputConfirmPassword").val());
    		var pwd = $.trim($("#inputPassword").val());
    		if(pwd!=comfirmpwd){
    			$("#comfirmpwdspan").html("The two password entries are different");
    			flag=false;
    		}
    		else{
    			$("#comfirmpwdspan").html("");
    			flag=true;
    		}
    		return flag;
    	}
    	
    	function ValidateSubmit(){
    		ValidationEmail();
    		ValidationPassword();
    		ValidationConfirmPassword();
    		 if(ValidationEmail()&&ValidationPassword()&&ValidationConfirmPassword()){
    			 var param={};
    			 param.email=$.trim($("#inputEmail").val());
    			 param.password=$.trim($("#inputPassword").val());
	    			$.ajax({
	    				url:"${pageContext.request.contextPath }/registAction",
	    				type: "POST",
	    				async:false,
	    				contentType: "application/json",
	    				data:JSON.stringify(param),
	    				success:function(data){
	    					if(data==1){
	    						 $("#userForm").attr("action","${pageContext.request.contextPath }/login");
	    			             $("#userForm").submit();
	    					}
	    					else{
	    						alert("Registration failed, please try again");
	    					}
	    				}
	    			});
    		 }
    		 else{
    			 alert("Please check the current error input and submit again");

    		 }
    	 }
    	 
    </script>
    <title></title>

</head>
<body>
<div  class="top">
    <img src="${pageContext.request.contextPath }/resource/image/logo.png" width="130px" height="25px" >
    <a class="msg" href="#"><img src="${pageContext.request.contextPath }/resource/image/msg.png" height="25px" ></a>
</div>
<div class="container">
<a id="connect"></a>
    <form class="form-signin" method="post" id="userForm">
        <a href="javascript:;" onClick="javascript :history.back(-1);"><img src="${pageContext.request.contextPath }/resource/image/arrow-previous.png" border="0" title="返回上一页"></a>
        <h2 class="form-signin-heading">CREATE ACCOUNT</h2>
        <label for="inputEmail" class="sr-only">Email address</label>
        
<input type="email" id="inputEmail" class="form-control" placeholder="Email address" onblur="ValidationEmail()" value="${user.email }" required autofocus>
        <span id="emailspan"></span>
        <label for="inputPassword" class="sr-only">Password</label>
        
<input type="password" id="inputPassword" class="form-control" placeholder="Password" onkeyup="ValidationPassword()"  required>
         <span id="pwdspan"></span>
        <label for="inputPassword" class="sr-only">Confirm Password</label>
        
<input type="password" id="inputConfirmPassword" class="form-control" placeholder="Confirm Password" onkeyup="ValidationConfirmPassword();" required>
        
         <span id="comfirmpwdspan"></span>
        <div class="checkbox">
            
                <input type="checkbox" value="Subscribe-me" checked="checked" style="margin:0px;padding: 0"><label style="color: #cccccc;margin-left:20px;padding: 0">Subscribe me to receive email update
            </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit" style="margin-top: 20px" onclick="ValidateSubmit()">CREATE ACCOUNT</button>
        <label class="regist-box"><a href="${pageContext.request.contextPath }/login" class="regist">SIGN IN</a> </label>
    </form>

</div>
</body>
</html>