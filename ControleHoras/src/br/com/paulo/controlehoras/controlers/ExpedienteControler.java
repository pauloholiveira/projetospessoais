package br.com.paulo.controlehoras.controlers;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

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
import br.com.paulo.controlehoras.model.Usuario;
import br.com.paulo.controlehoras.model.UsuarioPK;
import br.com.paulo.controlehoras.utils.Constantes;
import br.com.paulo.controlehoras.utils.Constantes.TIPOS_OPERACOES;

@Controller
public class ExpedienteControler {

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
		if(!model.containsAttribute("expediente")){
			model.addAttribute("expediente", -1);
		}
		return "index";
	}
	
	@RequestMapping(value="/novaOperacao", method=RequestMethod.POST)
	public String processRegistration(Model model, String descricao, @RequestParam("expediente") int expediente) {
		int id_expediente = 0;
		
		if(descricao.equals(Constantes.TIPOS_OPERACOES.INICIO_EXPEDIENTE.descricao())){
			Usuario usuario = null;
			Expediente novo_expediente = new Expediente();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			try {
				usuario = usuarioDAO.getById(new UsuarioPK("31973777886", sdf.parse("1984-04-18")));
				
				novo_expediente.setCpf_usuario(usuario);
				novo_expediente.setDataNascimento(sdf.parse("1984-04-18"));
			} catch (ParseException e) {
				e.printStackTrace();
			}
			
			expDAO.save(novo_expediente);
			id_expediente=novo_expediente.getId();
			expediente = id_expediente;
		}
		
		if(expediente!=-1){
			id_expediente = expediente;
		}
		
		TIPOS_OPERACOES tipo = Constantes.TIPOS_OPERACOES.getByDescricao(descricao);
		Operacao operacao = new Operacao(new OperacaoPK(tipo.tipo(), id_expediente));
		operacao.setData_hora(new Date());
		
		opDAO.save(operacao);
		
		//Deve retornar para a view o id do expediente.
		model.addAttribute("expediente", id_expediente);
		
		return "index";
	}
}
