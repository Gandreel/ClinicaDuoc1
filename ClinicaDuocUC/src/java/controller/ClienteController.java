/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
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
@RequestMapping("cliente.htm")

public class ClienteController {
    ClienteValidacion clienteValidacion;
    private JdbcTemplate jdbcTemplate;

    public ClienteController() {
        this.clienteValidacion = new ClienteValidacion();
        Conectar con = new Conectar();
        this.jdbcTemplate = new JdbcTemplate(con.conectar());
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView cliente() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("cliente");
        mav.addObject("cliente", new Cliente());
        
        return mav;
    }

    //Recibimos y validamos los datos de nuestro formulario
    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView cliente(@ModelAttribute("cliente") Cliente c, BindingResult result, SessionStatus status) {

        this.clienteValidacion.validate(c, result);

        if (result.hasErrors()) {
            //Volvemos al formulario porque los datos ingresados por el usuario no son correctos
            //Es decir que se ejecutó la validación
            ModelAndView mav = new ModelAndView();
            mav.setViewName("cliente");
            mav.addObject("cliente", new Cliente());
            return mav;
        } else {
            this.jdbcTemplate.update("insert into cliente (rut, nombre, direccion, correo, telefono ) values (?,?,?,?,?)",
                    c.getRut(), c.getNombre(), c.getDireccion(), c.getCorreo(), c.getTelefono());

            return new ModelAndView("redirect:/vistaAdmin.htm");
        }
    }
   
}
