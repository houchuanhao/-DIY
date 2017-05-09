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
                int i=0;
                Connecter.createConnection();
                String sql="select * from Modular";
                ResultSet resultSet=Connecter.statement.executeQuery(sql);
                while(resultSet.next()) {
                    i++;
                    String id=resultSet.getString("id");
                    String dName=resultSet.getString("mName");
                    String dInt=resultSet.getString("mInt");
                    String pUrl=resultSet.getString("pUrl");
                    String mPrice=resultSet.getString("mPrice");
                    if(i%3==1){
                        out.print("<div class=\"row\">");
                    }
                    out.print("<div class=\"col-md-4\">");
                    out.print("<div class=\"thumbnail\">");
                    out.print("<img alt=\"300x200\" src=\""+pUrl+"\" />");
                    out.print("<div class=\"caption\">");
                    out.print("<h3>");
                    out.print(dName);
                    out.print("<small>");
                    out.print("价格:  "+mPrice);
                    out.print("</small>");
                    out.print("</h3>");
                    out.print("<p>");
                    out.print(dInt);
                    out.print("</p>");
                    out.print("<p>");
                    out.print("<a class=\"btn btn-primary\" href=\"doBuyModular.jsp?id="+id+"\">加入购物车</a>");
                    out.print("</p>");
                    out.print("</div>");
                    out.print("</div>");
                    out.print("</div>");
                    if(i%3==0){
                        out.print("</div>");
                    }
                }

            %>
        </div>
    </div>
</div>
</body>
</html>
