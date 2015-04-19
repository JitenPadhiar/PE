<%-- 
    Document   : insert
    Created on : 16-Apr-2015, 8:45:42 PM
    Author     : c0644689
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="table.css" type="text/css" />
        <title>Personal Expense Manager</title>
        <style>
            body{
                 background-image:url("canada_day_1.gif");
            }
            #add{
                margin-top: 10px;
                margin-left: 550px;
            }
            #logout{
                margin-left: 1000px; 
                margin-top: 50px;
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
                background-color:red;
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
         <form action="item-add.jsp" method="post">
          <div class="CSS_Table_Example" style="width:600px;height:250px;">
             <table>
                
                    <tr>
                        <td colspan="2">Store your Information</td>
                    </tr>
               
               
                    <tr>
                        <td>Item Name</td>
                        <td><input type="text" name="item_name"/></td>
                    </tr>
                    <tr>
                        <td>Item Price</td>
                        <td><input type="text" name="price"/></td>
                    </tr>
                    <tr>
                   
                        <td colspan="2">
                            <input type="submit" value="ADD"/>
                            <input type="reset" value="RESET"/>
                        </td>
                    
                    </tr>
               
            </table>
              </div>
        </form>
       
        <font size="6px" color="#800000"><c:if test="${not empty param.errMsg}"></br>
            <c:out value="${param.errMsg}" /></br></br>
            <a href="welcome.jsp">Go Back</a>
        </c:if></font>
       
       
    </center>     
                
    </body>
</html>
