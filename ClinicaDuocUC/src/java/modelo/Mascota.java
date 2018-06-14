/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 *
 * @author Pancho
 */
public class Mascota implements Serializable{
    private int id;
    private String nombre;
    private String sexo;
    private String especie;
    private String raza;
    private String fechaRegistro;
    private int idCliente;

    public Mascota() {
    }

    public Mascota(String nombre, String sexo, String especie, String raza, String fechaRegistro, int idCliente) {
        this.nombre = nombre;
        this.sexo = sexo;
        this.especie = especie;
        this.raza = raza;
        this.fechaRegistro = fechaRegistro;
        this.idCliente = idCliente;
    }

    public Mascota(int id, String nombre, String sexo, String especie, String raza, String fechaRegistro, int idCliente) {
        this.id = id;
        this.nombre = nombre;
        this.sexo = sexo;
        this.especie = especie;
        this.raza = raza;
        this.fechaRegistro = fechaRegistro;
        this.idCliente = idCliente;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getEspecie() {
        return especie;
    }

    public void setEspecie(String especie) {
        this.especie = especie;
    }

    public String getRaza() {
        return raza;
    }

    public void setRaza(String raza) {
        this.raza = raza;
    }

    public String getFechaRegistro() {
        return fechaRegistro;
    }

    public void setFechaRegistro(String fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    @Override
    public String toString() {
        return "Mascota{" + "id=" + id + ", nombre=" + nombre + ", sexo=" + sexo + ", especie=" + especie + ", raza=" + raza + ", fechaRegistro=" + fechaRegistro + ", idCliente=" + idCliente + '}';
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 53 * hash + this.id;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Mascota other = (Mascota) obj;
        if (this.id != other.id) {
            return false;
        }
        return true;
    }
    
}
