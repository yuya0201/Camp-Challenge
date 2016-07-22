<%-- 
    Document   : newjsp2
    Created on : 2016/07/22, 12:52:33
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
       /*課題8:先にInteger limit=2を定義しておき、
              課題7の処理のうち2人目(limitで定義した値の人数)
              まででループ処理を抜けるようにする */
       
         for(int i = 0; i<Myprofile().size(); i++){
             if(i == 2 ){
                 break;
             }
             out.println(Myprofile().get(i)+"<br>");
         }
       
       
       %>
       <%!
       
       ArrayList<String> Myprofile(){
           
       ArrayList<String> al = new ArrayList<>();
       
       al.add("名前<br>生年月日<br>住所");
       al.add("a名前<br>a生年月日<br>a住所");
       al.add("b名前<br>b生年月日<br>b住所");
       
       
       
           return al;
       }
       
       
       %>
    </body>
</html>
