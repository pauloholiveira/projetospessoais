package br.com.oliveira.controleloja.mbs;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.faces.event.ValueChangeEvent;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import br.com.oliveira.controleloja.componentes.CadastroClientesCNTE;
import br.com.oliveira.controleloja.datamodels.Cidade;
import br.com.oliveira.controleloja.datamodels.Cliente;
import br.com.oliveira.controleloja.datamodels.ClienteStatus;
import br.com.oliveira.controleloja.datamodels.Documento;
import br.com.oliveira.controleloja.datamodels.Estado;

@Component("CadastroClienteMB")
@Scope("view")
public class CadastroClienteMB {
	
	@Resource
	private CadastroClientesCNTE cadastroClientesCNTE;
	
	private Cliente cliente;

	private List<Cidade> lista_cidades = new ArrayList<Cidade>();
	private Cidade selectedcidade;
	
	private List<Estado> lista_estados = new ArrayList<Estado>();
	private Estado selectedestado;
	
	private String tipo;
	private String cpf;
	private String cnpj;
	//private String mascaraDocumento;
	
	private boolean renderCPF;
	private boolean renderCNPJ;
	//private String renderNow;
	
	
	public CadastroClienteMB() {
		this.cliente = new Cliente();
		tipo = "CPF:";
		renderCPF = true;
	}

	public CadastroClientesCNTE getCadastroClientesCNTE() {
		return cadastroClientesCNTE;
	}

	public void setCadastroClientesCNTE(CadastroClientesCNTE cadastroClientesCNTE) {
		this.cadastroClientesCNTE = cadastroClientesCNTE;
	}
	
	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	
	public List<Cidade> getLista_cidades() {
		return lista_cidades;
	}
	
	public List<Cidade> prencherLista_cidades(ValueChangeEvent event) {
		lista_cidades.clear();
		Estado teste = (Estado)event.getNewValue();		
		lista_cidades = cadastroClientesCNTE.obterCidadesPorEstado(teste);
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
		lista_estados = cadastroClientesCNTE.obterListaEstados();
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
		
		cliente.setDataCadastro(data_cadastro);
		ClienteStatus status = new ClienteStatus();
		status.setId(1); //Gerar arquivo de constantes
		cliente.setClienteStatus(status);
		
		Documento documento= new Documento();
		this.setTipo(tipo.replace(":", ""));
		
		documento.setTipo(tipo);
		
		if(tipo.equals("CPF")){
			documento.setValor(this.cpf);		
		} else{
			documento.setValor(this.cnpj);
		}
		
		cliente.setDocumento(documento);
		cadastroClientesCNTE.inserirCliente(cliente);
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
	
	public String mudarTipoCliente(ValueChangeEvent event){
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
