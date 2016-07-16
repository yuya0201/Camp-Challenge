<%-- 
    Document   : newjsp
    Created on : 2016/07/14, 17:58:49
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
        //for文を利用して、0から100を全部足す処理を実現してください。
        int x = 0;
        int y = 0;
        
        
        for(int i = 0; i<101; i++ ){
              x =  x + 1;
              y =  x + y;
              
              out.println(y);
        }
             

        
        
        
        
        
        
        
        %>
    </body>
</html>
