<%-- 
    Document   : datasousa.ouyou02
    Created on : 2016/07/29, 17:07:25
    Author     : yuya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
        request.setCharacterEncoding("UTF-8");
        
        String n = request.getParameter("namae");
        String t = request.getParameter("tel");
        String e = request.getParameter("email");
        String r = request.getParameter("number");
       
       
            out.print(n);
            out.print(t);
            out.print(e);
            out.print(r);
       
       
       
       %>
    </body>
</html>
