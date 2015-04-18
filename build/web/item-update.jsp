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
        <title>JSP Page</title>
    </head>
    <body>
       <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/member"
                           user="root"
                           password=""/>
 
        <sql:query dataSource="${dbsource}" var="result">
            SELECT * from item where listid=?;
            <sql:param value="${param.listid}" />
        </sql:query>
        
        <form action="update.jsp" method="post">
            <table border="0" width="40%">
                <caption>Update Product</caption>
                <tr>
                    <th>Product Name</th>
                    <th>Price</th>
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
            <a href="welcome.jsp">Go Home</a>
        </form>
    </body>
</html>
