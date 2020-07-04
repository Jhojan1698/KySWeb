<%-- 
    Document   : HistorialComprasClientes
    Created on : 01-jul-2020, 21:21:52
    Author     : Segundo
--%>
<%@page import="javax.persistence.Convert"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="Clase.*"%>
<%@page import="java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <title>Reportes</title>
    </head>
    <body>
        <form id="frmMostrarCabeceraHistorial">
            <table id="tablaMostrarCabeceraHistorial">
                <tr>
                    <th>
                        <h1> HISTORIAL DE COMPRAS POR CLIENTE </h1>
                    </th>
                </tr>
                <tr>
                    <td>
                        <a href="CuentaAdministrador.jsp" class="link"><h4> Pagina principal </h4></a>
                    </td>
                </tr>
            </table>
        </form>
        
        <hr>
        
        <form id="frmMostrarCuerpoVenta">
            
            <tr class="container buscarnombre buscarapellido">
                <div class="">
                    <h4>Ingrese Nombre</h4>
                    <input type="text" name="txtbuscarnombre">
                    <h4>Ingrese Apellido</h4>
                    <input type="text" name="txtbuscarapellido">
                    <input type="submit" value="Buscar">
                </div>
            </tr> 
     
              <br>
              
            <table id="tablaMostrarCuerpoVenta">
                <tr>
                    <th class="Titulo">
                        CODIGO COMPRA
                    </th>
                    <th class="Titulo">
                        CODIGO USUARIO
                    </th>
                    <th class="Titulo">
                        IMPORTE (S/.)
                    </th>
                    <th class="Titulo">
                        FECHA Y HORA
                    </th>
                    <th colspan="1" class="Titulo">
                        OPCION
                    </th>
                </tr>    
                
                <%
                    DecimalFormat df = new DecimalFormat("0.00");
                    DecimalFormatSymbols dfs = df.getDecimalFormatSymbols();
                    dfs.setDecimalSeparator('.');
                    df.setDecimalFormatSymbols(dfs);
                    
                    String nombre=request.getParameter("txtbuscarnombre");
                    String apellido=request.getParameter("txtbuscarapellido");
                    ArrayList<Venta> lista = Venta_DB.ReporteComprasdeCliente(nombre, apellido);
                    for(int i=0; i<lista.size(); i++){
                        Venta v = lista.get(i);
                        %>
                        
                <tr>
                    <td>
                        <%=v.getCodigoVenta()%>
                    </td>
                    <td>
                        <%=v.getCodigoCliente()%>
                    </td>
                    <td>
                        <%=df.format(v.getTotal())%>
                    </td>
                    <td>
                        <%=v.getFecha() %>
                    </td>
                    <td class="Opcion">
                        <input type="button" name="btnDetalle" id="btnDetalle" class="button" value="Detalle venta" onclick="location.href='Servlet_Venta?codigoV=<%=v.getCodigoVenta() %>&&cliente=<%=v.getCliente() %>&&importe=<%=v.getTotal() %>&&FechaV=<%=v.getFecha() %>&&codigoCli=<%=v.getCodigoCliente() %>&&accion=MostrarDetalle'">
                    </td>
                </tr>
                
                <%
                    }
                %>

            </table>
        </form>
    </body>
</html>
