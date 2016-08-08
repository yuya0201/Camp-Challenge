<%-- 
    Document   : dbaccess12
    Created on : 2016/08/04, 12:10:23
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
       <form action = "dbaccess12" method ="post">
           名前:<input type="text" name="name" ><br>
           年齢:<input type="text" name="age" ><br>
               <input type="text" name="year" >年
               <input type="text" name="month" >月
               <input type="text" name="day" >日<br>
            <input type="submit" name="submit" value="検索"> 
       </form>
    </body>
</html>
