/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import modelo.Cliente;
import modelo.Conectar;
import modelo.Mascota;
import modelo.MascotaValidar;
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
@RequestMapping("mascota.htm")

public class MascotaController {

    MascotaValidar mascotaValidar;
    private JdbcTemplate jdbcTemplate;

    public MascotaController() {
        this.mascotaValidar = new MascotaValidar();
        Conectar con = new Conectar();
        this.jdbcTemplate = new JdbcTemplate(con.conectar());
    }

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView mascota() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("mascota");
        mav.addObject("mascota", new Mascota());
        return mav;
    }

    //Recibimos y validamos los datos de nuestro formulario
    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView mascota(@ModelAttribute("mascota") Mascota m, BindingResult result, SessionStatus status) {

        this.mascotaValidar.validate(m, result);
        if (result.hasErrors()) {
            //Volvemos al formulario porque los datos ingresados por el usuario no son correctos
            //Es decir que se ejecutó la validación
            ModelAndView mav = new ModelAndView();
            mav.setViewName("mascota");
            mav.addObject("mascota", new Mascota());
            return mav;
        } else {
            this.jdbcTemplate.update("insert into mascota (nombre, sexo, especie, raza, fecha_registro, id_cliente ) values (?,?,?,?,?,?)",
                    m.getNombre(), m.getSexo(), m.getEspecie(), m.getRaza(), m.getFechaRegistro(), m.getIdCliente());

            return new ModelAndView("redirect:/vistaAdmin.htm");
        }
    }

    //Método para poblar nuestro select
    @ModelAttribute("sexoLista")
    public Map<String, String> listadoSexo() {
        Map<String, String> sexo = new LinkedHashMap<>();
        sexo.put("Macho", "Macho");
        sexo.put("Hembra", "Hembra");
        return sexo;
    }

    @ModelAttribute("especieLista")
    public Map<String, String> listadoEspecie() {
        Map<String, String> especie = new LinkedHashMap<>();
        especie.put("Perro", "Perro");
        especie.put("Gato", "Gato");
        especie.put("Ave", "Ave");
        especie.put("Exótico", "Exótico");
        especie.put("Acuático", "Acuático");
        especie.put("Otro", "Otro");
        return especie;
    }

}
