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
public class EliminarMascotaController {
    private JdbcTemplate jdbcTemplate;

    public EliminarMascotaController() {
        Conectar con = new Conectar();
        this.jdbcTemplate = new JdbcTemplate(con.conectar());
    }
    
    @RequestMapping("eliminarMascota.htm")
    public ModelAndView mascota(HttpServletRequest request)
    {
        int id=Integer.parseInt(request.getParameter("id_mascota"));
        this.jdbcTemplate.update("delete from mascota " + "where " + "id_mascota=? ", id);
        return new ModelAndView("redirect:/vistaAdmin.htm");
    }
}
