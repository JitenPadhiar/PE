<%-- 
    Document   : login
    Created on : 15-Apr-2015, 3:45:28 PM
    Author     : c0644689
--%>

<%@ page language ="java" import="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="table_example/table.css" type="text/css"/>
        <title>JSP Page</title>
        <style>
            body{
                background-color:darkseagreen;
            }
            tr{
                background-color:orange;
            }
            
            table,td{
                background-color:silver;
            }    
        
            </style>

    </head>
    <body>


        <form method="post"  action="LoginServlet">
            <center>
                <table border="1" width="40%"  cellpadding="2">
                    <thead>
                        <tr>
                            <th colspan="2">Login Here</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>UserName:</td>
                            <td><input type="text" name="username"  required/></td>
                        </tr>
                        <tr>
                            <td>Password:</td>
                            <td><input type="password" name="password"  required/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Login" />&nbsp;<input type="reset" value="Reset" /></td>
                            
                        </tr>
                        <tr>
                            <td></td>
                            <td> Sign Up Here!! <a href="reg.jsp">SignUp</a></td>
                        </tr>
                    </tbody>

                </table>
            </center>


        </form>
    </body>
</html>
