package br.com.paulo.controlehoras.controlers;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.paulo.controlehoras.dao.ExpedienteDAO;
import br.com.paulo.controlehoras.dao.OperacaoDAO;
import br.com.paulo.controlehoras.dao.TipoOperacaoDAO;
import br.com.paulo.controlehoras.dao.UsersDAO;
import br.com.paulo.controlehoras.model.Expediente;
import br.com.paulo.controlehoras.model.Operacao;
import br.com.paulo.controlehoras.model.OperacaoPK;
import br.com.paulo.controlehoras.model.TipoOperacao;
import br.com.paulo.controlehoras.model.Usuario;
import br.com.paulo.controlehoras.utils.Constantes;
import br.com.paulo.controlehoras.utils.LoginUtils;

@Controller
public class InicioControler {

	@Autowired
	private ExpedienteDAO expDAO;
	@Autowired
	private OperacaoDAO opDAO;
	@Autowired
	private UsersDAO usersDAO;
	@Autowired
	private TipoOperacaoDAO tipoDAO;
	
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String index(Model model) {
		
		Usuario usuario = LoginUtils.obterUsuarioLogado(usersDAO, SecurityContextHolder.getContext());
		
		Expediente expediente = expDAO.getLastExpedienteByUsuario(usuario);
				
		if(expediente != null){
			Map<String, String> listaStatusBotoes = obterStatusBotoes(expediente.getStatus());
			
			model.addAttribute("id_expediente", expediente.getId());
			model.addAttribute("status_botoes", listaStatusBotoes);
			model.addAttribute("usuarioLogado", usuario.getNome());
			
		} else{
			Map<String, String> listaStatusBotoes = obterStatusBotoes(Constantes.STATUS_EXPEDIENTE.EM_DESCANSO);
			
			model.addAttribute("id_expediente", -1);
			model.addAttribute("status_botoes", listaStatusBotoes);
			model.addAttribute("usuarioLogado", usuario.getNome());
		}
		
		return "index";
	}
	
	@RequestMapping(value="/novaOperacao", method=RequestMethod.POST)
	public String processRegistration(Model model, TipoOperacao tipoOperacao, @RequestParam("id_expediente") int id_expediente) {
		Expediente expediente = null;
		if(tipoOperacao.getDescricao().equals(Constantes.TIPOS_OPERACOES.INICIO_EXPEDIENTE.descricao())){
			Usuario usuario = LoginUtils.obterUsuarioLogado(usersDAO, SecurityContextHolder.getContext());
			
			expediente = new Expediente();
			expediente.setCpf_usuario(usuario);
			expediente.setStatus(tipoOperacao.getId());
			expDAO.save(expediente);
			
			id_expediente = expediente.getId();
		} 
		
		Operacao operacao = new Operacao(new OperacaoPK(tipoOperacao.getId(), id_expediente));
		opDAO.save(operacao);
		
		expediente = expDAO.getById(id_expediente);
		expediente.setStatus(getStatusByTipoOperacao(tipoOperacao));
		expDAO.update(expediente);
		
		return "redirect:/index";
	}
	
	private Map<String, String> obterStatusBotoes(int status_expediente){
		Map<String, String> statusBotoes = new HashMap<String, String>();
		
		switch(status_expediente){
		case Constantes.STATUS_EXPEDIENTE.EM_DESCANSO:{
			statusBotoes.put("inicio_expediente", "");
			statusBotoes.put("inicio_almoco", "disabled");
			statusBotoes.put("fim_almoco", "disabled");
			statusBotoes.put("inicio_intervalo", "disabled");
			statusBotoes.put("fim_intervalo", "disabled");
			statusBotoes.put("fim_expediente", "disabled");
			break;
		}
		case Constantes.STATUS_EXPEDIENTE.EM_EXPEDIENTE:{
			statusBotoes.put("inicio_expediente", "disabled");
			statusBotoes.put("inicio_almoco", "");
			statusBotoes.put("fim_almoco", "disabled");
			statusBotoes.put("inicio_intervalo", "");
			statusBotoes.put("fim_intervalo", "disabled");
			statusBotoes.put("fim_expediente", "");
			break;
		}
		case Constantes.STATUS_EXPEDIENTE.EM_ALMOCO:{
			statusBotoes.put("inicio_expediente", "disabled");
			statusBotoes.put("inicio_almoco", "disabled");
			statusBotoes.put("fim_almoco", "");
			statusBotoes.put("inicio_intervalo", "disabled");
			statusBotoes.put("fim_intervalo", "disabled");
			statusBotoes.put("fim_expediente", "disabled");
			break;
		}
		case Constantes.STATUS_EXPEDIENTE.EM_INTERVALO:{
			statusBotoes.put("inicio_expediente", "disabled");
			statusBotoes.put("inicio_almoco", "disabled");
			statusBotoes.put("fim_almoco", "disabled");
			statusBotoes.put("inicio_intervalo", "disabled");
			statusBotoes.put("fim_intervalo", "");
			statusBotoes.put("fim_expediente", "disabled");
			break;
		}
		
		default:
			break;
		}
		
		
		return statusBotoes;
		
	}
	
	private int getStatusByTipoOperacao(TipoOperacao tipo){
		int status = 0;
		switch(tipo.getId()){
			
			case 1:{
				status = Constantes.STATUS_EXPEDIENTE.EM_EXPEDIENTE;
				break;
			}
			
			case 2:{
				status = Constantes.STATUS_EXPEDIENTE.EM_DESCANSO;
				break;
			}
			
			case 3:{
				status = Constantes.STATUS_EXPEDIENTE.EM_ALMOCO;
				break;
			}
			
			case 4:{
				status = Constantes.STATUS_EXPEDIENTE.EM_EXPEDIENTE;
				break;
			}
			
			case 5:{
				status = Constantes.STATUS_EXPEDIENTE.EM_INTERVALO;
				break;
			}
			
			case 6:{
				status = Constantes.STATUS_EXPEDIENTE.EM_EXPEDIENTE;
				break;
			}
			
			default: {
				break;
			}
		}
		
		return status;
	}
}
