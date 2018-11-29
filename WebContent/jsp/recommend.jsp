<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
     <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resource/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resource/css/YCComm.min.css">
    <title></title>

</head>
<body>
<div class="box">
<div class="content">
    <div class="info">
       <a href="#"><img src="${pageContext.request.contextPath }/resource/image/0066.jpg" alt="..." class="img-circle"  width="50px" height="50px" ></a>
        <label><a>这里是个可长可短的昵称</a>
            <p>说明文字说明文字说明文字说明文字说明文字</p>
            <div class="content-footer">
            <span class="date">11月14日</span>
        <span class="operation">
           <a href="${pageContext.request.contextPath }/login"> <img src="${pageContext.request.contextPath }/resource/image/comment.png"></a>
            <a href="${pageContext.request.contextPath }/login"><img src="${pageContext.request.contextPath }/resource/image/like.png"></a>
            <a href="${pageContext.request.contextPath }/login"><img src="${pageContext.request.contextPath }/resource/image/premium.png"></a>
        </span>
            </div>
        </label>

    </div>
</div>
<div class="content">
    <div class="info">
        <img src="image/0049.jpg" alt="..." class="img-circle" width="50px" height="50px" >
        <label><a>这里是个可长可短的昵称</a>
            <p>说明文字说明文字说明文字说明文字说明文字</p>
            <div class="imgbox" >
                <img src="image/BM1A0693.jpg" >
              <img src="image/BM1A0757.jpg"  >
                <img src="image/BM1A0821.jpg"  >
                <img src="image/BM1A0865.jpg" >
                <img src="image/BM1A0876.jpg" >
                <img src="image/BM1A1047_1.jpg" >
                <img src="image/BM1A1098_1.jpg" >
            </div>
            <div class="content-footer">
                <span class="date">11月14日</span>
        <span class="operation">
           <a href="login.html"> <img src="image/comment.png"></a>
            <a href="login.html"><img src="image/like.png"></a>
            <a href="login.html"><img src="image/premium.png"></a>
        </span>
            </div>
        </label>

    </div>
</div>
    <div class="content">
        <div class="info">
            <img src="image/0058.jpg" alt="..." class="img-circle" width="50px" height="50px" >
            <label><a>这里是个可长可短的昵称</a>
                <p>说明文字说明文字说明文字说明文字说明文字</p>
                <div class="imgbox" >
                    <img src="image/BM1A0693.jpg" >
                    <img src="image/BM1A0757.jpg"  >
                    <img src="image/BM1A0821.jpg"  >

                </div>
                <div class="content-footer">
                    <span class="date">11月14日</span>
        <span class="operation">
           <a href="login.html"> <img src="image/comment.png"></a>
            <a href="login.html"><img src="image/like.png"></a>
            <a href="login.html"><img src="image/premium.png"></a>
        </span>
                </div>
            </label>

        </div>
    </div>
</div>
</body>
</html>