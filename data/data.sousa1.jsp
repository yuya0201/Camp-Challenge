<%-- 
    Document   : newjsp
    Created on : 2016/07/27, 17:28:19
    Author     : yuya
/*
　１．以下の入力フィールドを持ったHTMLを、Javaで処理する想定で記述してください。
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
        <title>JSP Page</title>
    </head>  
    <body>
      <form action="newjsp2.jsp" method="post">  //action=ファイル名                                
        <input type="text" name="txtName" >     //value=""を使うと書いた事が初期値になる                                     
        男<input type="radio" name="rdoSample" value="男"> //newsjsp2.jspに男のデータを送る（value =""）
        女<input type="radio" name="rdoSample" value="女">
        <select name="cmbList">
            <option value="1">1</option>                  
            <option value="2">2</option>
            <option value="3">3</option>
        </select>                            //selctの中をoption value=""で囲うと""の機能が追加される
        <textarea name="mulText"></textarea> //valueは使わない。><この間に書くだけ
        <input type="submit" name="btnSubmit">
     </form>
    </body>
</html>
