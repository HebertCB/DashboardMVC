/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.com.dashboard.control;

import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import pe.com.dashboard.modelo.Usuario;
import pe.com.dashboard.servicio.UsuarioServicioI;

/**
 *
 * @author Student
 */
@Controller
public class UsuarioControl { 
    
    @Autowired
    private MessageSource messageSource;
    @Autowired
    UsuarioServicioI usuarioServicioI;
    
    @RequestMapping(value = "/locate", method = RequestMethod.GET)
    public String getLocatePage(){
        return "my-locale";
    }

    @RequestMapping(value = {"/"}, method = RequestMethod.GET)
    public ModelAndView inicio(Locale locale, Map<String,Object> model){
        String welcome=messageSource.getMessage("welcome.greeting", new Object[]{"Hebert Coazaca"}, locale);
        model.put("message", welcome);
        return new ModelAndView("m_home");
    }
    
    @RequestMapping(value = {"/inbox"}, method = RequestMethod.GET)
    public ModelAndView inicioUno(){        
        return new ModelAndView("m_inbox");
    } 
    
    @RequestMapping(value = {"/updates"}, method = RequestMethod.GET)
    public ModelAndView inicioDos(){        
        return new ModelAndView("m_updates");
    }
    
    @RequestMapping(value = {"/team"}, method = RequestMethod.GET)
    public ModelAndView inicioTres(Map<String,Object> model){
        List<Usuario> lista = usuarioServicioI.listarEntidad();
        model.put("listaUsuario", lista);
        return new ModelAndView("m_team");
    }
}
