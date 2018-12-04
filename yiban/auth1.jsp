<%--
  Created by IntelliJ IDEA.
  User: 13994
  Date: 2018/11/23
  Time: 18:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="cn.yiban.open.Authorize"%>
<%@ page import="com.alibaba.fastjson.*"%>
<html>
<head>
    <title>$Title$</title>
</head>
<body>

<%
    /*if(studao.checkStudentRepeat((String)session.getAttribute("ybid"))){
        response.sendRedirect("repeat.html");
    }*/
    String appKey="301fe9143ccdc126";
    String appSecret="fa5010ddd697a5afa6e4490602423ba0";
    String callbackurl="http://127.0.0.1:8080/yiban/auth1.jsp";
    String jsons=null;
    JSONObject json=null;
    String ac = null;
    Authorize au = new Authorize(appKey,appSecret);
    String code=request.getParameter("code");
    if(code==null||code.isEmpty()) {
        String url = au.forwardurl(callbackurl, "test", Authorize.DISPLAY_TAG_T.WEB);
        response.sendRedirect(url);
    }else{
        jsons = au.querytoken(code,callbackurl);
        json = JSONObject.parseObject(jsons);
        ac=json.get("access_token").toString();

        session.setAttribute("ac",ac);
        //response.sendRedirect("../useapi");
        response.sendRedirect("../getID?ac="+ac);
    }
%>
<%=ac%>
</body>
</html>
