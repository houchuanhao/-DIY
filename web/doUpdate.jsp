<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016-12-08
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ page import="com.Connecter" %>
<%@ page import="com.Login" %>
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
    String id=request.getParameter("id");
    String Password=request.getParameter("Password");  //+ +"','"
   // String sql="insert into DIY(pUrl,dName,UserName,dInt,dCode) values('"+pUrl+"','"+ dName+"','"+UserName +"','"+ dInt+"','"+dCode +"')";
    String sql="update Diy set pUrl='"+pUrl+"',dName='"+dName+"',UserName='"+UserName+"',dInt='+"+dInt+"',dCode='"+dCode+"' where id='"+id+"'";
    //System.out.println(sql);
    out.print("success");
    int n=Connecter.statement.executeUpdate(sql);
%>
</body>
</html>

</body>
</html>
