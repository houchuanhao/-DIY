<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.Diy" %>
<%@ page import="com.Modular" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016-12-08
  Time: 20:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>发布你的DIY</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <!-- jQuery (necessary JavaScript plugins) -->
    <!-- Custom Theme files -->
    <link href='css/font.css' rel='stylesheet' type='text/css'>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
    <script type="text/javascript" src="js/av-min-1.2.1.js"></script>
    <link href="css/hightlight.css" rel="stylesheet" type="text/css">
    <script src="js/highlight.min.js"></script>
    <!-- Custom Theme files -->
    <!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Title</title>
    <script>
        var APP_ID = 'nrQJolPEqzOK1qEKJM1feLON-9Nh9j0Va';

        // 应用 Key，用来校验权限（Web 端可以配置安全域名来保护数据安全）
        var APP_KEY = '7mpFcX7pBvw2gL4rmcJ81H3r';

        // 初始化
        AV.init({
            appId: APP_ID,
            appKey: APP_KEY
        });
        var url;
        function pictureChange() {
            var fileUploadControl = $('#dPicture')[0];
            if (fileUploadControl.files.length > 0) {
                var localFile = fileUploadControl.files[0];
                var name = 'avatar.jpg';
                var file = new AV.File(name, localFile);
                file.save().then(function(file) {
                    // 文件保存成功
                    console.log(file.url());
                    $("#inputImage").attr("src",file.url());
                    url=file.url();
                    //post(file.url());
                }, function(error) {
                    // 异常处理
                    console.error(error);
                });
            }
        }
        function post(pUrl){  //Url是图片地址
            var dName=$("#dName").val();
            var dInt=$("#dInt").val();
            var id=$("#divId").html();
            var pUrl=$("#inputImage").attr("src");
            var mPrice=$("#dPrice").val();
           // alert(dName);
            //alert(); alert(dInt); alert(id); alert(pUrl); alert(mPrice);
            $.ajax({
                type: 'POST',
                url: 'doUpdateModular.jsp',
                async:true,
                data: {mName:dName,mInt:dInt,pUrl:pUrl,id:id,mPrice:mPrice},
                success: function (data) {
                    alert("保存成功");
                    console.log(data);
                },
                // dataType: 'json'
            });
        }
        function show(){
            var user = AV.User.current();
            if(!user){  //user为空
                alert("请先登录");
                return;
            }
            post(url);
        }
    </script>
</head>
<%
    request.setCharacterEncoding("utf-8");
    String id=request.getParameter("id");
    Modular modular=null;
    if(id!=null) {
        modular = new Modular(id);
    }
%>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    编辑模块 ing <small >模块 id:<span id="divId"><%=id%></span></small>
                </h1>
            </div>
            <form role="form">
                <div class="form-group" id="DiyName">
                    <label >模块名称</label><input type="text" class="form-control" id="dName" value="<%=modular.mName%>" />
                </div>
                <div class="form-group" id="DiyName1">
                    <label >模块价格</label><input type="text" class="form-control" id="dPrice" value="<%=modular.mPrice%>" />
                </div>
                <div class="form-group">
                    <label>模块简介</label>
                    <textarea class="form-control" id="dInt"><%=modular.mInt%></textarea>
                </div>
                <div class="form-group">
                    <label >上传图片</label><input type="file" id="dPicture" required="required" onchange="pictureChange()" />
                    <img src="<%=modular.pUrl%>" id="inputImage">
                </div>
            </form>
            <button  class="btn btn-default btn-success" onclick="show()">保存</button>
            <a href="updateModular.jsp">
                <button  class="btn btn-default btn-success" >返回</button>
            </a>
        </div>
    </div>
</div>

<script>
    hljs.initHighlightingOnLoad();
    //名称  DIY简介 上传图片 添加模块  代码
    var width=$(document.body).outerWidth(true);
    var height=$(document.body).outerWidth(true);
    //alert(width);
    if(width>400){
        $("#DiyName").width(300);
        $("#DiyName1").width(300);
    }
    $("#dInt").height(height/6);
    $("#dCode").height(height/6);
</script>
</body>
</html>
