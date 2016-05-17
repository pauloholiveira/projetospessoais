package br.com.paulo.controlehoras.controlers;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.paulo.controlehoras.dao.UserRolesDAO;
import br.com.paulo.controlehoras.dao.UsersDAO;
import br.com.paulo.controlehoras.dao.UsuarioDAO;
import br.com.paulo.controlehoras.model.UserRoles;
import br.com.paulo.controlehoras.model.Users;
import br.com.paulo.controlehoras.model.Usuario;
import br.com.paulo.controlehoras.model.UsuarioPK;
import br.com.paulo.controlehoras.service.SimpleRegistrationService;
import br.com.paulo.controlehoras.utils.GenerateValidation;
import br.com.paulo.controlehoras.utils.LoginUtils;

@Controller
public class CadastroUsuarioControler {

	@Autowired
	private UserRolesDAO userRolesDAO;
	@Autowired
	private UsersDAO usersDAO;
	@Autowired
	private UsuarioDAO usuarioDAO;
	
	@Autowired
	SimpleRegistrationService mail;
	
	@Autowired
	private HttpServletRequest request;
	
	public SimpleRegistrationService getMail() {
		return mail;
	}

	public void setMail(SimpleRegistrationService mail) {
		this.mail = mail;
	}
	

	@RequestMapping(value="/cadastroUsuarios", method = RequestMethod.GET)
	public String cadastroUsuarios(Model model, @PathParam(value="sucesso") String sucesso) {
		Usuario usuario = new Usuario(new UsuarioPK());
		
		Users user = new Users();
		user.setUserRoles(new UserRoles());
		usuario.setUser(user);
		
		model.addAttribute("usuario", usuario);
		if(sucesso != null){
			model.addAttribute("msg", "Usuario Cadastrado com Sucesso. Acesse seu E-mail Cadastrado para ativar sua conta");
		}
		
		return "cadastroUsuarios";
	}
	
	@RequestMapping(value="/realizarCadastro", method = RequestMethod.POST)
	public String cadastrar(Model model, Usuario usuario) {
		
		Users users = usuario.getUser();
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String password = users.getPassword();
		password = passwordEncoder.encode(password);
		users.setPassword(password);
		users.setEnabled(false); 
		users.setValidation(GenerateValidation.keyValidation());
        
        mail.register(usuario, request);
		
		UserRoles roles = new UserRoles();
		roles.setUser(users.getUser());
		roles.setUserRole("Usuario");
		
		usersDAO.save(users);
		userRolesDAO.save(roles);
		usuarioDAO.save(usuario);
		
		return "redirect:/sucessoCadastro";
	}
	
	@RequestMapping(value="/edicaoConta", method = RequestMethod.GET)
	public String edicaoConta(Model model) {
		Usuario usuario = LoginUtils.obterUsuarioLogado(usersDAO, SecurityContextHolder.getContext());
		
		model.addAttribute("usuario", usuario);
		
		return "edicaoConta";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
	    SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
	    sdf.setLenient(true);
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
	}
	
	
	@RequestMapping(value="/alterarConta", method = RequestMethod.POST)
	public String alterarConta(Model model, Usuario usuario) {
		Users users_banco = usersDAO.getById(usuario.getUser().getUser());
		
		if(usuario.getUser().getPassword()!= null && !usuario.getUser().getPassword().equals("")){
			BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
			String password = usuario.getUser().getPassword();
			password = passwordEncoder.encode(password);
			users_banco.setPassword(password);
		}
		usersDAO.update(users_banco);
		
		Usuario usuario_banco = usuarioDAO.getById(usuario.getUsuarioPK());
		
		usuario_banco.setEmail(usuario.getEmail());
		usuario_banco.setNome(usuario.getNome());		
		usuarioDAO.update(usuario_banco);
		
		return "redirect:/usuarioAlteradoSucesso";
	}
	
	
	@RequestMapping(value="/sucessoCadastro", method = RequestMethod.GET)
	public String sucessoCadastro(Model model) {
		
		return "sucessoCadastro";
	}
	
	@RequestMapping(value="/activate", method = RequestMethod.GET)
	public String ativar(Model model, @PathParam(value="key") String key) {
		Users users = usersDAO.getByValidation(key);
		
		if(users!= null){
			if(users.isEnabled()){
				return "redirect:/login?invalid";
			} else{
				users.setEnabled(true);
				usersDAO.update(users);
			}
			
		} else {
			return "redirect:/login?invalid";
		}
		
		return "redirect:/contaAtivada";
	}
	
	@RequestMapping(value="/contaAtivada", method = RequestMethod.GET)
	public String ativada(Model model) {
		model.addAttribute("time", 6);
		model.addAttribute("caminho", "login");
		
		return "contaAtivada";
	}
	
	@RequestMapping(value="/usuarioAlteradoSucesso", method = RequestMethod.GET)
	public String usuarioAlteradoSucesso(Model model) {
		model.addAttribute("time", 6);
		model.addAttribute("caminho", "index");		
		return "usuarioAlteradoSucesso";
	}
}
