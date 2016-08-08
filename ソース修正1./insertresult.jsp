<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="jums.UserDataBeans" %>

<%
    
    /*課題3フォームから受け取ったデータ自体を格納できるJavaBeans(UserDataBeans.java)を作成し
     これを利用して表示や分岐などをさせなさい(UserDataDTO.javaはデータベース用のJavaBeansなので微妙に違うものです)*/
    
    //7.適切なタイミングでセッションがクリアになるようにしなさい
    HttpSession hs = request.getSession();
    UserDataBeans java = (UserDataBeans)request.getAttribute("udb");
    
     
 

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="jums.JumsHelper" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録結果画面</title>
    </head>
    <body>
        <h1>登録結果</h1><br>
        
        名前:<%= java.getname()  %><br>
        生年月日:<%= java.getyear()+"年"+java.getmonth()+"月"+java.getday()+"日"%><br>
        種別:<%=  java.gettype()%><br>
        電話番号:<%= java.gettell()%><br>
        自己紹介:<%= java.getcomment()%><br>
        以上の内容で登録しました。<br>
         <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
         <%=JumsHelper.getInstance().home()%>
    </body>
</html>
