<%-- 
    Document   : logout
    Created on : 15-Apr-2015, 3:52:09 PM
    Author     : c0644689
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Personal Expense Manager</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            session.setAttribute("userid", null);
            session.invalidate();
            response.sendRedirect("login.jsp");
        %>
    </body>
</html>
