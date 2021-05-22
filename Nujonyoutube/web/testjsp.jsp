<%-- 
    Document   : testjsp
    Created on : Feb 1, 2021, 8:51:32 AM
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
        
        <form method="POST" action="uppass.jsp">
            <table width="100%">
                <tr>
                    <th>ຊື່ຜູ້ໃຊ້</th>
                    <th><input type="text" name="name"/></th>
                </tr>
                <tr> 
                    <th>ລະຫັດປ່ານເກົ່າ</th>
                    <th><input type="text" name="oldpass"/></th>
                </tr>
                <tr>
                    <th>ລະຫັດໃໝ່</th>
                    <th><input type="text" name="newpass"/></th>
                </tr>
                 <tr>
                    <th>ຢືນຢັນລະຫັດໃໝ່</th>
                    <th><input type="text" name="compass"/></th>
                </tr>

                <tr>
                    <td><div align="right"><button type="submit"> ok</button></div></td>
                    <td><div align="left"><button type="reset"> cancal</button></div></td>

                </tr>
            </table>
        </form>
    </body>
</html>
