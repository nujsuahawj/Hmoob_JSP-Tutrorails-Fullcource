<%-- 
    Document   : update
    Created on : Jan 27, 2021, 5:09:56 PM
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
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
           try {
               Class.forName("com.mysql.jdbc.Driver");
               connect = DriverManager.getConnection("jdbc:mysql://localhost/jsp"
               + "?user=root&password=");
               s = connect.createStatement();
               String sql = "UPDATE js "
                       + "set name='"+name+"', email='"+email+"', password='"+password+"'"
                       + " where id = '"+id+"' ";
               s.execute(sql);
               rec =s.executeQuery(sql);
               
           }catch (Exception e){
           out.println(e.getMessage());
           e.printStackTrace();
           }
           %>
    <script type='text/javascript'>
    alert('tiav lawm');
    window.location = 'connect.jsp';
    </script>
        
        
    </body>
</html>
