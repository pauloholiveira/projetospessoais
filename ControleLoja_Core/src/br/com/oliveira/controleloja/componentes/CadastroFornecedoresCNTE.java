package br.com.oliveira.controleloja.componentes;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import br.com.oliveira.controleloja.DAO.CidadeDAO;
import br.com.oliveira.controleloja.DAO.EstadoDAO;
import br.com.oliveira.controleloja.DAO.FornecedorDAO;
import br.com.oliveira.controleloja.DAO.FornecedorStatusDAO;
import br.com.oliveira.controleloja.datamodels.Cidade;
import br.com.oliveira.controleloja.datamodels.Estado;
import br.com.oliveira.controleloja.datamodels.Fornecedor;


@Component("CadastroFornecedoresCNTE")
@Transactional
public class CadastroFornecedoresCNTE {

	@Autowired
	private FornecedorDAO fornecedorDAO;
	
	@Autowired
	private FornecedorStatusDAO fornecedorStatusDAO;
	
	@Autowired
	private CidadeDAO cidadeDAO;
	
	@Autowired
	private EstadoDAO estadoDAO;
	
	public CadastroFornecedoresCNTE(){	
	}
	
	public FornecedorDAO getFornecedorDAO() {
		return fornecedorDAO;
	}

	public void setFornecedorDAO(FornecedorDAO fornecedorDAO) {
		this.fornecedorDAO = fornecedorDAO;
	}

	public FornecedorStatusDAO getFornecedorStatusDAO() {
		return fornecedorStatusDAO;
	}

	public void setFornecedorStatusDAO(FornecedorStatusDAO fornecedorStatusDAO) {
		this.fornecedorStatusDAO = fornecedorStatusDAO;
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
	
	public void inserirFornecedor(Fornecedor fo) throws Exception{
		try{
			fornecedorDAO.store(fo);
		} catch(Exception ex){
			throw new Exception(ex.getMessage(), ex);
		}
	}
}