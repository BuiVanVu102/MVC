<%-- 
    Document   : ViewProduct
    Created on : Oct 9, 2020, 5:47:01 PM
    Author     : BuiVu
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="entity.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            ArrayList<Product> list  = (ArrayList<Product>) request.getAttribute("pList");
            if(list==null){
                response.sendRedirect("AddProduct.jsp");
            }
            %>
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
            </TR>
            <%
                    for(Product p : list )
                    {
                        String id = p.getId();
                        String name = p.getName();
                        float price = p.getPrice();
                        %>
                        <TR>
                            <TD><%=id%> </TD>
                            <TD><%=name%> </TD>
                            <TD><%=price%> </TD>
                        </TR>
                        <%
                            
                    }
                %>
        </TABLE>
           
    </body>
</html>
