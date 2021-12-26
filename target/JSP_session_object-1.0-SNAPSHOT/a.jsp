<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  Project name(项目名称)：JSP_session_object
  Author(作者）: mao
  Author QQ：1296193245
  GitHub：https://github.com/maomao124/
  Date(创建日期)： 2021/12/26
  Time(创建时间)： 20:43
  Description(描述)： JSP session 是 javax.servlet.http.HttpSession 的实例对象，主要用来访问用户数据，记录客户的连接信息。
HTTP 协议是一种无状态的协议（即不保存连接状态的协议）。每次用户向服务器发出请求，且服务器接收请求并返回响应后，该连接就被关闭了，服务器端与客户端的连接被断开。此时，服务器端不保留连接的有关信息，要想记住客户的连接信息，就用到了 session 对象。
session 对象的常用方法如下：
session 对象的常用方法
方法	说明
void setAttribute(String name, Object value)	将参数名和参数值存放在 session 对象中
Object getAttribute(String name)	通过 name 返回获取相应的 value 值，如果 name 没有相应的 value 值，则返回 null
void removeAttribute(String name)	删除指定的 name 参数
Enumeration getAttributeNames()	获取 session 对象中存储的所有参数
long getCreationTime()	返回 session 对象创建的时间
String getId()	获取 session 对象的 ID 值
boolean isNew()	用于检查 session 对象是不是新对象，如果客户端禁用了 cookie ，则 session.isNew() 始终返回 true
void invalidate()	终止 session，即指定 session 对象失效
void setMaxInactiveInterval()	设置 session 对象的有效时间，单位：秒
int getMaxInactiveInterval()	获取 session 对象的有效时间，单位：秒
long getLastAccessedTime()	获取上次访问 session 对象的时间
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String userName = request.getParameter("username");
    String password = request.getParameter("password");
    System.out.println(userName);
    System.out.println(password);
    session.setMaxInactiveInterval(3600);
    session.setAttribute("username", userName);
    session.setAttribute("password", password);
%>
<%!SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd   HH:mm:ss");%>
<h3>
    id:
    <%=session.getId()%>
    <br>
    session有效期：
    <%=session.getMaxInactiveInterval() + "秒"%>
    <br/>
    session创建时间：
    <%=simpleDateFormat.format(new Date(session.getCreationTime()))%>
    <br/>
    上次访问时间：
    <%=simpleDateFormat.format(new Date(session.getLastAccessedTime()))%>
    <br/>
    现在时间：
    <%=simpleDateFormat.format(new Date())%>
    <br/>
    <br/>
    <a href="hello.jsp">hello.jsp</a>
</h3>
</body>
</html>
