package br.com.oliveira.controleloja.mbs;

import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component("MenuMB")
@Scope("request")
public class MenuMB {
	
	private String caminho = "";
	
	private UIComponent action;
	
	public MenuMB(){}

	public String getCaminho() {
		return caminho;
	}

	public void setCaminho(String caminho) {
		this.caminho = caminho;
	}

	public UIComponent getAction() {
		return action;
	}

	public void setAction(UIComponent action) {
		this.action = action;
	}
	
	public String doAction(){
		String id_menuItem = FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("teste1");
		
		if(id_menuItem.equals("Cadastro_Clientes")){
			caminho = "/pages/CadastroClientes.xhtml";
			
		}else if(id_menuItem.equals("Cadastro_Produtos")){
			caminho = "/pages/CadastroProdutos.xhtml";
			
		}else if(id_menuItem.equals("Cadastro_Funcionarios")){
			caminho = "/pages/CadastroFuncionarios.xhtml";
			
		}else if(id_menuItem.equals("Cadastro_Fornecedores")){
			caminho = "/pages/CadastroFornecedores.xhtml";
			
		}else if(id_menuItem.equals("Nova_Venda")){
			caminho = "/pages/NovaVenda.xhtml";
			
		}else if(id_menuItem.equals("Nova_Compra")){
			caminho = "/pages/NovaCompra.xhtml";
			
		}else if(id_menuItem.equals("Consultas_Vendas")){
			caminho = "/pages/ConsultaVenda.xhtml";
			
		}else if(id_menuItem.equals("Consulta_Compras")){
			caminho = "/pages/ConsultaCompra.xhtml";
			
		}else if(id_menuItem.equals("Consultas_Estoque")){
			caminho = "/pages/ConsultaEstoque.xhtml";
			
		}else if(id_menuItem.equals("Consultas_Financeiro")){
			caminho = "/pages/ConsultaFinanceiro.xhtml";
			
		}else if(id_menuItem.equals("Relatorios_Financeiros")){
			caminho = "/pages/RelatoriosFinanceiros.xhtml";
			
		}else if(id_menuItem.equals("Relatorios_Estoques")){
			caminho = "/pages/RelatorioEstoques.xhtml";
			
		}else if(id_menuItem.equals("Relatorios_Vendas_Compras")){
			caminho = "/pages/RelatorioVendasCompras.xhtml";
			
		}else if(id_menuItem.equals("Configuracoes_Usuarios")){
			caminho = "/pages/ConfiguracoesUsuarios.xhtml";
			
		}else if(id_menuItem.equals("Configuracoes_Preferencias")){
			caminho = "/pages/ConfiguracoesPreferencias.xhtml";
		}else {
			caminho = "index.xhtml";
			return "index.xhtml";
		}
		
		return caminho;
		
	}
}
