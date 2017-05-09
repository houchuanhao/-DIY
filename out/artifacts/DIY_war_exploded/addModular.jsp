<%@ page import="com.Connecter" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.MyMail" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016-12-05
  Time: 23:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Connecter.createConnection();
    response.setCharacterEncoding("utf-8");
    response.setContentType("text/html;charset=UTF-8");
    request.setCharacterEncoding("utf-8");
    String pUrl=request.getParameter("pUrl"); //
    String dName=request.getParameter("dName");
    String UserName=request.getParameter("UserName");
    String dInt=request.getParameter("dInt");
    String dCode=request.getParameter("dCode");
    String dPrice=request.getParameter("dPrice");
    String Password=request.getParameter("Password");  //+ +"','"
    String sql="insert into Modular(pUrl,mName,mInt,mPrice) values('"+pUrl+"','"+ dName+"','" + dInt +"','"+dPrice+"')";
    out.println(sql);
    int n=Connecter.statement.executeUpdate(sql);
    String sqlQuery;
    sqlQuery="select * from diy";
    ResultSet resultSet=Connecter.statement.executeQuery(sqlQuery);

    while(resultSet.next()){
        String str=resultSet.getString("dName");
        out.println(str);
    }

%>
</body>
</html>
