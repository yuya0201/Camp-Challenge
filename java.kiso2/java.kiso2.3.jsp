<%-- 
    Document   : newjsp
    Created on : 2016/07/14, 14:34:09
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
        //for文を利用して、8を20回掛ける処理を実現してください。
        long x =8;
        for(int i  =0;  i<20;  i++  ) 
        {   x=8*x;
            out.println(x + "<br>"); 
                             }
        
         
        
        
        
        
        
        
        
        %>
    </body>
</html>
