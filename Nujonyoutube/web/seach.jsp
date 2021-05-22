<%-- 
    Document   : connect
    Created on : Jan 27, 2021, 1:20:40 PM
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
               String sql = "SELECT * FROM js where name LIKE '%"+id+"%' ";
               rec = s.executeQuery(sql);
                if(connect != null){
                    out.println("connect lawm os ua tsaug");
                }else { 
                    out.println("conect tsis tau");}
           }catch (Exception e){
           out.println(e.getMessage());
           e.printStackTrace();
           }
           %>
           <table width="100%" border="1">
               <tr>
                   <th> <div align="center">id</div> </th>
                   <th> <div align="center">name</div> </th>
                   <th> <div align="center">email</div> </th>
                   <th> <div align="center">password</div> </th>
                   <th> <div align="center">delete</div> </th>
                   <th > <div align="center">update</div> </th>
<!--                   <th> <div align="center">insert</div> </th>-->
               </tr>
               <% while((rec !=null) && (rec.next())){ %>
               <tr>
                   <td><%= rec.getString("id") %></td>
                   <td><%= rec.getString("name") %></td>
                    <td><%=rec.getString("email") %></td>
                    <td><%=rec.getString("password") %></td>
                    <td><a href="delete.jsp?id= <%=rec.getString("id") %> ">delete</a></td>
                    <td><a href="formup.jsp?id= <%=rec.getString("id") %> ">update</a></td>
<!--                    <td><a href="form.jsp">insert</a></td>-->
               </tr>
               <% } %>
           </table>
           
           <br><br><br>
           <button><a href="form.jsp">insert</a></button>
           <br><br>
           
           <form method="GET" action="seach.jsp">
                <table>
                    <tr>
                        <th>Name:</th> <th><input type="text" name="id"/></th>
                        <th><button type="submit">Seach</button></th>
                    </tr>
                </table>
            </form>
    </body>
</html>
