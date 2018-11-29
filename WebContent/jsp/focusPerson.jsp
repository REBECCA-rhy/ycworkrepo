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
    <script src="${pageContext.request.contextPath }/resource/js/bootstrap.min.js"></script>


    <title></title>

</head>
<body>
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
        });
    });
    $(function(){
        $(document).ready(function(){
            var onOff=true;
            var btn=$(".btn-success");
            btn.click(function(){
                if (btn.onOff) {
                    btn.val("关注我");
                    btn.removeClass('btn-warning');
                    btn.css({"border":"none"});
                    btn.addClass('btn-success');
                    btn.onOff = false;
                } else {
                    btn.removeClass('btn-success');
                    btn.addClass('btn-warning');
                    btn.css({"border":"none"});
                    btn.val("取消关注");
                    btn.onOff = true;
                }
            });
        });
    });
</script>
<div class="focus_div">

<div class="Tab-top">
    <div  class="top">
        <img src="image/logo.png" width="130px" height="25px" >
        <div class="opeIcon">
            <a class="msg" href="msg.html"><img src="image/msg.png" height="25px" ></a>
            <a id="search_icon" href="search.html"><img src="image/lupita.png" height="25px" ></a>
        </div>
    </div>

    <ul class="nav nav-tabs" id="myTab">
        <li class="active"><a href="#focus">关注</a></li>
        <li><a href="#video">视频</a></li>
        <li><a href="#recommend">推荐</a></li>
        <li><a href="#hot">热榜</a></li>
        <li><a href="#release">发布</a></li>
    </ul>
</div>
<a href="javascript:;" onClick="javascript :history.back(-1);" style="margin-left: 10%"><img src="image/arrow-previous.png" border="0" title="返回上一页" style="margin-top: 10px"></a>
<div class="avatar" align="center" >
    <img src="image/00110.jpg" width="70px" height="70px" class="img-circle">
</div>
<div class="focusOper">
    <input type="button" class="btn btn-success" value="关注我" style="border: none"/>
</div>
<table class="table table-condensed" style="width: 80%;margin: 0 auto;text-align: center">


    <tbody>
    <tr style="padding: 10px">
        <th><span>NickName</span></th>
        <td>Bangalore</td>
    </tr>
    <tr>
        <th><span>Birthday</span></th>
        <td>1997-05-06</td>
    </tr>
    <tr>
        <th><span>Email</span></th>
        <td>156123965@163.com</td>
    </tr>
    <tr>
        <th><span>Gender</span></th>
        <td>female</td>
    </tr>
    </tbody>
</table>
<button type="button" class="btn btn-default btn-lg btn-block" style="width: 80%;margin: 20px auto;height: 40px;">他的主页</button>
</div>
</body>
</html>