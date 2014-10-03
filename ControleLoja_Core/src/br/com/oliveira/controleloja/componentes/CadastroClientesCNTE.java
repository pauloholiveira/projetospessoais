package br.com.oliveira.controleloja.componentes;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import br.com.oliveira.controleloja.DAO.CidadeDAO;
import br.com.oliveira.controleloja.DAO.ClienteDAO;
import br.com.oliveira.controleloja.DAO.ClienteStatusDAO;
import br.com.oliveira.controleloja.DAO.DocumentoDAO;
import br.com.oliveira.controleloja.DAO.EstadoDAO;
import br.com.oliveira.controleloja.datamodels.Cidade;
import br.com.oliveira.controleloja.datamodels.Cliente;
import br.com.oliveira.controleloja.datamodels.Documento;
import br.com.oliveira.controleloja.datamodels.Estado;


@Component("CadastroClientesCNTE")
@Transactional
public class CadastroClientesCNTE {

	@Autowired
	private ClienteDAO clienteDAO;
	
	@Autowired
	private DocumentoDAO documentoDAO;
	
	@Autowired
	private ClienteStatusDAO clienteStatusDAO;
	
	@Autowired
	private CidadeDAO cidadeDAO;
	
	@Autowired
	private EstadoDAO estadoDAO;
	
	public CadastroClientesCNTE(){	
	}
	
	public ClienteDAO getClienteDAO() {
		return clienteDAO;
	}

	public void setClienteDAO(ClienteDAO clienteDAO) {
		this.clienteDAO = clienteDAO;
	}

	public ClienteStatusDAO getClienteStatusDAO() {
		return clienteStatusDAO;
	}

	public void setClienteStatusDAO(ClienteStatusDAO clienteStatusDAO) {
		this.clienteStatusDAO = clienteStatusDAO;
	}

	public CidadeDAO getCidadeDAO() {
		return cidadeDAO;
	}

	public void setCidadeDAO(CidadeDAO cidadeDAO) {
		this.cidadeDAO = cidadeDAO;
	}
	
	public List<Cidade> obterCidadesPorEstado(Estado estado) {
		return cidadeDAO.obterCidadesPorEstado(estado);
	}
	
	public List<Cidade> obterListaCidades() {	
		return cidadeDAO.loadAll();
	}
	
	public EstadoDAO getEstadoDAO() {
		return estadoDAO;
	}

	public void setEstadoDAO(EstadoDAO estadoDAO) {
		this.estadoDAO = estadoDAO;
	}
	
	public List<Estado> obterListaEstados() {	
		return estadoDAO.loadAll();
	}
	
	public DocumentoDAO getDocumentoDAO(){
		return documentoDAO;
	}
	
	public void setDocumentoDAO(DocumentoDAO documentoDAO){
		this.documentoDAO = documentoDAO;
	}
	
	public void inserirCliente(Cliente cl){
		/*Documento doc = cl.getDocumento();
		documentoDAO.store(doc);*/
		
		clienteDAO.store(cl);
	}
}
