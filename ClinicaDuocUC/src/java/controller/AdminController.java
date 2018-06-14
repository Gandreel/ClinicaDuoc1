/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.List;
import modelo.Conectar;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Pancho
 */

@Controller


public class AdminController {

    private JdbcTemplate jdbcTemplate;
    
    public AdminController() 
    {
        Conectar con = new Conectar();
        this.jdbcTemplate = new JdbcTemplate(con.conectar());
    }
    
    
    
    @RequestMapping("vistaAdmin.htm")
    public ModelAndView datos()
    {
        ModelAndView mav = new ModelAndView();
        String sql1="select * from cliente";
        String sql2="select * from mascota";
        String sql3="select * from atencion";
        List datosCliente = this.jdbcTemplate.queryForList(sql1);
        List datosMascota = this.jdbcTemplate.queryForList(sql2);
        List datosAtencion = this.jdbcTemplate.queryForList(sql3);
        mav.addObject("datosC", datosCliente);
        mav.addObject("datosM", datosMascota);
        mav.addObject("datosA", datosAtencion);
        mav.setViewName("vistaAdmin");
        return mav;
    }
}
