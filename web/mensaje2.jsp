<%-- 
    Document   : mensaje2
    Created on : 08-nov-2015, 13:46:00
    Author     : Daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <title>Confirmacion de Compra</title>
    </head>
    <body>
        <h1 align="center">
            <%
                if(request.getParameter("mens")!=null){
                    out.println(request.getParameter("mens"));
                }
            %>
        </h1><br>
        <h2 align="center">
            <a href="Catalogo.jsp">Regresar al Catalogo</a>
        </h2>
    </body>
</html>
