<%-- 
    Document   : update
    Created on : 16-Apr-2015, 8:21:13 PM
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
        <sql:update dataSource="${dbsource}" var="count">
            UPDATE item SET item_name = ?, price=?
            WHERE listid='${param.listid}'
            <sql:param value="${param.item_name}" />
            <sql:param value="${param.price}" />
        </sql:update>
        <c:if test="${count>=1}">
            <font size="5" color='green'> Congratulations ! Data updated
            successfully.</font>
              <a href="welcome.jsp">Go Home</a>          
        </c:if>
              
         <form method="post"  action="login.jsp">
            <input type="submit" id="logout" name="Logout" value="Logout">
        </form>     
    </body>
</html>
