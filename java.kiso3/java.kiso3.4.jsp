<%-- 
    Document   : newjsp2
    Created on : 2016/07/21, 16:04:34
    Author     : yuya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.IOException"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
         /*課題4:課題1で定義したメソッドに追記する形として、戻り値　true(boolean)
                を返却するように修正し、メソッドの呼び出し側でtrueを受け取れたら
                「この処理は正しく実行できました」、そうでないなら
                「正しく実行できませんでした」と表示する
            */   
          boolean b = a(out);
          
          if(b==true){
              out.println("この処理は正しく実行できました");
          }else{
              
              out.println("正しく実行できませんでした");
            
                    }  
        
        %>
        
        <%!
           boolean a(JspWriter name){
            try {
                
            name.print("佐藤祐也");
            } catch(IOException e) {
                System.out.println(e.getMessage());
            }
            return true;
            
        }
        %>
    </body>
</html>
