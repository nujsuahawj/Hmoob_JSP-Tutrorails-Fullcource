<%-- 
    Document   : index.jsp
    Created on : Nov 9, 2020, 8:51:49 AM
    Author     : Acer
--%>
<%@page import="nuj.Nas"%>
<%@page import="java.util.Collections"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.Arrays" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="nujsua.css">
        <title>JSP Page</title>
        <link rel="stylesheet" href="styleadd.css">
    </head>
    <body>
<!--        <h1>Hello World!</h1>
         <%! 
           String name="nujsua";
           int age=12;
        %>
        
        Name:<%= name %><br>
        Age:<%=age %>
        <%
        out.println("</br>==========</br>");
        out.println("Age: "+age+"<br>");
        out.println("Name:"+name+"<br>");
        out.print("nujsua ua yog lawm");
        %><hr>
        
       <br>
       <h4>hau no yog 11/9/2020</h4>
        
        <%! int a=5;
        int b=10;
        int c=0;
        int d=8;
        %>
        <% c=a+b; %>
        <%= c %><br>
        <%= a<b %><br>
        <%= !(a>b) %><br>
        <% out.println((a<b)&&(b>d)); %><br>
        <% out.println((a<b)||(b>d)); %><br>
        <hr> comment 
        <p>haun nos yog hnub kuv siv ua form tawm jas</p>
<hr>
        <p>hau no yog hnub tim 16/11/2020</p>
        <%!int swit=2;%>
            <% 
                switch (swit){
                    case 1:
                        out.println("nuj1");
                        break;
                    case 2:
                        out.println("nuj2");
                        break;
                    case 3:
                        out.println("nuj3");
                        break;
                    case 4:
                        out.println("nuj4");
                        break; 
                        
                }
            %>
            <hr>
            <p>Hauv qab no yog hnub tim 23/10/2020</p>
            <form action="data.jsp" method="GET">
                <p>A:<input type="text" name="text1" value=""><br></p>
                <p>B:<input type="text" name="text2" value=""><br></p>  
                <button type="submit">Go!</button>
                
            </form>-->
<!--           <form  action="data.jsp" method="post">
                <p>Name:<input type="text" name="Name" value=""></p>
                <p>Last Name:<input type="text" name="Lane"value=""></p>
                <label><input type="radio" name="women" value="women">women</label>
                <label><input type="radio" name="women"j value="man">man </label>
                <br>
                <select name="xais">
                        <option value="python">python</option>
                        <option value="c#">c#</option>
                </select>
                <br>
                <label><input type="checkbox" value="Mean" name="option">mean</label>
                <label><input type="checkbox" value="php" name="option">php</label>
                <label><input type="checkbox" value="asp.net" name="option"> asp</label>
                
                <div>
                    <textarea name="conmen" rows="5" cols="25" value=""></textarea>
                    <p>A:<input type="text" name="text1" value="0"><br></p>
                    <p>B:<input type="text" name="text2" value="0"><br></p>
                </div>
            <button type="submit"> GO!</button>
        </form>-->




<!--<table style="width:100%">
  <tr>
      <th rowspan="">ປະເພດສິນຄ້າ</th>
      <th colspan="3">ລາຍການສິນຄ້າ</th>
    
  </tr>
  <tr>
        <td rowspan="4">ເຄື່ອງສຳອາງ</td>
        <td></td>
        <td></td>
        <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
      <td></td>
      <td></td>
    <td></td>
  </tr>
    <tr>
     <td></td>
      <td></td>
    <td></td>
  </tr>
      <tr>
          <td rowspan="4">ເຄື່ອງດື່ມ</td>
      <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
     <td></td>
      <td></td>
    <td></td>
  </tr>
  <tr>
     <td></td>
      <td></td>
    <td></td>
  </tr>
   <tr>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</table>-->

<!--                <%! int n; int ilove=2; %>
                <%
                String strn = request.getParameter("textnumber");
                if(strn !=null){
                    n =Integer.parseInt(strn);
                }
                %>
           <table width="80%" border="1" align="center"><br>

                <tr align="center">
                    <th>ລໍາດັບ</th>
                    <th>ຊື່</th>
                    <th>ນາມສະກຸນ່</th>
                    <th>ເບີໂທລະສັບ</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>nujsua</td>
                    <td>hwj</td>
                    <td>02091826096</td>
                </tr>
                <%
                    for(int i=0;i<n;i++){

               %>
                 <tr>
                       <td><%=ilove %></td>
                       <td></td>
                       <td></td>
                       <td></td>
                 </tr>

                <%
                   ilove++;
             }
                %>
            <br>
            <form align="center">
            <input type="text" name="textnumber">
            <input type="submit" name="sbm" value="enter"><br>
            </form>-->
                
    


        <% 
                 Connection connection = null;
        try {
        Class.forName("com.mysql.jdbc.Driver"); 
        connection = DriverManager.getConnection("jdbc:mysql://localhost/xyovlistiag"+
                            "?user=root && password=");
        if(connection !=null){
            out.println("zoo lawm");
        }else {
            out.println("connect tsis tau thaib");
        }
        }catch(Exception ex){
        out.println("connect tsis tau");
        ex.printStackTrace();
        }
        %>
        <%!  int s=0,s1=0,toCheckValue,smax; int khu=0,khi=0,skhu=0,skhi=0;
             int []arr={3,1,2,7,9,8,10,6,5}; %>
        
       <% 
           out.println("<p>nyob tsis zoo</p>");
        for( int i=0;i<arr.length;i++){
       out.println(arr[i]);
       s+=arr[i];
       if(arr[i]%2==0){
           khu+=1;
           skhu+=arr[i];
       }else{
           khi+=1;
           skhi+=arr[i];
           
       }
        }
        out.println("<br>");
        out.println(s);
        out.println("<br>"+khu);
         out.println("<br>"+khi);
          out.println("<br>"+skhu);
           out.println("<br>"+skhi);
       %>
       
       <% 
            for(int n :arr){
                s1+=n;
            }
            out.println("<br>"+s1+"<br>");
       %>
       
       <%! Integer[] num = { 34,54,1,2,37}; %>
       <% 
          int min = Collections.min(Arrays.asList(num));
            int max = Collections.max(Arrays.asList(num));
             out.println("array is =>");
            for( int i=0;i<num.length;i++){
            out.println(arr[i]);
            smax+=num[i];
             }
       %>
       <br>
       <%
            out.println("Minimum number of array is : "+ min+"<br>");
            out.println("Maximum number of array is : " + max);
           %>

        
           
           
           
           
           
           
       
    
            
            
        <script src="scriptadd.js"></script>
    </body>
</html>
