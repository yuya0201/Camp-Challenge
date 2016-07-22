<%-- 
    Document   : newjsp2
    Created on : 2016/07/20, 11:40:30
    Author     : yuya
--%>

<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
      <%
       for(int i=0; i<10; i++ ){
       out.println(message());
       out.println(Myname());
       out.println(get());
       }
       
      
      
      %>  
      <%!
         /*課題1:自分のプロフィール(名前、生年月日、自己紹介)を3行に分けて
           表示するユーザー定義メソッドを作りメソッドを10回呼び出して下さい*/
         String message(){
          return"佐藤祐也<br>";
                           }
         //名前
         String Myname(){
           return"1991年2月1日<br>";
                           }
         //生年月日
         String get(){
           return"こんにちは<br>";
                           }
          //自己紹介
         
          void printName(String name) {
           System.out.println(name);
                           }
             
                       
                       
         
                       

          
          
      





      %>
    </body>
</html>
