<%-- 
    Document   : dbaccess09
    Created on : 2016/08/03, 17:02:17
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
        <form action = "dbaccess9" method ="post">
   プロフィールID:<input type="text" name="profilesID01" ><br>
           名前:<input type="text" name="name01" ><br>
        電話番号:<input type="text" name="tell01" ><br>
           年齢:<input type="text" name="age01" ><br>
               <input type="text" name="year" >年
               <input type="text" name="month" >月
               <input type="text" name="day" >日<br>
            <input type="submit" name="submit" value="挿入"> 
        </form>
    </body>
</html>
