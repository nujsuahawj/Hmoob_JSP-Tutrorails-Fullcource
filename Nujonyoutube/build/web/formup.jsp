<%-- 
    Document   : formup
    Created on : Jan 27, 2021, 5:11:36 PM
    Author     : Acer
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <% Connection connect = null;
            ResultSet rec =null;
            Statement s =null;
            String id = request.getParameter("id");
           try {
               Class.forName("com.mysql.jdbc.Driver");
               connect = DriverManager.getConnection("jdbc:mysql://localhost/jsp"
               + "?user=root&password=");
               s = connect.createStatement();
               String sql = "SELECT * FROM js where id = '"+id+"' ";
              s.execute(sql);
               rec =s.executeQuery(sql);
               
           }catch (Exception e){
           out.println(e.getMessage());
           e.printStackTrace();
           }
           %>
           
    <form method="POST" action="update.jsp ">
        <% while((rec !=null) && (rec.next())){ %>
        <table width="100%">
            <tr>
                <th>YOUR ID IS:</th>
                <th> <input type="text" name="id" value="<%= rec.getString("id") %>"/> </th>
            </tr>
            <tr>
                <th>Name:</th>
                <th> <input type="text" name="name" value="<%= rec.getString("name") %>"/> </th>
                
            </tr>
            <tr>
                <th>email:</th>
                <th><input type="email" name="email" value="<%=rec.getString("email") %>" /></th>
            </tr>
            <tr>
                <th>Passowrd:</th>
                <th><input type="text" name="password" value="<%=rec.getString("password") %>"/></th>
            </tr>
            <tr>
                <th></th>
                <th><div align="left"><button type="submit"> update</button></div></th>
            </tr>
        </table>
            <% } %>
    </form>
    </body>
</html>
