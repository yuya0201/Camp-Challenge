<%-- 
    Document   : newjsp2
    Created on : 2016/07/21, 16:58:03
    Author     : yuya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        /*課題5:戻り値としてある人物のid(数値),名前,生年月日、住所を返却するメソッドを作成し
               受け取った後はid以外の値を表示する */
        
        /*     ArrayList<String> al = getname();
               out.print(al.get(1));
               out.print(al.get(2));
               out.print(al.get(3));   
        
                 ↑結果は同じ               */
               
               out.print(getname().get(1));
               out.print(getname().get(2));
               out.print(getname().get(3));
        %>
        <%!
           
            ArrayList<String> getname(){
            
                ArrayList<String> al = new ArrayList<>();
                
           
                al.add("id");
                al.add("名前");
                al.add("生年月日");
                al.add("住所");
        
                return al;
            }
        
        
        
        
        %>
    </body>
</html>
