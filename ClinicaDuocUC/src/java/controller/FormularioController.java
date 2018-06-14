/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.LinkedHashMap;
import java.util.Map;
import modelo.Cliente;
import modelo.ClienteValidacion;
import modelo.Conectar;
import modelo.Formulario;
import modelo.FormularioValidacion;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Pancho
 */
@Controller
@RequestMapping("formulario.htm")

public class FormularioController {

    FormularioValidacion forumularioValidacion;
    private JdbcTemplate jdbcTemplate;

    public FormularioController() {
        this.forumularioValidacion = new FormularioValidacion();
        Conectar con = new Conectar();
        this.jdbcTemplate = new JdbcTemplate(con.conectar());
    }

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView form() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("formulario");
        mav.addObject("formulario", new Formulario());
        return mav;
    }

    //Recibimos y validamos los datos de nuestro formulario
    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView form(@ModelAttribute("formulario") Formulario f, BindingResult result, SessionStatus status) {

        this.forumularioValidacion.validate(f, result);

        if (result.hasErrors()) {
            //Volvemos al formulario porque los datos ingresados por el usuario no son correctos
            //Es decir que se ejecutó la validación
            ModelAndView mav = new ModelAndView();
            mav.setViewName("formulario");
            mav.addObject("formulario", new Formulario());
            return mav;
        } else {
            this.jdbcTemplate.update("insert into formulario (nombre, telefono, correo, mascota, consulta ) values (?,?,?,?,?)",
                    f.getNombre(), f.getTelefono(), f.getCorreo(), f.getMascota(), f.getConsulta());

            return new ModelAndView("redirect:/inicio.htm");
        }
    }

    //Método para poblar nuestro select
    @ModelAttribute("mascotaLista")
    public Map<String, String> listadoMascotas() {
        Map<String, String> mascota = new LinkedHashMap<>();
        mascota.put("Perro", "Perro");
        mascota.put("Gato", "Gato");
        mascota.put("Ave", "Ave");
        mascota.put("Exotico", "Exótico");
        mascota.put("Otro", "Otro");
        return mascota;
    }
}

