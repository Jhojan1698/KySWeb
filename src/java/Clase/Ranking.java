/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clase;

/**
 *
 * @author Segundo
 */
public class Ranking {
    private String CodigoP;
    private String Producto;
    private double cantidad;
    private double Subtotal;

    public Ranking() {
    }

    public Ranking(String CodigoP, String Producto, double cantidad, double Subtotal) {
        this.CodigoP = CodigoP;
        this.Producto = Producto;
        this.cantidad = cantidad;
        this.Subtotal = Subtotal;
    }

    public String getCodigoP() {
        return CodigoP;
    }

    public void setCodigoP(String CodigoP) {
        this.CodigoP = CodigoP;
    }

    public String getProducto() {
        return Producto;
    }

    public void setProducto(String Producto) {
        this.Producto = Producto;
    }

    public double getCantidad() {
        return cantidad;
    }

    public void setCantidad(double cantidad) {
        this.cantidad = cantidad;
    }

    public double getSubtotal() {
        return Subtotal;
    }

    public void setSubtotal(double Subtotal) {
        this.Subtotal = Subtotal;
    }
    
    
}
