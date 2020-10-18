<%-- 
    Document   : EditProduct
    Created on : Oct 16, 2020, 11:21:33 PM
    Author     : BuiVu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c"uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Edit Product</h1>
        <c:set var="p" value="${requestScope['pDetail']}"/>
        <FORM align="center" action="ProductController?ac=add" method="POST">
            Product ID: <input type="text" value="${p.id}" name="txtID" readonly="true"/> <br>         
            Product Name: <input type="text"  name="txtName" value="${p.name}"/> <br/>
            Price:  <input type="text " name="txtPrice" value="${p.price}"/> <br/>
            <input type="submit" value="Add"  />
        </FORM>
    </body>
</html>
