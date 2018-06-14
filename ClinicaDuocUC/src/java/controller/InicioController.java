/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.List;
import modelo.Conectar;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author vina
 */
public class InicioController {
    private JdbcTemplate jdbcTemplate;
    
    public InicioController()
    {
        Conectar con = new Conectar();
        this.jdbcTemplate = new JdbcTemplate(con.conectar());
    }
    
    @RequestMapping("inicio.htm")
    public ModelAndView inicio()
    {
       ModelAndView mav = new ModelAndView();
       String sql="select * from cliente";
       List datos=this.jdbcTemplate.queryForList(sql);
       mav.addObject("datos", datos);
       mav.setViewName("inicio");
       return mav;
    }
    
    @RequestMapping("vistaAdmin.htm")
    public ModelAndView vistaAdmin()
    {
       ModelAndView mav = new ModelAndView();
       String sql="select * from cliente";
       List datos=this.jdbcTemplate.queryForList(sql);
       mav.addObject("datos", datos);
       mav.setViewName("vistaAdmin");
       return mav;
    }
    
    @RequestMapping("login.htm")
    public ModelAndView login(){
        ModelAndView mav = new ModelAndView();
        return mav;
    }
    
}
