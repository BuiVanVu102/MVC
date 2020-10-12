<%-- 
    Document   : AddProduct
    Created on : Oct 8, 2020, 11:15:21 AM
    Author     : BuiVu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Add Product</h1>
        <FORM action="ProductController" method="POST">
            Product ID: <input type="text" name="txtID"/> <br>         
            Product Name: <input type="text " name="txtName"/> <br/>
            Price:  <input type="text " name="txtPrice"/> <br/>
            <input type="submit" value="Add"  />
        </FORM>
    </body>
</html>
