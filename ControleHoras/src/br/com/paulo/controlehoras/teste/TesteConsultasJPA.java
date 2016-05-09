package br.com.paulo.controlehoras.teste;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.com.paulo.controlehoras.model.Expediente;
import br.com.paulo.controlehoras.model.Operacao;
import br.com.paulo.controlehoras.model.TipoOperacao;
import br.com.paulo.controlehoras.model.UserRoles;
import br.com.paulo.controlehoras.model.Users;
import br.com.paulo.controlehoras.model.Usuario;
import br.com.paulo.controlehoras.utils.JPAUtils;

public class TesteConsultasJPA {
	
	public static void buscarTodasUserRoles(){
		
	}
	
	
	@SuppressWarnings("rawtypes")
	public static void main(String[] args) {
		EntityManager em = JPAUtils.getEntityManager();
		
		System.out.println("************************************************  select usr from UserRoles usr  ************************************************");
		System.out.println();
		
		String userRoles_JPQL = "select usr from UserRoles usr";
		Query query = em.createQuery(userRoles_JPQL);
		List usrRls = query.getResultList();
		
		for(Object to : usrRls){
			UserRoles userRoles = (UserRoles)to;
			System.out.println("User Role: " + userRoles.getUserRole());
			
			Users users = userRoles.getUsers();
			System.out.println("Username: " + users.getUser());
			System.out.println("Password: " + users.getPassword());
			
			Usuario usuario = users.getUsuario();
			System.out.println("CPF: " + usuario.getUsuarioPK().getCpf());
			System.out.println("DATA NASCIMENTO: " + usuario.getUsuarioPK().getData_nascimento());
			System.out.println("NOME: " + usuario.getNome());
			
		}
		
		System.out.println("************************************************  select usr from Users usr  ************************************************");
		System.out.println();
		String user_JPQL = "select usr from Users usr";
		query = em.createQuery(user_JPQL);
		List users = query.getResultList();
		
		for(Object to : users){
			Users user = (Users)to;
			
			System.out.println("Username: " + user.getPassword());
			System.out.println("Password: " + user.getUser());
			
			Usuario usuario = user.getUsuario();
			System.out.println("CPF: " + usuario.getUsuarioPK().getCpf());
			System.out.println("DATA NASCIMENTO: " + usuario.getUsuarioPK().getData_nascimento());
			System.out.println("NOME: " + usuario.getNome());
		}
		
		System.out.println("************************************************  select us from Usuario us  ************************************************");
		System.out.println();
		String usuarios_JPQL = "select us from Usuario us";
		query = em.createQuery(usuarios_JPQL);
		List usuarios = query.getResultList();
		
		for(Object to : usuarios){
			Usuario usuario = (Usuario)to;
			
			System.out.println("CPF: " + usuario.getUsuarioPK().getCpf());
			System.out.println("Data Nascimento: " + usuario.getUsuarioPK().getData_nascimento());
			System.out.println("Nome: " + usuario.getNome());
			
			Users user = usuario.getUser();
			System.out.println("User: " + user.getUser());
			System.out.println("Password: " + user.getPassword());
			
			UserRoles userRoles = user.getUserRoles();
			
			System.out.println("User Role: " + userRoles.getUserRole());
		}
		
		System.out.println("************************************************  select exp from Expediente exp  ************************************************");
		System.out.println();
		String expediente_JPQL = "select exp from Expediente exp";
		query = em.createQuery(expediente_JPQL);
		List expedientes = query.getResultList();
		
		for(Object to : expedientes){
			Expediente expediente = (Expediente)to;
			
			Usuario usuario = expediente.getCpf_usuario();
			System.out.println("Expediente Usuario CPF: " + usuario.getUsuarioPK().getCpf());
			System.out.println("Expediente Usuario DATA NASCIMENTO: " + usuario.getUsuarioPK().getData_nascimento());
			System.out.println("Expediente Usuario NOME: " + usuario.getNome());
			Users user = usuario.getUser();
			System.out.println("Expediente Usuario User Username: " + user.getUser());
			System.out.println("Expediente Usuario User Password: " + user.getPassword());
			UserRoles userRole = user.getUserRoles();
			System.out.println("Expediente Usuario User UserRole role: " + userRole.getUserRole());
			
			System.out.println("Expediente Data Nascimento: " + expediente.getDataNascimento());
			System.out.println("Expediente ID: " + expediente.getId());
			System.out.println("Expediente OBservacoes: " + expediente.getObservacoes());
			
			
			List<Operacao> operacoes = expediente.getOperacoes();
			for(Operacao op : operacoes){
				System.out.println("EXPEDIENTE OPERACOES DATA HORA: " + op.getOperacaoPK().getData_hora());
				TipoOperacao tipo_op = op.getTipoOperacao();
				System.out.println("EXPEDIENTE OPERACOES TIPOOPERACAO ID: " + tipo_op.getId());
				System.out.println("EXPEDIENTE OPERACOES TIPOOPERACAO DESCRICAO: " + tipo_op.getDescricao());
			}
			
		}
		
		System.out.println("************************************************  select oper from Operacao oper  ************************************************");
		System.out.println();
		String operacao_JPQL = "select oper from Operacao oper";
		query = em.createQuery(operacao_JPQL);
		List operacoes = query.getResultList();
		
		for(Object to : operacoes){
			Operacao operacao = (Operacao)to;
			TipoOperacao tipoOperacao = operacao.getTipoOperacao();
			System.out.println("Tipo Operacao Descricao: " + tipoOperacao.getDescricao());
			System.out.println("Tipo Operacao ID: " + tipoOperacao.getId());
			
			System.out.println(operacao.getOperacaoPK().getData_hora());
			
			Expediente expediente = operacao.getExpediente();
			System.out.println("Expediente ID: " + expediente.getId());
			System.out.println("Expediente Observacoes: " + expediente.getObservacoes());
			
			Usuario usuario = expediente.getCpf_usuario();			
			System.out.println("Expediente Usuario CPF: " + usuario.getUsuarioPK().getCpf());
			System.out.println("Expediente Usuario Data Nascimento: " + usuario.getUsuarioPK().getData_nascimento());
			System.out.println("Expediente Usuario NOME: " + usuario.getNome());
			
			Users user = usuario.getUser();			
			System.out.println("Expediente Usuario Users user: " + user.getUser());
			System.out.println("Expediente Usuario Users Password: " + user.getPassword());
			
			UserRoles uRole = user.getUserRoles();
			System.out.println("Expediente Usuario Users UserRoles Userrole: " + uRole.getUserRole());
			
		}
		
		System.out.println("************************************************  select to from TipoOperacao to  ************************************************");
		System.out.println();
		String tipo_operacao_JPQL= "select to from TipoOperacao to";
		query = em.createQuery(tipo_operacao_JPQL);
		List tos = query.getResultList();
		
		for(Object to : tos){
			TipoOperacao teste = (TipoOperacao)to;
			System.out.println("Tipo Operacao ID: " +teste.getId());
			System.out.println("Tipo Operacao Descricao: " +teste.getDescricao());
			List<Operacao> operacoess = teste.getOperacoes();
			
			for(Operacao op : operacoess){
				System.out.println("Operacao: Data Hora: " + op.getOperacaoPK().getData_hora());
				System.out.println("OPeracao: Data Nascimento: " + op.getExpediente().getCpf_usuario().getUsuarioPK().getData_nascimento());
				System.out.println("OPeracao: Usuario Nome: " + op.getExpediente().getCpf_usuario().getNome());
				System.out.println("User: " + op.getExpediente().getCpf_usuario().getUser().getUser());
				System.out.println("Password: " + op.getExpediente().getCpf_usuario().getUser().getPassword());
			}
		}
		
		
		
		System.out.println("************************************************  NAMED QUERIES ************************************************");
		System.out.println();
		Query namedquery = em.createNamedQuery("FindAll", UserRoles.class);
		List userRoleslist = namedquery.getResultList();
		
		for(Object to : userRoleslist){
			UserRoles userRoles = (UserRoles)to;
			System.out.println("User Role: " + userRoles.getUserRole());
			
			Users usersdd = userRoles.getUsers();
			System.out.println("Username: " + usersdd.getUser());
			System.out.println("Password: " + usersdd.getPassword());
			
			Usuario usuario = usersdd.getUsuario();
			System.out.println("CPF: " + usuario.getUsuarioPK().getCpf());
			System.out.println("DATA NASCIMENTO: " + usuario.getUsuarioPK().getData_nascimento());
			System.out.println("NOME: " + usuario.getNome());
			
		}
		System.out.println();
		Query namedquery2 = em.createNamedQuery("FindByUserRole", UserRoles.class);
		namedquery2.setParameter("role", "Administrador");
		List userRoleslist2 = namedquery2.getResultList();
		
		for(Object to : userRoleslist2){
			UserRoles userRoles = (UserRoles)to;
			System.out.println("User Role: " + userRoles.getUserRole());
			
			Users usersdd = userRoles.getUsers();
			System.out.println("Username: " + usersdd.getUser());
			System.out.println("Password: " + usersdd.getPassword());
			
			Usuario usuario = usersdd.getUsuario();
			System.out.println("CPF: " + usuario.getUsuarioPK().getCpf());
			System.out.println("DATA NASCIMENTO: " + usuario.getUsuarioPK().getData_nascimento());
			System.out.println("NOME: " + usuario.getNome());
			
		}
		em.close();
	}

}
