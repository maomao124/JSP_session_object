<%--
  Created by IntelliJ IDEA.
  Project name(项目名称)：JSP_session_object
  Author(作者）: mao
  Author QQ：1296193245
  GitHub：https://github.com/maomao124/
  Date(创建日期)： 2021/12/26
  Time(创建时间)： 20:55
  Description(描述)： 无
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String password = (String) session.getAttribute("password");
    String userName = (String) session.getAttribute("username");
%>
<h1>
    用户名：
    <%=userName%>
    <br/>
    密码：
    <%=password%>
</h1>
</body>
</html>
