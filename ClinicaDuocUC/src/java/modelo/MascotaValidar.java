/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 *
 * @author Pancho
 */
public class MascotaValidar implements Validator {

    @Override
    public boolean supports(Class<?> type) {
        return Mascota.class.isAssignableFrom(type);
        //return NombreClaseParaValidar.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Mascota mascota = (Mascota) o;

        //Validación Nombre mascota
        if (mascota.getNombre() != null && mascota.getNombre().isEmpty()) {
            errors.rejectValue("nombre", "nombre.incorrect", "Debe colocar un nombre");
        }

        //Validación Sexo mascota
        if (mascota.getSexo().equals("Seleccione")) {
            errors.rejectValue("sexo", "sexo.incorrect", "Debe colocar un sexo válido");
        }

        //Validación Especie mascota
        if (mascota.getEspecie().equals("Seleccione")) {
            errors.rejectValue("especie", "especie.incorrect", "Debe colocar una especie válida");
        }

        //Validación Fecha Registro
        if (mascota.getFechaRegistro() != null && mascota.getFechaRegistro().isEmpty()) {
            errors.rejectValue("fechaRegistro", "fechaRegistro.incorrect", "Debe colocar una Fecha de Registro");
        }

        //Validación ID Cliente
        if (mascota.getIdCliente() == 0) {
            errors.rejectValue("idCliente", "idCliente.incorrect", "Debe ingresar un ID de Cliente Válido");
        }
    }
}
