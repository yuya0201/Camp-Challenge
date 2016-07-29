<%-- 
    Document   : datasousa.ouyou2
    Created on : 2016/07/29, 17:06:51
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
        <form action="datasousa.ouyou02.jsp" method="post" >
         名前 <input  type="text" name="namae"><br>
       電話番号<input type="tel" name="tel" size="12" maxlength="20"><br>
 メールアドレス:<input type="email" name="email" size="30" maxlength="40"><br>
         数値 <input type="number" name="number"><br>
             <input type="submit" value="送信する">
         
            
        
        </form>
    </body>
</html>
