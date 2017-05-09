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

               // Connecter.createConnection();
                response.setCharacterEncoding("utf-8");
                response.setContentType("text/html;charset=UTF-8");
                request.setCharacterEncoding("utf-8");
                String myid=request.getParameter("id");
                String userName=request.getParameter("UserName");
                int i=0;
                String delSql = "delete from Diy where id='" + myid + "'";
                Connecter.statement.executeUpdate(delSql);
               // out.print(delSql);
                String sql="select * from diy where UserName='"+userName+"'";
                ResultSet resultSet=Connecter.statement.executeQuery(sql);
                while(resultSet.next()) {
                    i++;
                    String id=resultSet.getString("id");
                    String dName=resultSet.getString("dName");
                    String dInt=resultSet.getString("dInt");
                    String pUrl=resultSet.getString("pUrl");
                    if(i%3==1){
                        out.print("<div class=\"row\">");
                    }
                    out.print("<div class=\"col-md-4\">");
                    out.print("<div class=\"thumbnail\">");
                    out.print("<img alt=\"300x200\" src=\""+pUrl+"\" />");
                    out.print("<div class=\"caption\">");
                    out.print("<h3>");
                    //out.print(delSql);
                    out.print(dName);
                    out.print("</h3>");
                    out.print("<p>");
                    out.print(dInt);
                    out.print("</p>");
                    out.print("<p>"); //onClick="del()"
                    out.print("<a class=\"btn btn-primary\" href=\"showDiy.jsp?id="+id+"\">查看</a>");
                    out.print("<a class=\"btn btn-primary\" href=\"updateDiy.jsp?id="+id+"\">编辑</a>");
                    out.print("<a class=\"btn btn-primary\" href=\"delDiy.jsp?id="+id+"?name="+userName+"\">删除</a>");
                  //  out.print(userName);
                    out.print("</p>");
                    out.print("</div>");
                    out.print("</div>");
                    out.print("</div>");
                    if(i%3==0){
                        out.print("</div>");
                    }
                }

            %>
            <a id="back"><button class="btn btn-info btn-default btn-block">返回</button></a>
        </div>
    </div>
</div>




<div class="modal fade" id="modal-container-227560" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">
                    消息
                </h4>
            </div>
            <div class="modal-body">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default btn-block" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
<script>
    $("#back").attr("href",document.referrer);
    //alert(document.referrer);
</script>
</body>
</html>
