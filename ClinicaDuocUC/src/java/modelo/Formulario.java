/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author Pancho
 */
public class Formulario {
    private String rut, nombre;
    private int telefono;
    private String correo, mascota, consulta;

    public Formulario() {
    }

    public Formulario(String rut, String nombre, int telefono, String correo, String mascota, String consulta) {
        this.rut = rut;
        this.nombre = nombre;
        this.telefono = telefono;
        this.correo = correo;
        this.mascota = mascota;
        this.consulta = consulta;
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getMascota() {
        return mascota;
    }

    public void setMascota(String mascota) {
        this.mascota = mascota;
    }

    public String getConsulta() {
        return consulta;
    }

    public void setConsulta(String consulta) {
        this.consulta = consulta;
    }

    @Override
    public String toString() {
        return "Formulario{" + "rut=" + rut + ", nombre=" + nombre + ", telefono=" + telefono + ", correo=" + correo + ", mascota=" + mascota + ", consulta=" + consulta + '}';
    }
}
