<%-- 
    Document   : data.sousa.ouyou1
    Created on : 2016/07/29, 16:23:08
    Author     : yuya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "javax.servlet.http.HttpSession"%>
<%@page import = "java.util.Date"%>

<!DOCTYPE html>
<html>
    <head>
             <%
        
          HttpSession hs = request.getSession();
      

        %>
    </head>
    <body>
    <form action="data.sousa.ouyou01.jsp" method="post">
        <input type="text" name="txtName" value="<%= hs.getAttribute("Name") %>" >
      男<input type="radio" name="rdoSample" value="男性"    <% if(hs.getAttribute("sex")!=null && hs.getAttribute("sex").equals("男性")); %>>
      女<input type="radio" name="rdoSample" value="女性"   <% if(hs.getAttribute("sex")!=null && hs.getAttribute("sex").equals("女性")){ %>checked<% }; %>>
      <% if(hs.getAttribute("sex").equals("女性")){ %>checked<% }; %> 
        <textarea name="mulText"><%=hs.getAttribute("syumi") %></textarea>
        <input type="submit" name="btnSubmit">
 
    </form>
    </body>
</html>
