<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="jums.UserDataBeans" %>
<%
    HttpSession hs = request.getSession();
    UserDataBeans java = (UserDataBeans)hs.getAttribute("udb");
    /*
    3. フォームから受け取ったデータ自体を格納できるJavaBeans(UserDataBeans.java)を作成し
    これを利用して表示や分岐などをさせなさい
    (UserDataDTO.javaはデータベース用のJavaBeansなので微妙に違うものです)
    
    4.insertconfirmにて、フォームの内容が未入力であっても通過してしまう場合がある。
    これを通過させないようにし、かつどの項目が不完全なのかをわかるようにしなさい
    
    5.insertconfirmからinsertへ再度入力する際に、このままではフォームに値が保持されていない
    。適切な処理を施して、再度入力の際にはフォームに値を保持したままにさせなさい
    
    */
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="jums.JumsHelper" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録確認画面</title>
    </head>
    <body>
        <% if(!java.getname().equals("")&&java.getyear()!=0&&java.getmonth()!=0&&java.getday()!=0&&java.gettype()!=null&&!java.gettell().equals("")&&!java.getcomment().equals("")){
        %>
        <h1>登録確認</h1>
        名前:<%= java.getname()%><br>
        生年月日:<%= java.getyear()+"年"+java.getmonth()+"月"+java.getday()+"日"%><br>
        種別:<%= java.gettype()%><br>
        電話番号:<%= java.gettell()%><br>
        自己紹介:<%= java.getcomment()%><br>
        上記の内容で登録します。よろしいですか？
        //課題2insertresultにて直リンク防止用の処理が存在しない。insertからinsertconfirmへの流れを参考に修正しなさい
        <form action="insertresult" method="POST">
            <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
            <input type="submit" name="yes" value="はい">
        </form>
    <% }else{           
        if(java.getname().equals("")){
              out.println("名前が未入力です");}
        if(java.getyear()==0 &&java.getmonth()==0&&java.getday()==0){
              out.println("生年月日が未入力です");}
        if(java.gettype()==null){
              out.println("種別が未入力です");}
        if(java.gettell().equals("")){
              out.println("電話番号が未入力です");}
        if(java.getcomment().equals("")){
              out.println("テキストは未入力です");} 
}


        %>
        <form action="insert" method="POST">
            //
            <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
            <input type="submit" name="no" value="登録画面に戻る">
        </form>
        <%=JumsHelper.getInstance().home()%>
    </body>//
</html>
