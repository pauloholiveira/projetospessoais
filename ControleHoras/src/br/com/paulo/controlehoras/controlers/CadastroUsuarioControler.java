package br.com.paulo.controlehoras.controlers;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.paulo.controlehoras.dao.UserRolesDAO;
import br.com.paulo.controlehoras.dao.UsersDAO;
import br.com.paulo.controlehoras.dao.UsuarioDAO;
import br.com.paulo.controlehoras.model.UserRoles;
import br.com.paulo.controlehoras.model.Users;
import br.com.paulo.controlehoras.model.Usuario;
import br.com.paulo.controlehoras.model.UsuarioPK;

@Controller
public class CadastroUsuarioControler {

	@Autowired
	private UserRolesDAO userRolesDAO;
	
	@Autowired
	private UsersDAO usersDAO;
	@Autowired
	private UsuarioDAO usuarioDAO;
	
	@RequestMapping(value="/cadastroUsuarios", method = RequestMethod.GET)
	public String cadastroUsuarios(Model model) {
		Usuario usuario = new Usuario(new UsuarioPK());
		
		Users user = new Users();
		user.setUserRoles(new UserRoles());		
		usuario.setUser(user);
		
		model.addAttribute("usuario", usuario);
		return "cadastroUsuarios";
	}
	
	@RequestMapping(value="/realizarCadastro", method = RequestMethod.POST)
	public String cadastrar(Model model, Usuario usuario) {
		Users users = usuario.getUser();
		//UserRoles roles = users.getUserRoles();
		UserRoles roles = new UserRoles();
		roles.setUser(users.getUser());
		roles.setUserRole("Usuario");
		
		usersDAO.save(users);
		
		userRolesDAO.save(roles);
		
		usuarioDAO.save(usuario);
		
		return "redirect:/cadastroUsuarios";
	}
}
