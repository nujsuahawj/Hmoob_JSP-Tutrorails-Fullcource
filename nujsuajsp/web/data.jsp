<%-- 
    Document   : data
    Created on : Nov 12, 2020, 10:28:26 AM
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
        <p>Name Is: <%=request.getParameter("Name") %></p>
        <p>Last Name: <%=request.getParameter("Lane") %></p>
        <p>Language: <%=request.getParameter("xais") %></p>
        <p>Position: <%=request.getParameter("option") %></p>
        <p>Conmen: <%=request.getParameter("conmen") %></p>
        <% 
            int A= Integer.parseInt(request.getParameter("text1"));
            int B= Integer.parseInt(request.getParameter("text2"));
            if(A>B){
                out.println("A > B");
            }else if(A<B){
                out.println("A < B");
            }else{
                out.println("A=0 <br> B=0");
            }
//            int C =Integer.parseInt(request.getParameter("Name"));
//            int D =Integer.parseInt(request.getParameter("Lane"));
//            int E =Integer.parseInt(request.getParameter("xais"));
//            int F =Integer.parseInt(request.getParameter("option"));
//            int I =Integer.parseInt(request.getParameter("conmen"));
//            if(C<=0){
//                out.println("dont's in put Name");
//            }else if(D<=0){
//                out.println("dont's in put LastName");
//            }else if(E<=0){
//                out.println("dont's in put Language");
//            }else if(F<=0){
//                out.println("dont's in put Position");
//            }else if(I<=0){
//                out.println("dont's in put comment");
//            }else{
//                out.println("Dont's have anaything to show this page !");
//            }
            
        %>
    </body>
</html>
