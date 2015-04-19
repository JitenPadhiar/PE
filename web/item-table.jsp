<%-- 
    Document   : item-table
    Created on : 16-Apr-2015, 6:03:42 PM
    Author     : c0644689
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<link rel="stylesheet" href="table.css" type="text/css" />                          <!--Reference::http://www.tutorialspoint.com/jsp/jstl_function_length.htm//-->
<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Personal Expense Manager</title>
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
        <script>
            function confirmGo(m, u) {
                if (confirm(m)) {
                    window.location = u;
                }
            }

        </script>

    </head>
    <body>
        <ul>
            <li><a href="welcome.jsp">Home</a></li>
            <li><a href="login.jsp">Login</a></li>
            <li><a href="item-table.jsp">View Record</a></li>
            <li><a href="logout.jsp">Logout</a></li>
        </ul>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/member"
                           user="root" 
                           password=""/>


        <sql:query dataSource="${dbsource}" var="result">
            SELECT * FROM item 
            union all
            SELECT listid,item_name,price,SUM(price) as "total"
            FROM item;
        </sql:query>


    <center>
        <form>
            <div class="CSS_Table_Example" style="width:500px;height:400px;">
                <table>
                    <tr> <td colspan="6">Product List</td> </tr>
                    <tr>
                        <td>ListId</td>
                        <td>Item_Name</td>
                        <td>Price</td>
                        <td> Total </td>
                        <td colspan="5">Action</td>
                
                    </tr>
                    
                        
                    <c:forEach var="row" items="${result.rows}">
                        <tr>
                            <td><c:out value="${row.listid}"/></td>
                            <td><c:out value="${row.item_name}"/></td>
                            <td><c:out value="${row.price}"/></td>
                            <td><c:out value="${row.total}"/></td>
                            <td><a href="item-update.jsp?listid=<c:out value="${row.listid}"/>">Update</a>
                                <a href="javascript:confirmGo('Sure to delete this record?','item-delete.jsp?listid=<c:out value="${row.listid}"/>')">Delete</a>
                            </td>

                        </tr>
                    </c:forEach>
                  
                </table>
            </div>


        </form>
        </br><a href="welcome.jsp">Go Home</a>
    </center>

</body>
</html>
