<%-- 
    Document   : newjsp
    Created on : 2016/07/20, 13:56:18
    Author     : yuya
--%>
<%@page import="org.camp.java.ResultData"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
             ResultData data = (ResultData)request.getAttribute("DATA");
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           if (data !=null){
               out.print("<h1>あなたの"+data.getD()+"の運勢は、"+data.getLuck()+"です<h>");
           }
        
        
        
        %>
      
    </body>
</html>
