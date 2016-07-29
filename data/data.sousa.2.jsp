<%-- 
    Document   : newjsp2
    Created on : 2016/07/29, 11:08:18
    Author     : yuya
    /*　１．以下の入力フィールドを持ったHTMLを、Javaで処理する想定で記述してください。
　　・名前（テキストボックス）、性別（ラジオボタン）、趣味（複数行テキストボックス）
     　２．以下の機能を実装してください。
　　　１で作成したHTMLの入力データを取得し、画面に表示する
                                                                       */
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>データ操作</title>
    </head>
    <body>
        <%   
            request.setCharacterEncoding("UTF-8");
            String n = request.getParameter("txtName");
            String r = request.getParameter("rdoSample");
            String l = request.getParameter("cmbList");
            String m = request.getParameter("mulText");

            out.print(n);
            out.print(r);
            out.print(l);
            out.print(m);
        %>
    </body>
</html>
