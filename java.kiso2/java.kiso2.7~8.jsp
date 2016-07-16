<%-- 
    Document   : newjsp
    Created on : 2016/07/15, 13:58:28
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
       /*課題 7 以下の順番で、要素が格納された配列を作成してください。
　　　　"10", "100", "soeda", "hayashi", "-20", "118", "END"*/
 
        
       
        ArrayList<String> al = new ArrayList<String>();
     
        al.add("10");
        al.add("100");
        al.add("soeda");
        al.add("hayasi");
        al.add("-20");
        al.add("118");
        al.add("END");
        
        //課題8  課題7で作成した配列の"soeda"を"33"に変更してください。
        
        al.set(2,"33");
        for(int i=0; i<al.size(); i++)
        {
            
        out.println(al.get(i));
        }
        
        
         
        
        
        
        %>
    </body>
</html>
