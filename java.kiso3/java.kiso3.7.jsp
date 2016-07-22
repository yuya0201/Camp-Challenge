<%-- 
    Document   : newjsp2
    Created on : 2016/07/22, 11:30:49
    Author     : yuya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
      /*
          課題7:課題6の3人分のプロフィールのうち1人だけ住所が値nullの状態で定義し
               ループ処理で全員分のプロフィールをid以外表示する処理を実行する。
               この際、歯抜けになっているデータはcontinueで飛ばす*/
      
           for(int i = 0; i<Myprofile().size(); i++){
           if(Myprofile().get(i) == null){
             continue;
           }
           out.print(Myprofile().get(i)+"<br>");
           }     
      
      %>
      <%!
      
           ArrayList<String> Myprofile(){
          
          ArrayList<String> al = new ArrayList<>();
          
          al.add("名前");
          al.add("生年月日");
          al.add("a名前");
          al.add(null);
          al.add("b名前");
          al.add("b生年月日");
          
              return al; 
           }
          
      
      
      
      
      
      
      
      %>
    </body>
</html>
