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

@RequestMapping("editarCliente.htm")

public class EditarController {
    ClienteValidacion clienteValidacion;
    private JdbcTemplate jdbcTemplate;

    public EditarController() {
        this.clienteValidacion = new ClienteValidacion();
        Conectar con = new Conectar();
        this.jdbcTemplate = new JdbcTemplate(con.conectar());
    }
    
    @RequestMapping(method=RequestMethod.GET)
    public ModelAndView cliente(HttpServletRequest request)
    {
        ModelAndView mav = new ModelAndView();
        int id = Integer.parseInt(request.getParameter("id"));
        Cliente datos = this.selectCliente(id);
        mav.setViewName("editarCliente");
        mav.addObject("cliente", new Cliente(id, datos.getRut(), datos.getNombre(), datos.getDireccion(), datos.getCorreo(), datos.getTelefono()));
        return mav;
    }
    
    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView cliente(@ModelAttribute("cliente") Cliente c, BindingResult result, SessionStatus status, HttpServletRequest request) {
        
        this.clienteValidacion.validate(c, result);
        
        if (result.hasErrors()) {
            //Volvemos al formulario porque los datos ingresados por el usuario no son correctos
            //Es decir que se ejecutó la validación
            ModelAndView mav = new ModelAndView();
            int id=Integer.parseInt(request.getParameter("id"));
            Cliente datos = this.selectCliente(id);
            mav.setViewName("editarCliente");
            mav.addObject("cliente", new Cliente());
            return mav;
        } else 
        {
            int id=Integer.parseInt(request.getParameter("id"));
            this.jdbcTemplate.update("update cliente "
                                     + "set rut=?,"
                                     + " nombre=?,"
                                     + " direccion=?,"
                                     + " correo=?,"
                                     + " telefono=?"
                                     + " where "
                                     + "id_cliente=? ",
                                     c.getRut(),c.getNombre(),c.getDireccion(),c.getCorreo(),c.getTelefono(),id);
            return new ModelAndView("redirect:/vistaAdmin.htm");
        }
    }

    public Cliente selectCliente(int id) 
    {
        final Cliente clt = new Cliente();
        String quer = "SELECT * FROM cliente WHERE id_cliente='" + id+"'";
        return (Cliente) jdbcTemplate.query(quer, new ResultSetExtractor<Cliente>(){
            public Cliente extractData(ResultSet rs) throws SQLException, DataAccessException{
                if (rs.next()) {
                    clt.setRut(rs.getString("rut"));
                    clt.setNombre(rs.getString("nombre"));
                    clt.setDireccion(rs.getString("direccion"));
                    clt.setCorreo(rs.getString("correo"));
                    clt.setTelefono(rs.getInt("telefono"));
                }
                return clt;
            }
        });
    }
}