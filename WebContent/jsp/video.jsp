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

</head>
<body>
<div class="all">
    <div class="content">
        <div class="video">
            <video width="100%" height="135px" controls="" autoplay="autoplay">
                <source src="${pageContext.request.contextPath }/resource/video/v1.mp4" type="video/mp4"/>
                </video>
        </div>
        <div class="content_footervideo">
          <a href="#">
              <img src="${pageContext.request.contextPath }/resource/image/0058.jpg" class="img-circle" width="40px" height="40px">
              <div class="nickname">
                  <label>zheshigenichengsdkfheifvndskncsdok</label>
              </div>

          </a>
        <span class="operation">
           <a href="login.html"> <img src="image/comment.png"></a>
            <a href="login.html"><img src="image/like.png"></a>
            <a href="login.html"><img src="image/premium.png"></a>
        </span>
    </div>
</div>
    <div class="content">
        <div class="video">
            <video width="100%" height="135px" controls="" autoplay="autoplay">
                <source src="video/v1.mp4" type="video/mp4"/>
            </video>
        </div>
        <div class="content_footer">
            <a href="#">
                <img src="image/0058.jpg" class="img-circle" width="40px" height="40px">
                <div class="nickname">
                    <label>zheshigenichengsdkfheifvndskncsdok</label>
                </div>

            </a>
        <span class="operation">
           <a href="login.html"> <img src="image/comment.png"></a>
            <a href="login.html"><img src="image/like.png"></a>
            <a href="login.html"><img src="image/premium.png"></a>
        </span>
        </div>
    </div>
    <div class="content">
        <div class="video">
            <video width="100%" height="135px" controls="" autoplay="autoplay">
                <source src="video/v1.mp4" type="video/mp4"/>
            </video>
        </div>
        <div class="content_footer">
            <a href="#">
                <img src="image/0058.jpg" class="img-circle" width="40px" height="40px">
                <div class="nickname">
                    <label>zheshigenichengsdkfheifvndskncsdok</label>
                </div>

            </a>
        <span class="operation">
           <a href="login.html"> <img src="image/comment.png"></a>
            <a href="login.html"><img src="image/like.png"></a>
            <a href="login.html"><img src="image/premium.png"></a>

        </span>
        </div>
    </div>
    </div>
</body>
</html>