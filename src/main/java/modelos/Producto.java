package modelos;

public class Producto {
    double IGV = 0.18;

    private String nombre;
    private double precio;
    private int cantidad;

    public Producto() {
    }

    public Producto(double IGV, String nombre, double precio, int cantidad) {
        this.IGV = IGV;
        this.nombre = nombre;
        this.precio = precio;
        this.cantidad = cantidad;
    }

    // METODOS PERSONALIZADOS

    public double precioConIGV() {
        return this.precio + this.precio * IGV;
    }

    public double getIGV() {
        return IGV;
    }

    public void setIGV(double IGV) {
        this.IGV = IGV;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }
}
