package br.com.paulo.controlehoras.controlers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class WelcomeControler {
	@RequestMapping(value={"/", "/welcome"}, method=RequestMethod.GET)
	public String welcome(Model model) {
		return "welcome";
	}
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public Model login(Model model, @RequestParam(name="logout", required=false) String logout , @RequestParam(name="error", required=false) String error) {
		if(logout!= null){
			model.addAttribute("msg", "Log Out realizado com Sucesso.");
		}
		
		if(error!= null){
			model.addAttribute("msg", "Não foi possível realizar login Usuario e/ou senha inválidos.");
		}
		return model;

	}
	
	 @RequestMapping(value="/logout", method = RequestMethod.GET)
	    public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
	        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	        if (auth != null){    
	            new SecurityContextLogoutHandler().logout(request, response, auth);
	        }
	        return "redirect:/login";
	    }
}
