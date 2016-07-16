<%-- 
    Document   : newjsp
    Created on : 2016/07/13, 14:40:34
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
           /* 変数を宣言し、その変数の中身によって以下の表示を行ってください。
　　　         ⇒値が 1 なら「１です！」
　　　         ⇒値が 2 なら「プログラミングキャンプ！」
　　　         ⇒それ以外なら「その他です！」*/      
          int  param = 2; 
          
          if(param==1){    
           out.println("1です"); 
          } else if (param==2){
              
          out.println("プログラミングキャンプ");
          
          } else{
            out.println("その他です");
          }
          
         
         
         %>
            
    </body>
</html>
