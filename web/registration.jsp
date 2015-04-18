<%-- 
    Document   : registration
    Created on : 15-Apr-2015, 3:46:27 PM
    Author     : c0644689
--%>

<%@page import ="java.sql.*" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
                
                String user = request.getParameter("username");    
                String pwd = request.getParameter("password");
                String fname = request.getParameter("firstname");
                String lname = request.getParameter("lastname");
                String email = request.getParameter("email");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/member","root","");
                Statement st = con.createStatement();
                ResultSet rs;
                int i = st.executeUpdate("insert into member(firstname, lastname, email, username, password, date) values ('" + fname + "','" + lname + "','" + email + "','" + user + "','" + pwd + "', CURDATE())");
                if (i > 0) {
                    session.setAttribute("userid", user);
                    response.sendRedirect("login.jsp");
                    out.print("Registration Successfull!"+"<a href='login.jsp'>Go to Login</a>");
                } else {
                    response.sendRedirect("reg.jsp");
                }
         %>
    </body>
</html>
