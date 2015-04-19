<%-- 
    Document   : item-update
    Created on : 16-Apr-2015, 8:17:31 PM
    Author     : c0644689
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="table.css" type="text/css" />  
        <title>JSP Page</title>
        <style>
            body {
                background-image:url("BackgroundTULIP.jpg");
            }

            ul
            {
                list-style-type:none;
                margin:0;
                padding:0;
                padding-top:6px;
                padding-bottom:6px;
            }
            li
            {
                display:inline;
            }
            a:link,a:visited
            {
                font-weight:bold;
                color:#FFFFFF;
                background-color:#98bf21;
                text-align:center;
                padding:6px;
                text-decoration:none;
                text-transform:uppercase;
            }
            a:hover,a:active
            {
                background-color:#7A991A;
            }

        </style>
    </head>
    <body>
        <ul>
            <li><a href="welcome.jsp">Home</a></li>
            <li><a href="login.jsp">Login</a></li>
            <li><a href="item-table.jsp">View Record</a></li>
            <li><a href="logout.jsp">Logout</a></li>
        </ul>
    <center>  
        <div class="CSS_Table_Example" style="width:600px;height:120px;">
            <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                               url="jdbc:mysql://localhost/member"
                               user="root"
                               password=""/>

            <sql:query dataSource="${dbsource}" var="result">
                SELECT * from item where listid=?;
                <sql:param value="${param.listid}" />
            </sql:query>

            <form action="update.jsp" method="post">
                <table>
                    <tr> <td colspan="3">Update Product</td></tr>
                    <tr>
                        <td>Product Name</td>
                        <td >Price</td>
                        <td colspan="3">Action</td>
                    </tr>
                    <c:forEach var="row" items="${result.rows}">
                        <tr>
                            <td><input type="hidden" value="${param.listid}" name="listid"/>
                                <input type="text" value="${row.item_name}" name="item_name"/></td>
                            <td><input type="text" value="${row.price}" name="price"/></td>
                            <td><input type="submit" value="Update"/></td>
                        </tr>
                    </c:forEach>

                </table>
                </br </br></br></br>
                <a href="item-table.jsp">Click to View Upadated Table</a> 
            </form>
        </div>
    </center>
</body>
</html>
