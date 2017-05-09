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
    //HttpServletRequest servletRequest;
    //UserName:UserName,url:Url,dName:dName,dInt:dInt,dCode:dCode,Url:Url
    response.setCharacterEncoding("utf-8");
    response.setContentType("text/html;charset=UTF-8");
    request.setCharacterEncoding("utf-8");
    String pUrl=request.getParameter("pUrl"); //
    String dName=request.getParameter("dName");
    String UserName=request.getParameter("UserName");
    String dInt=request.getParameter("dInt");
    String dCode=request.getParameter("dCode");
    String Password=request.getParameter("Password");  //+ +"','"
    out.print(request);
    String sql="insert into DIY(pUrl,dName,UserName,dInt,dCode) values('"+pUrl+"','"+ dName+"','"+UserName +"','"+ dInt+"','"+dCode +"')";
   // String sql="select * from User where username='"+UserName+"' and password='"+Password+"'";
    ResultSet resultSet=Connecter.statement.executeQuery(sql);
    out.println(sql);
    out.println(pUrl);
   // MyMail.send();
    if(resultSet.next()){ //有对象
        out.println("登陆成功");
        session.setAttribute("UserName",UserName);
    }
    else{
        out.println("登陆失败");
    }
    //response
%>
</body>
</html>
