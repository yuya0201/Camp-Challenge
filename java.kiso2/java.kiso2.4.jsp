<%-- 
    Document   : newjsp
    Created on : 2016/07/14, 16:48:54
    Author     : yuya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        //for文を利用して、"A"を30個連結する処理を実現してください。
         String  message ="A";
         
         
         for(int i = 0; i<30; i++ ){
             message = message + "A";   
         }
        out.println(message);
        
        
        
        %>
    </body>
</html>
