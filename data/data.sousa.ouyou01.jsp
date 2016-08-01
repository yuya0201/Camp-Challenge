<%-- 
    Document   : data.sousa.ouyou01
    Created on : 2016/07/29, 16:27:59
    Author     : yuya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "javax.servlet.http.HttpSession"%>
<%@page import = "java.util.Date"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            /*
            
　            5．以下の機能を実装してください。
　　           　名前・性別・趣味を入力するページを作成してください。
　　           　また、入力された名前・性別・趣味を記憶し、次にアクセスした際に
　　　           記録されたデータを初期値として表示してください。
　　　          　※Javaと同時に、HTMLの知識が必要になります。
　　            　※入力フィールドの使い方を調べてみましょう。
            */
            request.setCharacterEncoding("UTF-8");
            
            HttpSession hs = request.getSession();
            String n = request.getParameter("txtName");
            String m = request.getParameter("mulText");
            String r = request.getParameter("rdoSample");
        
            hs.setAttribute("Name", n);
            hs.setAttribute("syumi", m);
            hs.setAttribute("sex", r);
            out.println(hs.getAttribute("syumi"));
            out.println(hs.getAttribute("Name"));
            out.println(hs.getAttribute("sex"));
            %>
            <br>
            <a href="data.sousa.ouyou1.jsp">戻る</a>
    </body>
</html>
