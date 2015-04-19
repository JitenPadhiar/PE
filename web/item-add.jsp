<%-- 
    Document   : item-add
    Created on : 15-Apr-2015, 8:15:04 PM
    Author     : c0644689
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Personal Expense Manager</title>

    </head>
    <body>

    <c:if test="${ empty param.item_name or empty param.price}">
        <c:redirect url="insert.jsp" >
            <c:param name="errMsg" value="Please Fill Every Data." />
        </c:redirect>

    </c:if>

    <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                       url="jdbc:mysql://localhost/member"
                       user="root" 
                       password=""/>


    <sql:update dataSource="${dbsource}" var="result">
        
        INSERT INTO item(item_name,price,total) VALUES (?,?,?);
        <sql:param value="${param.item_name}" />
        <sql:param value="${param.price}" />
        <sql:param value="${param.total}" />

      
    </sql:update>
  
    <c:if test="${result>=1}">
        <font size="5" color='#FFFF00'>Data inserted successfully.</font>

        <c:redirect url="insert.jsp" >
            <c:param name="susMsg" value=" Data inserted successfully." />
        </c:redirect>
    </c:if> 

</body>
</html>
