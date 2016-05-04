package br.com.paulo.controlehoras.controlers;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.paulo.controlehoras.dao.ExpedienteDAO;
import br.com.paulo.controlehoras.dao.OperacaoDAO;
import br.com.paulo.controlehoras.dao.TipoOperacaoDAO;
import br.com.paulo.controlehoras.dao.UsersDAO;
import br.com.paulo.controlehoras.dao.UsuarioDAO;
import br.com.paulo.controlehoras.model.Expediente;
import br.com.paulo.controlehoras.model.Operacao;
import br.com.paulo.controlehoras.model.OperacaoPK;
import br.com.paulo.controlehoras.model.TipoOperacao;
import br.com.paulo.controlehoras.model.Usuario;
import br.com.paulo.controlehoras.model.UsuarioPK;
import br.com.paulo.controlehoras.utils.Constantes;

@Controller
public class InicioControler {

	@Autowired
	private ExpedienteDAO expDAO;
	
	@Autowired
	private OperacaoDAO opDAO;
	
	@Autowired
	private TipoOperacaoDAO tipoopDAO;
	
	@Autowired
	private UsuarioDAO usuarioDAO;

	@Autowired
	private UsersDAO usersDAO;
	
	
	public ExpedienteDAO getExpDAO() {
		return expDAO;
	}

	public void setExpDAO(ExpedienteDAO expDAO) {
		this.expDAO = expDAO;
	}
	
	public OperacaoDAO getOpDAO() {
		return opDAO;
	}

	public void setOpDAO(OperacaoDAO expDAO) {
		this.opDAO = expDAO;
	}
	
	@RequestMapping(value={"/", "/index"}, method=RequestMethod.GET)
	public String index(Model model) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Usuario usuario = null;
		try {
			usuario = usuarioDAO.getById(new UsuarioPK("31973777886", sdf.parse("1984-04-18")));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		Expediente expediente = expDAO.getLastExpedienteByUsuario(usuario);
		
		if(!model.containsAttribute("id_expediente")){
			if(expediente != null){
				model.addAttribute("id_expediente", expediente.getId());
				
				List<Operacao> operacoes = expediente.getOperacoes();
				model.addAttribute("lista_operacoes", operacoes);
			} else{
				model.addAttribute("id_expediente", 0);
				
				List<Operacao> operacoes = new ArrayList<Operacao>();
				model.addAttribute("lista_operacoes", operacoes);
			}
			
		}
		
		model.addAttribute("tipoOperacao", new TipoOperacao());
		
		return "index";
	}
	
	@RequestMapping(value="/novaOperacao", method=RequestMethod.POST)
	public String processRegistration(Model model, TipoOperacao tipoOperacao, @RequestParam("id_expediente") int id_expediente) {
		Expediente expediente = null;
		if(tipoOperacao.getDescricao().equals(Constantes.TIPOS_OPERACOES.INICIO_EXPEDIENTE.descricao())){
			
			expediente = new Expediente();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			try {
				Usuario usuario = new Usuario("31973777886", sdf.parse("1984-04-18"));
			
				expediente.setCpf_usuario(usuario);
			} catch (ParseException e) {
				e.printStackTrace();
			}
			
			expDAO.save(expediente);
			
			id_expediente = expediente.getId();
		} 
		
		Operacao operacao = new Operacao(new OperacaoPK(tipoOperacao.getId(), id_expediente));
		operacao.setData_hora(new Date());
		opDAO.save(operacao);
		
		return "redirect:/index";
	}
}
