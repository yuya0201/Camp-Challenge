<%-- 
    Document   : newjsp
    Created on : 2016/07/13, 16:14:08
    Author     : yuya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%   
     String param9 = request.getParameter("a");
    
    
     String param1 = request.getParameter("sougaku");    
    
     String param2 = request.getParameter("kosuu");    
     
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       /*クエリストリングを利用して、以下の処理を実現してください。

　       スーパーのレジでレシートを作る仕組みを作成します。
　       クエリストリングで総額・個数・商品種別を受け取って処理します。

　       ①商品種別は、３つ。１：雑貨、２：生鮮食品、３：その他
　　      まずは、この商品種別を表示してください。

       　②総額と個数から１個当たりの値段を算出してください。
　　       総額と１個当たりの値段を表示してください。

　       ③3000円以上購入で4%、5000円以上購入で5%のポイントが付きます。
　　       購入額に応じたポイントの表示を行ってください。 */    
       
       
        int x = Integer.parseInt(param1);
        int y = Integer.parseInt(param2);
        
       
           
         if( param9.equals("a")){ 
             
         out.println("雑貨の総額");
         out.println(param1);
         out.println("雑貨1個当たりの値段");
         out.println(x/y);  
         
         if(5000<=x){
         out.println("購入ポイント");
         out.println(x*0.05);
         
         }
         
         else if(3000<=x){
             
         out.println(x*0.04);
         
         }
         
         }
         
         else if ( param9.equals("b")){
             
         out.println("生鮮食品の総額");
         out.println(param1);
         out.println("生鮮食品1個当たりの値段");
         out.println(x/y);
        
          
         if(5000<=x){
         out.println("購入ポイント");
         out.println(x*0.05);
         
         }
         
         else if(3000<=x){
             
         out.println(x*0.04);
         
         }
         
        
         }
         
         else{
         out.println("その他の総額");
         out.println(param1);
         out.println("その他1個当たりの値段");
         out.println(x/y);
         
          
         if(5000<=x){
         out.println("購入ポイント");
         out.println(x*0.05);
         
         }
         
         else if(3000<=x){
             
         out.println(x*0.04);
         
         }
         
         
         }

         
         
         
        
        

       %>

    </body>
</html>
