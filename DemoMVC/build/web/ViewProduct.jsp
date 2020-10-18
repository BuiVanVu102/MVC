<%-- 
    Document   : ViewProduct
    Created on : Oct 9, 2020, 5:47:01 PM
    Author     : BuiVu
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="entity.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:choose>
            <c:when test="${empty requestScope['pList']}">
                <jsp:forward page="ProductController?ac=getData"/>    
            </c:when>
            <c:otherwise>
                <h1> Product List </h1>
                <TABLE  align=" center" width="60%" border="1">
                    <TR>
                        <TH>
                            Product ID
                        </TH>
                        <TH>
                            Product Name
                        </TH>   
                        <TH>
                            Price
                        </TH>
                        <TH>Delete</TH>
                        <TH>Update</TH>
                    </TR>
                    <c:forEach var="p" items="${requestScope['pList']}">
                        <tr>
                            <td>${p.id}</td>
                            <td>${p.name}</td>
                            <td>${p.price}</td>
                            <td><a href="ProductController?ac=del&id=${p.id}"> Delete</a></td>
                            <td><a href="ProductController?ac=edit&id=${p.id}"> Update</a></td>                                   
                        </tr>              
                    </c:forEach>           
                </c:otherwise>        
            </c:choose>                     
        </TABLE>           
    </body>
</html>
