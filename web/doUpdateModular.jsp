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
<%--
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
    //Connecter.createConnection();
    response.setCharacterEncoding("utf-8");
    response.setContentType("text/html;charset=UTF-8");
    request.setCharacterEncoding("utf-8");
    String pUrl=request.getParameter("pUrl"); //
    String mName=request.getParameter("mName");
    String mPrice=request.getParameter("mPrice");
    String mInt=request.getParameter("mInt");
    String id=request.getParameter("id");
    // String sql="insert into DIY(pUrl,dName,UserName,dInt,dCode) values('"+pUrl+"','"+ dName+"','"+UserName +"','"+ dInt+"','"+dCode +"')";
    String sql="update Modular set pUrl='"+pUrl+"',mName='"+mName+"',mPrice='"+mPrice+"',mInt='+"+mInt+"' where id='"+id+"'";
    //System.out.println(sql);
    out.print("sql");
    int n=Connecter.statement.executeUpdate(sql);
%>
</body>
</html>

</body>
</html>
