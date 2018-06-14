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
public class ClienteValidacion implements Validator {
    private static final String PATTERN_EMAIL = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
            + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
    
    private Pattern pattern;
    private Matcher matcher;
    

    @Override
    public boolean supports(Class<?> type) {
        return Cliente.class.isAssignableFrom(type);
        //return NombreClaseParaValidar.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Cliente cliente = (Cliente)o;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "correo", "required.correo", "El campo E-mail es obligatorio");
        
        
        //Validación de Correo
        if (!(cliente.getCorreo() != null && cliente.getCorreo().isEmpty())) 
        {
            this.pattern = Pattern.compile(PATTERN_EMAIL);
            this.matcher = pattern.matcher(cliente.getCorreo());
            
            if (!matcher.matches()) {
                errors.rejectValue("correo", "correo.incorrect", "El E-mail " + "'" + cliente.getCorreo() + "'" + " no es válido");
            }
        }
        
        //Validación rut
        if (cliente.getRut() != null && cliente.getRut().isEmpty()) {
            errors.rejectValue("rut", "rut.incorrect", "Debe colocar un rut");
        }
        
        //Validación Nombre
        if (cliente.getNombre()!= null && cliente.getNombre().isEmpty()) {
            errors.rejectValue("nombre", "nombre.incorrect", "Debe colocar un nombre");
        }
        
        //Validación Dirección
        if (cliente.getDireccion()!= null && cliente.getDireccion().isEmpty()) {
            errors.rejectValue("direccion", "direccion.incorrect", "Debe colocar una Dirección");
        }
        
        //Validación teléfono
        if (cliente.getTelefono() == 0) {
            errors.rejectValue("telefono", "telefono.incorrect", "Debe colocar un número de contacto");
        }
    }
}
