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
import modelo.Cliente;
import modelo.ClienteValidacion;
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

@RequestMapping("editarMascota.htm")

public class EditarMascotaController {
    MascotaValidar mascotaValidar;
    private JdbcTemplate jdbcTemplate;

    public EditarMascotaController() {
        this.mascotaValidar = new MascotaValidar();
        Conectar con = new Conectar();
        this.jdbcTemplate = new JdbcTemplate(con.conectar());
    }
    
    @RequestMapping(method=RequestMethod.GET)
    public ModelAndView mascota(HttpServletRequest request)
    {
        ModelAndView mav = new ModelAndView();
        int id = Integer.parseInt(request.getParameter("id"));
        Mascota datos = this.selectMascota(id);
        mav.setViewName("editarMascota");
        mav.addObject("mascota", new Mascota(id, datos.getNombre(), datos.getSexo(), datos.getEspecie(), datos.getRaza(), datos.getFechaRegistro(), datos.getIdCliente()));
        return mav;
    }
    
    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView mascota(@ModelAttribute("mascota") Mascota m, BindingResult result, SessionStatus status, HttpServletRequest request) {
        
        this.mascotaValidar.validate(m, result);
        
        if (result.hasErrors()) {
            //Volvemos al formulario porque los datos ingresados por el usuario no son correctos
            //Es decir que se ejecutó la validación
            ModelAndView mav = new ModelAndView();
            int id=Integer.parseInt(request.getParameter("id"));
            Mascota datos = this.selectMascota(id);
            mav.setViewName("editarMascota");
            mav.addObject("mascota", new Mascota());
            return mav;
        } else 
        {
            int id=Integer.parseInt(request.getParameter("id"));
            this.jdbcTemplate.update("update mascota "
                                     + "set nombre=?,"
                                     + " sexo=?,"
                                     + " especie=?,"
                                     + " raza=?,"
                                     + " fecha_registro=?,"
                                     + " id_cliente=?"
                                     + " where "
                                     + "id_mascota=? ",
                                     m.getNombre(),m.getSexo(),m.getEspecie(),m.getRaza(),m.getFechaRegistro(), m.getIdCliente() ,id);
            return new ModelAndView("redirect:/vistaAdmin.htm");
        }
    }

    public Mascota selectMascota(int id) 
    {
        final Mascota msc = new Mascota();
        String quer = "SELECT * FROM mascota WHERE id_mascota='" + id+"'";
        return (Mascota) jdbcTemplate.query(quer, new ResultSetExtractor<Mascota>(){
            public Mascota extractData(ResultSet rs) throws SQLException, DataAccessException{
                if (rs.next()) {
                    msc.setNombre(rs.getString("nombre"));
                    msc.setSexo(rs.getString("sexo"));
                    msc.setEspecie(rs.getString("especie"));
                    msc.setRaza(rs.getString("raza"));
                    msc.setFechaRegistro(rs.getString("fecha_registro"));
                    msc.setIdCliente(rs.getInt("id_cliente"));
                }
                return msc;
            }
        });
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