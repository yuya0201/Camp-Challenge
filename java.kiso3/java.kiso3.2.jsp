<%-- 
    Document   : newjsp2
    Created on : 2016/07/21, 14:07:50
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
       
        /*    
        if(i % 2 ==0){
            out.println(i+"は偶数です");
                    }
        if(i % 2 != 0){
            out.println(i+"は奇数です");
                    }
            */
            
          String s = chknum(4);  
          //out.println(s);
          
          out.print(chknum(4));
            
        
        %>
        <%!
        /*課題2:引数として数値を受け取り、その値が奇数か偶数か判別＆表示する処理を
            メソッドとして制作し、適当な数値に対して奇数・偶数の判別を行ってください*/
        
        String chknum(int Y) {
        
         String str = "";
         if(Y % 2 ==0){
            str = Y+"は偶数です";
                    }
        if(Y % 2 != 0){
            str = Y+"は奇数です";
                    }
        return str;
        
        }
         
        
        
        
        %>
        
        
      
    
    </body>
</html>
