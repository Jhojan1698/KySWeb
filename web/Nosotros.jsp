<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : Catalogo
    Created on : 09-oct-2015, 11:18:36
    Author     : Daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="Clase.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/Catalogo.js"></script>
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        
        <title>KyS Info</title>
        
    </head>
    
    <body onload="cargar()">
        
        <%
            String codigo = (String)session.getAttribute("parametroCodigo");
            
            Usuario usu = Usuario_DB.listarUsuarioPorCodigo(codigo);
            String cliente = usu.getNombreUsuario() + ", " + usu.getApellidosUsuario();
        %>
        
        <form action="Servlet_Usu" method="post" id="frmCabecera">
            <input type="hidden" value="<%=usu.getTipoUsuario() %>" name="txtTipo" id="txtTipo">
            <table id="tablaCabecera">
                <tr>
                    <th colspan="5">
                        <h1 class="text-center">NOSOTROS</h1>
                    </th>
                </tr>
                <tr>
                    <td>
                        <a href="Catalogo.jsp" class="link" id="lnkCatalogo"><h4>Catalogo</h4></a>
                    </td>
                    <td>
                        <a href="RegistrarVenta.jsp" class="link" id="lnkCompra"><h4>Mi compra</h4></a>
                    </td>
                    <td>
                        <a href="MiPerfil.jsp?codigoU=<%=usu.getCodigoUsuario() %>" class="link" id="lnkPerfil">Mi cuenta</a>  
                    </td>
                    
                    <td>
                        <a href="CuentaAdministrador.jsp" class="link" id="lnkAdm">Administrar</a>
                    </td>
                    <td>
                        <a href="Login.jsp" class="link" id="lnkLogin">Login</a>
                    </td>
                    <td>
                        <a href="Servlet_Usu?accion=logout" class="link" id="lnkLogout">Salir</a>
                    </td>
                </tr>
            </table>
            <input type="hidden" name="accion" value="logout">
        </form>
        <hr>

        <form >
            <table width="800">
                <main>
                <tr>
                    <div >
                        <h1> ¿Quienes somos? </h1>
                    </div>
                </tr>              
                <tr>
                    <div >
                        <p> Somos una tienda virtual donde encontraras los mejores accesorios para 
                        celulares a los mejores precios del mercado.</p>
                        <p>En KySWeb podrás comprar en línea de forma fácil y segura la mayor variedad 
                            de productos tecnológicos dentro de las categorías: Audifonos, MicroSD, Parlantes
                            , Memorias y muchas más.</p>
                    </div>
                </tr> 
                </main>
                <h3 style="text-align: center">
                    <img src="Imagen/usuario-telefono-celular-alegre-feliz-apuntando-pantalla-blanco_74855-2893.jpg" alt=""/>
                </h3>
                <tr>
                    <div >
                        <h1> Nuestra Mision Contigo :) </h1>
                    </div>
                </tr> 
                <tr>
                    <div >
                        <p>  Nuestro sistema web de ventas de accesorios de celulares de aproximadamente 4 años de funcionalidad
está ubicada en el distrito de SJL, AV. Gran Chimú 368 a cargo de la Señora Yesenia Carbajal Ramos, este sistema
tiene como misión dar al cliente un método de fácil compra de nuestros productos como: protectores de celulares,
cargadores de celulares, micas de vidrio, audífonos, cables usb, etc. Sin necesidad de realizarlos de forma
presencial, mediante envíos mejorará la venta, ofreciendo una alta variedad de innovaciones en tecnología útiles
para el uso expandible del celular; mejorando la experiencia del usuario y el móvil.</p>
                        <h3 style="text-align: center">
                        <img src="Imagen/54903460-3d-hombre-actitud-positiva-con-el-pulgar-hacia-arriba-fondo-blanco-aislado.jpg" alt=""/>
                        </h3>
                    </div>
                </tr> 
                <tr>
                    <div >
                        <h1> Vision de Nuestra Tienda</h1>
                    </div>
                </tr> 
                <tr>
                    <div >
                        <p>  Nuestra visión a futuro es ser una de las empresas reconocidas “KyS” por nuestra calidad de servicio en
ventas de nuevas variedades de artículos con alta demanda de adquisición en el mercado; además de mejorar el
envío de los productos, no solo en la ciudad de Lima si no a nivel nacional.</p>
                        <h3 style="text-align: center">
                        <img src="" alt=""/>
                        </h3>
                    </div>
                </tr> 

                <tr>
                    <div >
                        <h1>Contactanos</h1>
                    </div>
                    <div >
                        <p> Puedes llamanos al numero +51 960916327 exclusivo de ventas y consultas.</p>
                        <p> O puedes visitarnos en nuestra tienda ubicada en AV. Gran Chimú 368, S.J.L </p>
                        <h3 style="text-align: center">
                        <img src="" alt=""/>
                        </h3>
                    </div>
                </tr> 
                
                <tr>
                    <div >
                        <h1>Horario de Atencion</h1>
                    </div>
                    <div >
                        <p> Lunes a Viernes 9:00 AM a 7:00 PM </p>
                        <p> Sabados 9:00 AM a 4:00 PM </p>
                    </div>
                </tr> 
                
            </table>
        </form>  
    </body>
</html>
