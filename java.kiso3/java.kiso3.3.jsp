<%-- 
    Document   : newjsp2
    Created on : 2016/07/21, 15:22:40
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
        /*課題3:引き数が3つのメソッドを定義する。
               1つ目は適当な数値を、2つ目はデフォルト値が5の数値
               最後はデフォルト値がfalse(boolean)のtypeを引き数として定義する。
               1つ目の引き数に2つ目の引き数を掛ける計算をするメソッドを作成し
               typeがfalseの時はその値を表示、trueのときはさらに2乗して表示する。
               
               例）Integer sample(Integer AAA, Integer BBB, boolean type)
                   引数が３つのメソッド書き出し部分 */
        

                   out.println(num(2,5,true));

        %>
        <%!
            int num(int x,int y,boolean z){
            int a =0;
            if(z){
                a = x*y;
                a = a*a;
                   
                    
            }else{
                a = x*y;
                
              
            }
             return a; 
        }
        
        
        
        %>
    </body>
</html>
