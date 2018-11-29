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
    <title></title>
    <link href="${pageContext.request.contextPath }/resource/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resource/css/YCComm.min.css">
    <style>

    </style>
</head>
<body>
<div  class="top">
    <img src="${pageContext.request.contextPath }/resource/image/logo.png" width="130px" height="25px" >

    <a href="javascript:;" onClick="javascript :history.back(-1);" class="msg"> <img src="${pageContext.request.contextPath }/resource/image/back.png" height="25px"></a>
</div>


<ul class="list-group">
    <li class="list-group-item">@我的</li>
    <li class="list-group-item">我的赞</li>
    <li class="list-group-item">评论我的</li>
    <li class="list-group-item">
        <span class="badge">NEW</span>
        我的收藏
    </li>
    <li class="list-group-item">我赞过的</li>
    <li class="list-group-item">
        <span class="badge">NEW</span>
        我评论过的
    </li>
</ul>

</body>
</html>