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
         <style>
            @media print{
                .boton01, .boton02, .letra1, .letra2, .link, .boton {
                    display: none;
                }
            }
            
        </style>
    </head>
    <body>
        <form id="frmMostrarCabeceraRanking">
            <table id="tablaMostrarCabeceraRanking">
                <tr>
                    <th>
                        <h1> REPORTE DETALLADO DE VENTAS </h1>
                    </th>
                </tr>
                
                <tr>
                    <th class="letra1">
                        <h4> Recuerde que el formato de busqueda es fecha: AAAA/MM/DD y horas: HH/MM/SS  </h4>
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
            
            <tr class="container buscarfecha1 buscarfecha2">
                <div class="">
                    <h4>Fecha Inicio</h4>
                    <input type="text" name="txtfecha1">
                    <h4>Fecha Fin</h4>
                    <input type="text" name="txtfecha2">
                    <input class="boton" type="submit" value="Buscar">
                </div>
            </tr> 
     
              <br>
              
            <table id="tablaMostrarCuerpoVenta">
                <tr>
                    <th class="Titulo">
                        CODIGO VENTA
                    </th>
                    <th class="Titulo">
                        CODIGO USUARIO
                    </th>
                    <th class="Titulo">
                        CLIENTE
                    </th>
                    <th class="Titulo">
                        TOTAL (S/.)
                    </th>
                    <th class="Titulo">
                        FECHA
                    </th>
                    <th colspan="1" class="Titulo letra2">
                        OPCION
                    </th>
                </tr>    
                
                <%
                    DecimalFormat df = new DecimalFormat("0.00");
                    DecimalFormatSymbols dfs = df.getDecimalFormatSymbols();
                    dfs.setDecimalSeparator('.');
                    df.setDecimalFormatSymbols(dfs);
                    
                    String fecha1=request.getParameter("txtfecha1");
                    String fecha2=request.getParameter("txtfecha2");
                    ArrayList<Venta> lista = Venta_DB.ReporteporFecha(fecha1, fecha2);
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
                        <%=v.getCliente()%>
                    </td>
                    <td>
                        <%=df.format(v.getTotal())%>
                    </td>
                    <td>
                        <%=v.getFecha()%>
                    </td>
                    <td class="Opcion boton02">
                        <input type="button" name="btnDetalle" id="btnDetalle" class="button" value="Detalle venta" onclick="location.href='Servlet_Venta?codigoV=<%=v.getCodigoVenta() %>&&cliente=<%=v.getCliente() %>&&importe=<%=v.getTotal() %>&&FechaV=<%=v.getFecha() %>&&codigoCli=<%=v.getCodigoCliente() %>&&accion=MostrarDetalle'">
                    </td>
                </tr>
                
                <%
                    }
                %>

            </table>
                <tr>
                                <td>
                                  <input type="button" name="btnEmitirboleta" id="btnEmitirBoleta" class="button boton01" onclick="print()" value="Imprimir PDF">    
                                </td>
                            </tr>
        </form>
    </body>
</html>
