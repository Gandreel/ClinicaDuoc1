/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.regex.Pattern;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 *
 * @author Pancho
 */
public class AtencionValidar implements Validator{
    
    @Override
    public boolean supports(Class<?> type) {
        return Atencion.class.isAssignableFrom(type);
        //return NombreClaseParaValidar.class.isAssignableFrom(type);
    }
    
    @Override
    public void validate(Object o, Errors errors) {
        Atencion atencion = (Atencion)o;

        //Validación diagnostico
        if (atencion.getDiagnostico()!= null && atencion.getDiagnostico().isEmpty()) {
            errors.rejectValue("diagnostico", "diagnostico.incorrect", "Debe colocar un diagnóstico");
        }

        //Validación Cuidados
        if (atencion.getCuidados()!= null && atencion.getCuidados().isEmpty()) {
            errors.rejectValue("cuidados", "cuidados.incorrect", "Debe colocar un cuidado");
        }

        //Validación Receta
        if (atencion.getReceta()!= null && atencion.getReceta().isEmpty()) {
            errors.rejectValue("receta", "receta.incorrect", "Debe colocar una receta");
        }

        //Validación fecha atención
        if (atencion.getFechaAtencion()!= null && atencion.getFechaAtencion().isEmpty()) {
            errors.rejectValue("fechaAtencion", "fechaAtencion.incorrect", "Debe colocar una fecha de atención");
        }
        
        //Validación ID Mascota
        if (atencion.getIdMascota()== 0) {
            errors.rejectValue("idMascota", "idMascota.incorrect", "Debe colocar un ID de Mascota válido");
        }
    }
}
