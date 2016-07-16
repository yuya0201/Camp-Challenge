<%-- 
    Document   : newjsp
    Created on : 2016/07/13, 14:39:34
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
         /*４．定数と変数を宣言し、それぞれに数値を入れて四則演算を行ってください。
           ５．四則演算の結果をそれぞれ表示してください。*/

          int a = 1;
          final int b = 10;
          
          out.println(a-b);
          out.println(a+b);
          out.println(a*b);
          out.println(a/b);
          out.println(a%b);
          
          %>
    </body>
</html>
