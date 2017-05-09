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
        }
    </style>
</head>
<body>
<%
%>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
<!----------------下面------>
            <%
                String id=request.getParameter("id");
                Connecter.createConnection();
                // String UserName=request.getParameter("UserName");
                String sql="select * from diy where id ='"+id+"'";
                int i=0;
                ResultSet resultSet=Connecter.statement.executeQuery(sql);
                String dName,dInt,pUrl,dCode;
                dName="";
                dInt="";
                pUrl="";
                dCode="";
                while(resultSet.next()) {  //
                    dName=resultSet.getString("dName");
                    dInt=resultSet.getString("dInt");
                    pUrl=resultSet.getString("pUrl");
                    dCode=resultSet.getString("dCode");
                }
            %>
            <div class="page-header">
                <h1>
                    <%=dName%> <small><%=id%></small>
                </h1>
            </div>
            <div class="form-group">
                <label>DIY简介</label>
                <P><%=dInt%></P>
                <img src="<%=pUrl%>"/>
            </div>
            <div class="form-group">
                <label>代码</label>
                <pre><code class="C++"><%=dCode%></code></pre>
            </div>
        </div>
    </div>
</div>
<script>hljs.initHighlightingOnLoad();</script>
</body>
</html>
