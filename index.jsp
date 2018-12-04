<%--
  Created by IntelliJ IDEA.
  User: PearFL
  Date: 2018/11/24
  Time: 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%

    //String ac = "3df0b984dbdcb3a60afea711b5dfed37a920f249";
    String url = "https://openapi.yiban.cn/user/me?access_token=3df0b984dbdcb3a60afea711b5dfed37a920f249";
    //System.out.println(ac+url);
    response.sendRedirect("/yiban/auth1.jsp");


%>

</body>
</html>
