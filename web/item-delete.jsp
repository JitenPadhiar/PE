<%-- 
    Document   : item-delete
    Created on : 16-Apr-2015, 8:17:43 PM
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
        <title>Personal Expense Manager</title>
    </head>
    <body>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/member"
                           user="root"  
                           password=""/>
        <sql:update dataSource="${dbsource}" var="count">
            DELETE FROM item
            WHERE listid='${param.listid}'
        </sql:update>
        <c:if test="${count>=1}">
            <font size="5" color='green'> Congratulations ! Data deleted
            successfully.</font>
              <a href="welcome.jsp">Go Home</a>          
        </c:if>
    </body>
</html>
