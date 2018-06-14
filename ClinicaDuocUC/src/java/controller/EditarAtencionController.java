/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import modelo.Atencion;
import modelo.AtencionValidar;
import modelo.Conectar;
import modelo.Mascota;
import modelo.MascotaValidar;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
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

@RequestMapping("editarAtencion.htm")

public class EditarAtencionController {
    AtencionValidar atencionValidar;
    private JdbcTemplate jdbcTemplate;

    public EditarAtencionController() {
        this.atencionValidar = new AtencionValidar();
        Conectar con = new Conectar();
        this.jdbcTemplate = new JdbcTemplate(con.conectar());
    }
    
    @RequestMapping(method=RequestMethod.GET)
    public ModelAndView atencion(HttpServletRequest request)
    {
        ModelAndView mav = new ModelAndView();
        int id = Integer.parseInt(request.getParameter("id"));
        Atencion datos = this.selectAtencion(id);
        mav.setViewName("editarAtencion");
        mav.addObject("atencion", new Atencion(id, datos.getDiagnostico(), datos.getCuidados(), datos.getReceta(), datos.getFechaAtencion(), datos.getIdMascota()));
        return mav;
    }
    
    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView atencion(@ModelAttribute("atencion") Atencion a, BindingResult result, SessionStatus status, HttpServletRequest request) {
        
        this.atencionValidar.validate(a, result);
        
        if (result.hasErrors()) {
            //Volvemos al formulario porque los datos ingresados por el usuario no son correctos
            //Es decir que se ejecutó la validación
            ModelAndView mav = new ModelAndView();
            int id=Integer.parseInt(request.getParameter("id"));
            Atencion datos = this.selectAtencion(id);
            mav.setViewName("editarAtencion");
            mav.addObject("atencion", new Atencion());
            return mav;
        } else 
        {
            int id=Integer.parseInt(request.getParameter("id"));
            this.jdbcTemplate.update("update atencion "
                                     + "set diagnostico=?,"
                                     + " cuidados=?,"
                                     + " receta=?,"
                                     + " fecha_atencion=?,"
                                     + " id_mascota=?"
                                     + " where "
                                     + "id_atencion=? ",
                                     a.getDiagnostico(),a.getCuidados(),a.getReceta(),a.getFechaAtencion(),a.getIdMascota() ,id);
            return new ModelAndView("redirect:/vistaAdmin.htm");
        }
    }

    public Atencion selectAtencion(int id) 
    {
        final Atencion ate = new Atencion();
        String quer = "SELECT * FROM atencion WHERE id_atencion='" + id+"'";
        return (Atencion) jdbcTemplate.query(quer, new ResultSetExtractor<Atencion>(){
            public Atencion extractData(ResultSet rs) throws SQLException, DataAccessException{
                if (rs.next()) {
                    ate.setDiagnostico(rs.getString("diagnostico"));
                    ate.setCuidados(rs.getString("cuidados"));
                    ate.setReceta(rs.getString("receta"));
                    ate.setFechaAtencion(rs.getString("fecha_atencion"));
                    ate.setIdMascota(rs.getInt("id_mascota"));
                }
                return ate;
            }
        });
    }
}