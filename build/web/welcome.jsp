<%-- 
    Document   : welcome
    Created on : 15-Apr-2015, 3:48:23 PM
    Author     : c0644689
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="table.css" type="text/css"/>
        <title>Welcome <%=session.getAttribute("name")%></title>  
        <style>
            body {
                background-image: url("money-manager-banner.jpg");
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
            #jit{
                color:darkturquoise;
                margin-top: 100px;
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

        <form method="post"  action="welcome.jsp">
                 <p id="jit"><font size="10">Welcome,<%=session.getAttribute("name")%></font></p>
        </form>
             
          
           
        <p id="jit"><a href="insert.jsp" style="background-color: blue"><font color="darkturquoise">Click Here to Store your Expenses and Price Here!</font></a></p>
        <p id="jit"><a href="item-table.jsp" style="background-color: blue"><font color="darkturquoise">Click Here to view your Data</font></a></p>
             
                        
   

    </body>  
</html>
