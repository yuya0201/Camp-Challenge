<%-- 
    Document   : newjsp
    Created on : 2016/07/15, 15:24:28
    Author     : yuya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
        /*   課題９．以下の順で、連想配列を作成してください。
　　　     　"1"に"AAA", "hello"に"world", "soeda"に"33", "20"に"20" */
        
         HashMap<String,String>hMap =new HashMap<String,String>();
         
         hMap.put("1","AAA");
         hMap.put("hello", "world");
         hMap.put("soeda", "33");
         hMap.put("20", "20");
                    
         for(Map.Entry<String,String> val : hMap.entrySet()) {
         
         out.println(val.getKey());
        
         out.println(val.getValue());
         
         }
         

       %>

    </body>
</html>
