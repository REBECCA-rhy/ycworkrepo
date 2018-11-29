<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="${pageContext.request.contextPath }/resource/js/jquery-3.3.1.min.js"></script>
    <script>
        $(function(){

                $("#myTab li").click(function(e) {
                    e.preventDefault();
                $(this).siblings('li').removeClass('active');
                $(this).addClass('active');
                $("#Tab-content").empty();
                 var idNames=$(this).children("a:eq(0)").attr("href");
                    $(idNames).siblings('div').removeClass('show');
                    $(idNames).addClass('show');

                 if(document.body.scrollTop>0){
                       console.log(1);
                       window.scrollTo(0,-1);
                       document.body.scrollTop=0;
                   }
                        window.scrollTo(0,-1);
                        document.body.scrollTop=0;

            });


        });
        $(function (){
            $('#recommend').load('${pageContext.request.contextPath }/jsp/recommend.jsp');
            $('#focus').load('${pageContext.request.contextPath }/jsp/focus.jsp');
            $('#hot').load('${pageContext.request.contextPath }/jsp/hot.jsp');
            $('#video').load('${pageContext.request.contextPath }/jsp/video.jsp');
            $('#release').load('${pageContext.request.contextPath }/jsp/release.jsp');
        });
        $(function(){
            if(document.body.scrollTop>0){
                console.log(1);
                window.scrollTo(0,-1);
                document.body.scrollTop=0;
            }
            window.scrollTo(0,-1);
            document.body.scrollTop=0;
        });
    </script>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resource/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resource/css/YCComm.min.css">
    <script src="${pageContext.request.contextPath }/resource/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/resource/js/jquery-3.3.1.min.js"></script>
    <title></title>

    
</head>
<body>
<div class="Tab-top">
<div  class="top">
     <img src="${pageContext.request.contextPath }/resource/image/logo.png" width="130px" height="25px" >
    <div class="opeIcon">
    <a class="msg" href="msg.html"><img src="${pageContext.request.contextPath }/resource/image/msg.png" height="25px" ></a>
    <a id="search_icon" href="search.html"><img src="${pageContext.request.contextPath }/resource/image/lupita.png" height="25px" ></a>
    </div>
</div>
    <ul class="nav nav-tabs" id="myTab">
        <li><a href="#focus">关注</a></li>
        <li><a href="#video">视频</a></li>
        <li class="active"><a href="#recommend">推荐</a></li>
        <li><a href="#hot">热榜</a></li>
        <li><a href="#release">发布</a></li>
    </ul>
</div>

<div class="Tab-content">
<div id="recommend"  class="show"></div>
<div id="focus"></div>
<div id="hot" ></div>
<div id="video" ></div>
<div id="release"></div>
</div>
</body>
</html>
