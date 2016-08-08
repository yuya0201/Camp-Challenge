<%-- 
    Document   : dbaccess11
    Created on : 2016/08/04, 11:34:46
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
        <form action = "dbaccess11" method ="post">
               <input type="search" name="profilesID" placeholder="profilesID検索">
           名前:<input type="text" name="name" ><br>
        電話番号:<input type="text" name="tell" ><br>
           年齢:<input type="text" name="age" ><br>
               <input type="text" name="year" >年
               <input type="text" name="month" >月
               <input type="text" name="day" >日<br>
            <input type="submit" name="submit" value="上書き"> 
        </form>
    </body>
</html>
