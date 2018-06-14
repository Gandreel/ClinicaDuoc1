/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import javax.servlet.http.HttpServletRequest;
import modelo.Conectar;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author vina
 */
public class EliminarController {
    private JdbcTemplate jdbcTemplate;

    public EliminarController() {
        Conectar con = new Conectar();
        this.jdbcTemplate = new JdbcTemplate(con.conectar());
    }
    
    @RequestMapping("eliminar.htm")
    public ModelAndView cliente(HttpServletRequest request)
    {
        int id=Integer.parseInt(request.getParameter("id_cliente"));
        this.jdbcTemplate.update("delete from cliente " + "where " + "id_cliente=? ", id);
        return new ModelAndView("redirect:/vistaAdmin.htm");
    }
    
}
