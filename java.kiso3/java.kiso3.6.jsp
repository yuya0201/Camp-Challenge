<%-- 
    Document   : newjsp2
    Created on : 2016/07/22, 10:21:21
    Author     : yuya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        /*課題6:引き数に1つのid(数値)をとり、
               3人分のプロフィール(項目は課題5参照)をあらかじめメソッド内で定義しておく。
               引き数のid値により戻り値として返却するプロフィールを誰のものにするか選択する。
               それ以降などは課題5と同じ扱いに
                                              */
          out.println(Myprofile(2));
          
        
        
        %>
       
        <%!
        
           String Myprofile(int i){
           String massege ="";
           
           switch(i){
               case 1:
                   massege +=  "名前";
                   massege +=  "生年月日";
                   break;
               case 2:
                   massege += "a名前";
                   massege += "a生年月日";
                   break;
               case 3:
                   massege += "b名前";
                   massege += "b生年月日";
                   break;
                   
           }  
                return massege;
           }

           
           
              
          
               
            
        
        
        
        
        
        %>
    </body>
</html>
