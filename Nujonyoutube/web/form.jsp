<%-- 
    Document   : form
    Created on : Jan 27, 2021, 3:19:22 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="POST" action="insert.jsp">
        <table width="100%">
            <tr>
                <th>Name:</th>
                <th><input type="text" name="name"/></th>
            </tr>
            <tr>
                <th>email:</th>
                <th><input type="email" name="email"/></th>
            </tr>
            <tr>
                <th>Passowrd:</th>
                <th><input type="text" name="password"/></th>
            </tr>
            <tr>
                <th></th>
                <th><div align="left"><button type="submit"> insert</button></div></th>
            </tr>
        </table>
    </form>
    </body>
</html>
