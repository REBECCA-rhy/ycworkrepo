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
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resource/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resource/css/YCComm.min.css">
    <title></title>
    <style>


    </style>
</head>
<body>
<div class="search">
    <div class="input-group">
        <input type="text" class="form-control">
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="button"> <a href="javascript:;" onClick="javascript :history.back(-1);">取消</a></button>
                    </span>
    </div>
</div>
</body>
</html>