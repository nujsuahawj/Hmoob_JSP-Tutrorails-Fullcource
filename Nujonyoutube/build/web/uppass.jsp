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
            String name = request.getParameter("name");
            String oldpass = request.getParameter("oldpass");
            String newpass = request.getParameter("newpass");
            String compass = request.getParameter("compass");
            if(compass != newpass ){
                     
                try {
                            Class.forName("com.mysql.jdbc.Driver");
                            connect = DriverManager.getConnection("jdbc:mysql://localhost/jsp"
                            + "?user=root&password=");
                            s = connect.createStatement();
                            String sql = "UPDATE js1 "
                                    + "set pasword='"+newpass+"'"
                                    + " where pasword = '"+oldpass+"' and username='"+name+" ' ";
                            if(oldpass != null){
                                    out.println("updated");
                                }else { 
                                    out.println("you not have acout");}
                           s.execute(sql);
                            rec =s.executeQuery(sql);

                        }catch (Exception e){
                        out.println(e.getMessage());
                        e.printStackTrace();
                        }
                
                }else{
                
                out.println("ການຢືນຢັນລະຫັດຂອງທ່ານບໍ່ຖືກຕ້ອງ");
               
                }

           %>   
    </body>
</html>
