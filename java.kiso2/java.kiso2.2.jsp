<%-- 
    Document   : newjsp
    Created on : 2016/07/14, 13:54:50
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
        /*switch文を利用して、以下の処理を実現してください。
　　　　値が"A"なら「英語」、値が"あ"なら「日本語」、それ以外は何も表示しない処理 */
            
            
         char A = 'あ';
         String message = "";
         switch(A){
         case 'A' :
                  message = "英語";
                  break;
         case 'あ':
                  message = "日本語";
                  break;
         default:
                  message = "";
                  break;
                  
         }
         out.println(message);
             
             
             
         
        
        
        
        
        
        
        
        
        %>
    </body>
</html>
