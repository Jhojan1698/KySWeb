<%-- 
    Document   : CuentaAdministrador
    Created on : 29-sep-2015, 22:48:52
    Author     : Daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <title>Opciones del Administrador</title>
    </head>
    <body>
        <form id="frmAdministrador">
            <table id="tablaAdministrador">
                <tr>
                    <th colspan="6">
                        <h2> Menu Administrativo </h2>
                    </th>
                </tr>
                <tr>
                    <th>
                        Registrar Nuevo
                    </th>
                    <th>
                        Registros Habilitados
                    </th>
                    <th>
                        Registros Inhabilitados
                    </th>
                    <th>
                        Pedidos Realizados
                    </th>
                    <th>
                        Catalogo
                    </th>
                    <th>
                        Reportes
                    </th>
                </tr>
                <tr>
                    <td>
                        <a href="RegistrarClaseProducto.jsp" class="link">Categoria</a>
                    </td>
                    <td>
                        <a href="MostrarCP.jsp" class="link">Categoria</a>
                    </td>
                    <td>
                        <a href="MostrarCPEliminados.jsp" class="link">Categoria</a>
                    </td>
                    <td>
                        <a href="MostrarVenta.jsp" class="link">Ir a ventas</a>
                    </td>
                    <td>
                        <a href="Catalogo.jsp" class="link">Ir al catalogo</a>
                    </td>
                    <td>
                        <a href="HistorialComprasClientes.jsp" class="link">Compras por Cliente</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="RegistrarMarcaProducto.jsp" class="link">Marca </a>
                    </td>
                    <td>
                        <a href="MostrarMP.jsp" class="link">Marca </a>
                    </td>
                    <td>
                        <a href="MostrarMPEliminados.jsp" class="link">Marca</a>
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        <a href="RankingProductos.jsp" class="link">Ranking de Productos</a>
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        <a href="RegistrarProducto.jsp" class="link">Producto</a>
                    </td>
                    <td>
                        <a href="MostrarProducto.jsp" class="link">Producto</a>
                    </td>
                    <td>
                        <a href="MostrarProductosEliminados.jsp" class="link">Producto</a>
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        <a href="Reporteporfecha.jsp" class="link">Reportes por Fecha</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href=# class="link">Usuario</a>
                    </td>
                    <td>
                        <a href="MostrarUsuario.jsp" class="link">Usuario</a>
                    </td>
                    <td>
                        <a href="MostrarUsuarioEliminado.jsp" class="link">Usuario</a>
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                </tr>
            </table>
        </form>
        
    </body>
</html>
