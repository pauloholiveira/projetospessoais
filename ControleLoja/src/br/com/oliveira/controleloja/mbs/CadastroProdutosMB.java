package br.com.oliveira.controleloja.mbs;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.faces.event.ValueChangeEvent;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import br.com.oliveira.controleloja.componentes.CadastroProdutosCNTE;
import br.com.oliveira.controleloja.datamodels.Produto;
import br.com.oliveira.controleloja.datamodels.ProdutosCategorias;
import br.com.oliveira.controleloja.datamodels.ProdutosSubcategoria;


@Component("CadastroProdutosMB")
@Scope("view")
public class CadastroProdutosMB {
	
	@Resource
	private CadastroProdutosCNTE cadastroProdutosCNTE;
	
	private Produto produto;

	private List<ProdutosSubcategoria> lista_subcategorias = new ArrayList<ProdutosSubcategoria>();
	private ProdutosSubcategoria selectedsubcategoria;
	
	private List<ProdutosCategorias> lista_categorias = new ArrayList<ProdutosCategorias>();
	private ProdutosCategorias selectedcategoria;
	
	private String tipo_produto;

	private boolean renderVestuario;
	private boolean renderBijuteria;
	
	public CadastroProdutosMB() {
		this.produto = new Produto();
		tipo_produto = "Vestuario:";
		renderVestuario = true;
		renderBijuteria = false;
	}
	
	public CadastroProdutosCNTE getCadastroProdutosCNTE() {
		return cadastroProdutosCNTE;
	}

	public void setCadastroProdutosCNTE(CadastroProdutosCNTE cadastroProdutosCNTE) {
		this.cadastroProdutosCNTE = cadastroProdutosCNTE;
	}
	
	public List<ProdutosSubcategoria> prencherLista_SubCategorias(ValueChangeEvent event) {
		lista_subcategorias.clear();
		ProdutosCategorias teste = (ProdutosCategorias)event.getNewValue();		
		lista_subcategorias = cadastroProdutosCNTE.obterSubCategoriasPorCategoria(teste);
		return lista_subcategorias;
	}
	
	public String mudarTipoProduto(ValueChangeEvent event){
		tipo_produto = (String)event.getNewValue();
		
		if(tipo_produto.contains("Vestuario")){
			renderVestuario = true;
			renderBijuteria = false;
		} else if(tipo_produto.contains("Bijuteria")){
			renderVestuario = false;
			renderBijuteria = true;
		}
		
		return tipo_produto;
	}
	
	public Produto getProduto() {
		return produto;
	}

	public void setProduto(Produto produto) {
		this.produto = produto;
	}

	public List<ProdutosSubcategoria> getLista_subcategorias() {
		return lista_subcategorias;
	}

	public void setLista_subcategorias(List<ProdutosSubcategoria> lista_subcategorias) {
		this.lista_subcategorias = lista_subcategorias;
	}	

	public ProdutosSubcategoria getSelectedsubcategoria() {
		return selectedsubcategoria;
	}

	public void setSelectedsubcategoria(ProdutosSubcategoria selectedsubcategoria) {
		this.selectedsubcategoria = selectedsubcategoria;
	}

	public List<ProdutosCategorias> getLista_categorias() {
		lista_categorias = cadastroProdutosCNTE.obterListaCategorias();
		return lista_categorias;
	}

	public void setLista_categorias(List<ProdutosCategorias> lista_categorias) {
		this.lista_categorias = lista_categorias;
	}

	public ProdutosCategorias getSelectedcategoria() {
		return selectedcategoria;
	}

	public void setSelectedcategoria(ProdutosCategorias selectedcategoria) {
		this.selectedcategoria = selectedcategoria;
	}

	public String getTipo_produto() {
		return tipo_produto;
	}

	public void setTipo_produto(String tipo_produto) {
		this.tipo_produto = tipo_produto;
	}
	
	public boolean isRenderVestuario() {
		return renderVestuario;
	}

	public void setRenderVestuario(boolean renderVestuario) {
		this.renderVestuario = renderVestuario;
	}

	public boolean isRenderBijuteria() {
		return renderBijuteria;
	}

	public void setRenderBijuteria(boolean renderBijuteria) {
		this.renderBijuteria = renderBijuteria;
	}
	
	public void gravar(){
		/*Date data_cadastro = new Date();
		
		produto.setDataCadastro(data_cadastro);
		ClienteStatus status = new ClienteStatus();
		status.setId(1); //Gerar arquivo de constantes
		produto.setClienteStatus(status);
		
		Documentos documento= new Documentos();
		
		documento.setTipo(tipo_produto.replace(":", ""));
		
		if(tipo_produto.replace(":", "").equals("CPF")){
			documento.setValor(this.cpf);		
		} else{
			documento.setValor(this.cnpj);
		}
		
		produto.setDocumentos(documento);
		try{
			cadastroProdutosCNTE.inserirProduto(pr);
			FacesContext ctx = FacesContext.getCurrentInstance();  
	        ctx.addMessage("messages", new FacesMessage("Cliente cadastrado com sucesso."));
		} catch(Exception ex){
			FacesContext ctx = FacesContext.getCurrentInstance();  
	        ctx.addMessage("messages", new FacesMessage("Erro ao Cadastrar Cliente.", "Cliente Já Cadastrado"));  
		}*/
	}
	
	public void clear(){
		String teste = "TESTETESTE";
		String teste2 = "TESTE2TESTE2";
		
		System.out.println("Teste: "+ teste);
		System.out.println("Teste2: "+ teste2);
	}
}
