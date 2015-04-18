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

        <form method="post"  action="welcome.jsp">
                 <p>Hello,<%=session.getAttribute("name")%></p>
        </form>
       <center>               
          <div class="CSS_Table_Example" style="width:600px;height:50px;">
            <table> 
                <td>
                     <a href="insert.jsp">Insert Record</a>
                     <a href="item-table.jsp">Display Record</a>
                </td>
            </table>
         </div>                   
     </center>

    </body>  
</html>
