/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import modelo.Login;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
 
@Controller
public class LoginController {
    @RequestMapping(value = "/login.htm", method = RequestMethod.GET)
    public String init(Model model) {
        model.addAttribute("msg", "Please Enter Your Login Details");
        return "login";
    }
 
    @RequestMapping(method = RequestMethod.POST)
    public String submit(Model model, @ModelAttribute("login") Login login) {
        if (login != null && login.getUserName() != null & login.getPassword() != null) {
            if (login.getUserName().equals("Admin") && login.getPassword().equals("Admin123")) {
                model.addAttribute("msg", "Bienvenido" + login.getUserName());
                return ("redirect:/vistaAdmin.htm");
            } else {
                model.addAttribute("error", "El usuario y/o contraseña son incorrectos");
                return "login";
            }
        } 
        return "login";
    }
}
