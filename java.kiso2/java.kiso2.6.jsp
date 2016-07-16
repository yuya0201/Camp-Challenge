<%-- 
    Document   : newjsp
    Created on : 2016/07/15, 11:11:44
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
       /*while文を利用して、以下の処理を実現してください。
　　　　1000を2で割り続け、100より小さくなったらループを抜ける処理*/
      
       
        int y =2;
        int x = 1000;
       
      do {
           x = x/y ;
           
           out.print(x);
                         }
      
        while(x>125);

      
      
      
      
      %>

    </body>
</html>
