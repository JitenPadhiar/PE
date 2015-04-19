<%-- 
    Document   : reg
    Created on : 15-Apr-2015, 3:46:58 PM
    Author     : c0644689
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="table.css" type="text/css" />
        <title>Personal Expense Manager</title>
    </head>
    <body>
    <center>
        <div class="CSS_Table_Example" style="width:600px;height:300px;"> 

            <form method="post" action="registration.jsp">

                <table>

                    <tr>
                        <td colspan="2">Enter Information</td>
                    </tr>


                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="firstname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lastname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" value="" required=""/></td>
                    </tr>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="username" value="" required=""/></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" value="" required=""/></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" value="Submit"/>
                            <input type="reset" value="Reset" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">Already registered!! <a href="login.jsp">Login From Here</a></td>
                    </tr>

                </table>

            </form>
        </div></center>
</body>
</html>
