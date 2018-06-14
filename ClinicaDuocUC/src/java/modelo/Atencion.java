/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;

/**
 *
 * @author Pancho
 */
public class Atencion implements Serializable{
    private int id;
    private String diagnostico, cuidados, receta, fechaAtencion;
    private int idMascota;

    public Atencion() {
    }

    public Atencion(String diagnostico, String cuidados, String receta, String fechaAtencion, int idMascota) {
        this.diagnostico = diagnostico;
        this.cuidados = cuidados;
        this.receta = receta;
        this.fechaAtencion = fechaAtencion;
        this.idMascota = idMascota;
    }

    public Atencion(int id, String diagnostico, String cuidados, String receta, String fechaAtencion, int idMascota) {
        this.id = id;
        this.diagnostico = diagnostico;
        this.cuidados = cuidados;
        this.receta = receta;
        this.fechaAtencion = fechaAtencion;
        this.idMascota = idMascota;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDiagnostico() {
        return diagnostico;
    }

    public void setDiagnostico(String diagnostico) {
        this.diagnostico = diagnostico;
    }

    public String getCuidados() {
        return cuidados;
    }

    public void setCuidados(String cuidados) {
        this.cuidados = cuidados;
    }

    public String getReceta() {
        return receta;
    }

    public void setReceta(String receta) {
        this.receta = receta;
    }

    public String getFechaAtencion() {
        return fechaAtencion;
    }

    public void setFechaAtencion(String fechaAtencion) {
        this.fechaAtencion = fechaAtencion;
    }

    public int getIdMascota() {
        return idMascota;
    }

    public void setIdMascota(int idMascota) {
        this.idMascota = idMascota;
    }

    @Override
    public String toString() {
        return "Atencion{" + "id=" + id + ", diagnostico=" + diagnostico + ", cuidados=" + cuidados + ", receta=" + receta + ", fechaAtencion=" + fechaAtencion + ", idMascota=" + idMascota + '}';
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 89 * hash + this.id;
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
        final Atencion other = (Atencion) obj;
        if (this.id != other.id) {
            return false;
        }
        return true;
    }
}
