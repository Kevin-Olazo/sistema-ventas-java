package modelos;

import java.time.LocalDate;

public class Usuario {
    private String nombre;
    private String correo;
    private LocalDate fechaNacimiento;

    public Usuario() {
    }

    public Usuario(String nombre, String correo, LocalDate fechaNacimiento) {
        this.nombre = nombre;
        this.correo = correo;
        this.fechaNacimiento = fechaNacimiento;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public LocalDate getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(LocalDate fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public int getEdad() {
        return LocalDate.now().getYear() - fechaNacimiento.getYear();
    }
}
