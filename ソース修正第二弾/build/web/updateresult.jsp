<%@page import="java.util.Calendar"%>
<%@page import="jums.UserDataDTO"%>
<%@page import="jums.JumsHelper" %>
<%
    JumsHelper jh = JumsHelper.getInstance();
    UserDataDTO udd = (UserDataDTO)request.getAttribute("updateData");
    Calendar cal = Calendar.getInstance();
    cal.setTime(udd.getBirthday());
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS更新結果画面</title>
    </head>
    <body>
        <h1>変更結果</h1><br>
        名前:<%=udd.getName()%><br>
        生年月日:<%=cal.get(Calendar.YEAR)%>
               <%=cal.get(Calendar.MONTH)%>
               <%=cal.get(Calendar.DAY_OF_MONTH)%>
               <br>
        種別:%= jh.exTypenum(udd.getType())%><br>
        電話番号:<%=udd.getTell()%><br>
        自己紹介:<%=udd.getComment()%><br>
        以上の内容で登録しました。<br>
    <%=jh.home()%>
   </body>
</html>
