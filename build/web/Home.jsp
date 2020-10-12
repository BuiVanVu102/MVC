<%-- 
    Document   : Home
    Created on : Oct 3, 2020, 9:07:34 AM
    Author     : BuiVu
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body >
        <h1 > Anh không tạo nghiệp, anh chỉ tạo WEB.... DEVELOPER , anh never , bị lỗi thời</h1> 
        <%
            Date d = new Date();
            out.print(d.toString());
            String str = pageContext.APPLICATION;
            for(int i = 0; i < 10; i++)
            {
                out.print(str + " <br/>");
            }
           %>
        
    </body>
</html>
