package br.com.oliveira.controleloja.mbs;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.faces.event.ValueChangeEvent;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import br.com.oliveira.controleloja.componentes.CadastroFornecedoresCNTE;
import br.com.oliveira.controleloja.datamodels.Cidade;
import br.com.oliveira.controleloja.datamodels.Documentos;
import br.com.oliveira.controleloja.datamodels.Estado;
import br.com.oliveira.controleloja.datamodels.Fornecedor;
import br.com.oliveira.controleloja.datamodels.FornecedorStatus;

@Component("CadastroFornecedorMB")
@Scope("view")
public class CadastroFornecedorMB {
	
	@Resource
	private CadastroFornecedoresCNTE cadastroFornecedoresCNTE;
	
	private Fornecedor fornecedor;

	private List<Cidade> lista_cidades = new ArrayList<Cidade>();
	private Cidade selectedcidade;
	
	private List<Estado> lista_estados = new ArrayList<Estado>();
	private Estado selectedestado;
	
	private String tipo;
	private String cpf;
	private String cnpj;
	
	private boolean renderCPF;
	private boolean renderCNPJ;
	
	
	public CadastroFornecedorMB() {
		this.fornecedor = new Fornecedor();
		tipo = "CPF:";
		renderCPF = true;
	}

	public CadastroFornecedoresCNTE getCadastroFornecedoresCNTE() {
		return cadastroFornecedoresCNTE;
	}

	public void setCadastroFornecedoresCNTE(CadastroFornecedoresCNTE cadastroFornecedoresCNTE) {
		this.cadastroFornecedoresCNTE = cadastroFornecedoresCNTE;
	}
	
	public Fornecedor getFornecedor() {
		return fornecedor;
	}

	public void setFornecedor(Fornecedor fornecedor) {
		this.fornecedor = fornecedor;
	}
	
	public List<Cidade> getLista_cidades() {
		return lista_cidades;
	}
	
	public List<Cidade> prencherLista_cidades(ValueChangeEvent event) {
		lista_cidades.clear();
		Estado teste = (Estado)event.getNewValue();		
		lista_cidades = cadastroFornecedoresCNTE.obterCidadesPorEstado(teste);
		return lista_cidades;
	}
	
	public void setLista_cidades(List<Cidade> lista_cidades) {
		this.lista_cidades = lista_cidades;
	}
	
	public Cidade getSelectedcidade() {
		return selectedcidade;
	}

	public void setSelectedcidade(Cidade selectedcidade) {
		this.selectedcidade = selectedcidade;
	}
	
	public List<Estado> getLista_estados() {
		lista_estados = cadastroFornecedoresCNTE.obterListaEstados();
		return lista_estados;
	}	

	public void setLista_estados(List<Estado> lista_estados) {
		this.lista_estados = lista_estados;
	}
	
	public Estado getSelectedestado() {
		return selectedestado;
	}

	public void setSelectedestado(Estado selectedestado) {
		this.selectedestado = selectedestado;
	}

	public void gravar(){
		Date data_cadastro = new Date();
		
		fornecedor.setDataCadastro(data_cadastro);
		FornecedorStatus status = new FornecedorStatus();
		status.setId(1); //Gerar arquivo de constantes
		fornecedor.setFornecedorStatus(status);
		
		Documentos documento= new Documentos();
		
		documento.setTipo(tipo.replace(":", ""));
		
		if(tipo.replace(":", "").equals("CPF")){
			documento.setValor(this.cpf);		
		} else{
			documento.setValor(this.cnpj);
		}
		
		fornecedor.setDocumentos(documento);
		try{
			cadastroFornecedoresCNTE.inserirFornecedor(fornecedor);
			FacesContext ctx = FacesContext.getCurrentInstance();  
	        ctx.addMessage("messages", new FacesMessage("Fornecedor cadastrado com sucesso."));
		} catch(Exception ex){
			FacesContext ctx = FacesContext.getCurrentInstance();  
	        ctx.addMessage("messages", new FacesMessage("Erro ao Cadastrar Fornecedor.", "Fornecedor Já Cadastrado"));  
		}
	}
	
	

	public void clear(){
		String teste = "TESTETESTE";
		String teste2 = "TESTE2TESTE2";
		
		System.out.println("Teste: "+ teste);
		System.out.println("Teste2: "+ teste2);
	}
	
	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	
	public String mudarTipoFornecedor(ValueChangeEvent event){
		tipo = (String)event.getNewValue();
		
		if(tipo.contains("CPF")){
			renderCPF = true;
			renderCNPJ = false;
		} else if(tipo.contains("CNPJ")){
			renderCPF = false;
			renderCNPJ = true;
		}
		
		return tipo;
	}
	
	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}

	public boolean isRenderCPF() {
		return renderCPF;
	}

	public void setRenderCPF(boolean renderCPF) {
		this.renderCPF = renderCPF;
	}

	public boolean isRenderCNPJ() {
		return renderCNPJ;
	}

	public void setRenderCNPJ(boolean renderCNPJ) {
		this.renderCNPJ = renderCNPJ;
	}
}
