<%@ page import="com.Connecter" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016-12-07
  Time: 3:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!----------下面是Intercooler.js的文件包-----
    <script type="text/javascript" src="js/intercooler.js"></script>-->
    <meta charset="UTF-8">
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
    <style>
        body{
            background-color: #2d2d2d;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <%

                Connecter.createConnection();
                String delId=request.getParameter("id");
                String delSql="delete from Diy where id='"+delId+"'";
                Connecter.statement.executeUpdate(delSql);
                String userName=request.getParameter("name");
                response.sendRedirect("frame0.jsp");

            %>
        </div>
    </div>
</div>
</body>
</html>
