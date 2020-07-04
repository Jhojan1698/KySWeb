/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clase;
import java.sql.*;
import java.util.*;
import Conexion.Conexion;
/**
 *
 * @author Segundo
 */
public class Ranking_DB {
    public static ArrayList<Ranking> Rankingdeproductosporfecha(String fecha1, String fecha2){
        ArrayList<Ranking> lista = new ArrayList<Ranking>();
        Connection cn;
        Conexion con = new Conexion();
        cn=con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL RANKING_PRODUCTO_POR_PERIODO(?,?)");
            cs.setString(1, fecha1);
            cs.setString(2, fecha2);
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                Ranking v = new Ranking();
                v.setCodigoP(rs.getString("Codigo_P"));
                v.setProducto(rs.getString("Producto"));
                v.setCantidad(rs.getDouble("Cantidad")); 
                v.setSubtotal(rs.getDouble("Subtotal")); 
                lista.add(v);
            } 
        }catch(Exception e){
            System.out.println(e);
        }
        return lista;
    }
}
