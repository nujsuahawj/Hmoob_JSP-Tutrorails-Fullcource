<%-- 
    Document   : conect
    Created on : Jan 4, 2021, 8:57:23 AM
    Author     : Acer
--%>


<%@page import="Model.Modlenuj"%>
<%@page import="nuj.Nas"%>
<%@page import="java.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSPPage</title>
    </head>
            <%!
                 Connection c = Nas.getConnect();
                 
            %>
    <body>
        <% 
            if(c !=null){
                out.println("tiav lawm");
            }else{
                out.println("tsis tiav");
            }
        %>
        
        <form>
            <% 
                Modlenuj mb = new Modlenuj(c);
                
                ResultSet rs = mb.selectAllData();
               

            %>
            
            <table width="100%" border="1">
                <th border="0">
                    <tr border="0">
                        <td border="0"><div align="center">name</div></td>
                         <td><div align="center">email</div></td>
                         <td><div align="center">password</div></td>
                         <td><div align="center">delete</div></td>
                    </tr>     
                </th>
                 <%
                     
                    while((rs!=null) && (rs.next())){%>
                    <tr>
                        <td><%= rs.getString("name_lasname") %></td>
                        <td><%=rs.getString("email") %></td>
                        <td><%=rs.getString("password") %></td>
                        <td><a href='delete.js?id= <%= rs.getString("password") %> '>dlete</a></td>
                    </tr>
                     <% } rs.close();%>
            </table>
            

        </form>
            <br><br>
            
            

 
       

        
    </body>
</html>

