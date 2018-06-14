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
public class FormularioValidacion implements Validator {
    private static final String PATTERN_EMAIL = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
            + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
    
    private Pattern pattern;
    private Matcher matcher;
    

    @Override
    public boolean supports(Class<?> type) {
        return Formulario.class.isAssignableFrom(type);
        //return NombreClaseParaValidar.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Formulario formulario = (Formulario)o;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "correo", "required.correo", "El campo E-mail es obligatorio");
        
        //Validación de Correo
        if (!(formulario.getCorreo() != null && formulario.getCorreo().isEmpty())) 
        {
            this.pattern = Pattern.compile(PATTERN_EMAIL);
            this.matcher = pattern.matcher(formulario.getCorreo());
            
            if (!matcher.matches()) {
                errors.rejectValue("correo", "correo.incorrect", "El E-mail " + "'" + formulario.getCorreo() + "'" + " no es válido");
            }
        }
        
        //Validación Nombre
        if (formulario.getNombre() != null && formulario.getNombre().isEmpty()) {
            errors.rejectValue("nombre", "nombre.incorrect", "Debe colocar un nombre");
        }
        
        //Validación teléfono
        if (formulario.getTelefono()== 0) {
            errors.rejectValue("telefono", "telefono.incorrect", "Debe colocar un teléfono de contacto");
        }
        
        //Validación país
        if (formulario.getMascota().equals("seleccione")) {
           errors.rejectValue("mascota", "required.mascota", "Debe seleccionar un tipo de mascota");
        }
        
        //Validación Consulta
        if (formulario.getConsulta()!= null && formulario.getConsulta().isEmpty()) {
            errors.rejectValue("consulta", "consulta.incorrect", "Debe colocar una consulta");
        }
    }
}
