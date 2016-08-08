<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="jums.JumsHelper" %>
<%@page import="jums.UserDataBeans" %>
<%
    HttpSession hs = request.getSession();
    UserDataBeans java = new UserDataBeans();
    if(hs.getAttribute("udb")!=null){
        java = (UserDataBeans)hs.getAttribute("udb");
    }
            
     
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録画面</title>
    </head>
    <body>
    <form action="insertconfirm" method="POST">
        名前:
        <input type="text" name="name" value="<%= java.getname() %>">
        <br><br>

        生年月日:　
        <select name="year">
            <option value="0">----</option>
            <%
            for(int i=1950; i<=2010; i++){ %>
            <option value="<%=i%>"<%if(i==java.getyear()){out.print("selected");}%>><%=i%> </option>
            <% } %>
        </select>年
        <select name="month">
            <option value="0">--</option>
            <%
            for(int i = 1; i<=12; i++){ %>
            <option value="<%=i%>"<%if(i==java.getmonth()){out.print("selected");}%>><%=i%></option>
            <% } %>
        </select>月
        <select name="day">
            <option value="0">--</option>
            <%
            for(int i = 1; i<=31; i++){ %>
            <option value="<%=i%>" <%if(i==java.getday()){out.print("selected");}%>><%=i%></option>
            <% } %>
        </select>日
        <br><br>

        種別:
        <br>
        <input type="radio" name="type" value="1" <% if(java.gettype().equals("1")){out.print("checked"); } %>>エンジニア<br>
        <input type="radio" name="type" value="2" <% if(java.gettype().equals("2")){out.print("checked"); } %>>営業<br>
        <input type="radio" name="type" value="3" <% if(java.gettype().equals("3")){out.print("checked"); } %>>その他<br>
        <br>

        電話番号:
        <input type="text" name="tell" value="<%= java.gettell()%>">
        <br><br>

        自己紹介文
        <br>
        <textarea name="comment" rows=10 cols=50 style="resize:none" wrap="hard"><%=java.getcomment()%></textarea><br><br>
        
        <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
        <input type="submit" name="btnSubmit" value="確認画面へ">
    </form>
        <br>//課題1umsHelperクラスを利用して、全部のページにトップへのリンクが表示されるようにしなさい
        <%=JumsHelper.getInstance().home()%>
    </body>
</html>
