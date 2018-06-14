/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import modelo.Atencion;
import modelo.AtencionValidar;
import modelo.Conectar;
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
@RequestMapping("atencion.htm")

public class AtencionController {
    AtencionValidar atencionValidar;
    private JdbcTemplate jdbcTemplate;

    public AtencionController() {
        this.atencionValidar = new AtencionValidar();
        Conectar con = new Conectar();
        this.jdbcTemplate = new JdbcTemplate(con.conectar());
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView atencion() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("atencion");
        mav.addObject("atencion", new Atencion());
        
        return mav;
    }

    //Recibimos y validamos los datos de nuestro formulario
    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView atencion(@ModelAttribute("atencion") Atencion a, BindingResult result, SessionStatus status) {

        this.atencionValidar.validate(a, result);

        if (result.hasErrors()) {
            //Volvemos al formulario porque los datos ingresados por el usuario no son correctos
            //Es decir que se ejecutó la validación
            ModelAndView mav = new ModelAndView();
            mav.setViewName("atencion");
            mav.addObject("atencion", new Atencion());
            return mav;
        } else {
            this.jdbcTemplate.update("insert into atencion (diagnostico, cuidados, receta, fecha_atencion, id_mascota ) values (?,?,?,?,?)",
                    a.getDiagnostico(), a.getCuidados(), a.getReceta(), a.getFechaAtencion(), a.getIdMascota());

            return new ModelAndView("redirect:/vistaAdmin.htm");
        }
    }
   
}