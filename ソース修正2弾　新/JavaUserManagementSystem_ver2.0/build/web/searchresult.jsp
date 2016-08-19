<%@page import="java.util.ArrayList"
        import="jums.JumsHelper"
        import="jums.UserDataDTO"       
       %>
<%
    JumsHelper jh = JumsHelper.getInstance();
    ArrayList<UserDataDTO> resultList = (ArrayList)request.getAttribute("resultData");
    HttpSession hs = request.getSession();
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS検索結果画面</title>
    </head>
    <body>
        <h1>検索結果</h1>
        <table border=1>
            <% 
                    if(resultList.size()!=0){                  
    %>
            <tr>
                <th>名前</th>
                <th>生年</th>
                <th>種別/th>
                <th>登録日時</th>
            </tr>
            <%
            for(int i=0; i<resultList.size(); i++){
                    UserDataDTO udd = resultList.get(i);
            
            %>
         
            <tr>
                <td><a href="ResultDetail?id=<%=udd.getUserID()%>&ac=<%= (Integer)hs.getAttribute("ac")%>"><%=udd.getName()%></a></td>
                <td><%= udd.getBirthday()%></td>
                <td><%= udd.getType()%></td>
                <td><%= udd.getNewDate()%></td>
            </tr>
            <%
               }}
            %>
                
            
            
        </table>
    </body>
    <%=jh.home()%>
</html>
