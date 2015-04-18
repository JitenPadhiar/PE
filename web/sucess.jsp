<%-- 
    Document   : sucess
    Created on : 15-Apr-2015, 3:49:37 PM
    Author     : c0644689
--%>

<%@page import ="java.sql.*" %>
<%@page import ="java.io.IOException" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@page import="java.io.*"%>
<html> 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Check</title> 
    </head> 
    <body> 
        <%
            if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
        %>
        You are not logged in<br/>
        <a href="login.jsp">Please Login</a>
        <%} else {
        %>
        Welcome <%=session.getAttribute("userid")%>
        <a href='logout.jsp'>Log out</a>
        <%
            }
        %>
    </body> 
</html>