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
    String id=request.getParameter("id"); //
    String sql="insert into shop VALUES ('"+id+"')";
    // String sql="insert into DIY(pUrl,dName,UserName,dInt,dCode) values('"+pUrl+"','"+ dName+"','"+UserName +"','"+ dInt+"','"+dCode +"')";
    //System.out.println(sql);
    int n=Connecter.statement.executeUpdate(sql);
    out.print("<script type='text/javascript'>alert('加入购物车成功');window.location.href='buyModular.jsp';</script>");

%>
</body>
</html>

</body>
</html>
