<%-- 
    Document   : newjsp
    Created on : 2016/07/14, 13:18:30
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
            
           /*
             １．switch文を利用して、以下の処理を実現してください。
　　　          　値が1なら「one」、値が2なら「two」、それ以外は「想定外」と表示する処理。 */ 
          
           int num =2;
           String message =" ";
           switch(num){
           case 1: 
                   message = "one";
                   break;
           case 2:
                   message = "two";
                   break;
           default:
                   message ="想定外";
                   break;  
           }
           out.println(message);        
                   
                   
                   
                   
                   
           





            
            
            %>
                
                
                
                
    </body>
</html>
