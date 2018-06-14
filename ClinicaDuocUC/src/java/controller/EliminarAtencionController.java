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
 * @author Pancho
 */

public class EliminarAtencionController {
    private JdbcTemplate jdbcTemplate;

    public EliminarAtencionController() {
        Conectar con = new Conectar();
        this.jdbcTemplate = new JdbcTemplate(con.conectar());
    }
    
    @RequestMapping("eliminarAtencion.htm")
    public ModelAndView atencion(HttpServletRequest request)
    {
        int id=Integer.parseInt(request.getParameter("id_atencion"));
        this.jdbcTemplate.update("delete from atencion " + "where " + "id_atencion=? ", id);
        return new ModelAndView("redirect:/vistaAdmin.htm");
    }
}