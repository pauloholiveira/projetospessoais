package br.com.paulo.controlehoras.teste;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import br.com.paulo.controlehoras.model.Expediente;
import br.com.paulo.controlehoras.model.Operacao;
import br.com.paulo.controlehoras.model.OperacaoPK;
import br.com.paulo.controlehoras.model.TipoOperacao;
import br.com.paulo.controlehoras.model.UserRoles;
import br.com.paulo.controlehoras.model.Users;
import br.com.paulo.controlehoras.model.Usuario;
import br.com.paulo.controlehoras.model.UsuarioPK;
import br.com.paulo.controlehoras.utils.JPAUtils;
	

public class TesteInsertsJPA {
	
	public static EntityManager em;

	static {
		em = JPAUtils.getEntityManager();
	}
	
	public static void persistAny(Object object){
		EntityTransaction tx = em.getTransaction();
		tx.begin();
		em.persist(object);
		tx.commit();
	}
	
	public static void testesPersistencia(){
		//Agora cria o objeto a ser persistido.
		TipoOperacao tipo = new TipoOperacao();
		//tipo.setId(1);
		tipo.setDescricao("Inicio Expediente");
		
		//Obtem a transação
		EntityTransaction tx = em.getTransaction();
		//Inicia a transação
		tx.begin();
		
		//Persiste o objeto no banco.
		em.persist(tipo);
		
		//Comita a transação.
		tx.commit();
		
		tx = em.getTransaction();
		
		//ESTUDO CICLO DE VIDA
		// cria o tipoOperacao no estado new
		TipoOperacao tipo2 = new TipoOperacao();
		tipo2.setDescricao("Descricao2");
		
		// passa o Tipo para estado gerenciado
		tx.begin();
		em.persist(tipo2);
		tx.commit();
		
		// cria a ferrari no estado novo
		TipoOperacao tipo3 = new TipoOperacao();
		tipo3.setDescricao("Descricao3");
		
		//devolve a instância gerenciada
		TipoOperacao outroTipo = em.merge(tipo3);
		// vai imprimir false
		System.out.println(tipo3 == outroTipo);
		System.out.println(tipo3.getDescricao()+" - "+outroTipo.getDescricao());
		tx.begin();
		
		//Aqui da problema ao persistir o "tipo3", pois com o merge 
		//dado anteriormente, no contexto já tem um objeto com o mesmo
		//valor que é o "outroTipo". Isto é, tem um objeto com o valor "Descrição3" no contexto,
		//mas que ainda não foi persistido. Para dar certo precisa persistir o "outroTipo".
		//em.persist(tipo3);
		em.persist(outroTipo);
		
		//Com o flush, os objetos que estão no contexto de persistencia, mas ainda não foram persistidos,
		//são persistidos.
		//em.flush();
		tx.commit();
		
		//Usando o DETACHED.
		/*Mudanças feitas em objetos detached não são atualizadas no banco. Para que isso
		ocorra é necessário retornar o objeto para o estado gerenciado através do método
		merge. No trecho de código a seguir veremos mais detalhes do funcionamento do
		detached.*/
		// Busca o porsche
		tx.begin();
		TipoOperacao tipoDetached = em.find(TipoOperacao.class, tipo.getId());
		// Desanexa o porsche
		em.detach(tipoDetached);
		// Modificamos o objeto que está detached
		tipoDetached.setDescricao("Porsche 911 Turbo");
		// Buscamos uma instância gerenciada da mesma informação
		TipoOperacao tipoGerenciado = em.find(TipoOperacao.class, tipo.getId());
		// Modificamos o que acabamos de buscar
		tipoGerenciado.setDescricao("Porsche 911 T.");
		// Reanexa o porsche que havíamos modificado lá no começo
		TipoOperacao tipoModificado = em.merge(tipoDetached);
		// O porsche detached não é o mesmo objeto que o porsche modificado
		System.out.println(tipoDetached != tipoModificado);
		// O porsche gerenciado é o mesmo objeto que o porsche modificado
		System.out.println(tipoGerenciado == tipoModificado);
		tx.commit();
	}
	
	public static TipoOperacao insertTipoOperacao(String descricao){
		TipoOperacao tipo = new TipoOperacao();
		tipo.setDescricao(descricao);
		persistAny(tipo);
		
		return tipo;
	}
	
	public static Expediente insertExpediente(String cpf, Date nascimento, String observacao_expediente){
		UsuarioPK pk = new UsuarioPK();
		pk.setCpf(cpf);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String data_nascimento_string = sdf.format(nascimento);
		Date data_nascimento = null;
		try {
			data_nascimento = sdf.parse(data_nascimento_string);
		} catch (ParseException e) {
			
		}
		pk.setData_nascimento(data_nascimento);
		Usuario usuario = em.find(Usuario.class, pk);
		Expediente expediente = new Expediente();
		expediente.setCpf_usuario(usuario);
		expediente.setDataNascimento(data_nascimento);
		expediente.setObservacoes(observacao_expediente);
		persistAny(expediente);
		
		return expediente;
	}
	
	public static Operacao insertOperacao(int id_tipo_operacao, int id_expediente){
		TipoOperacao tipo = em.find(TipoOperacao.class, id_tipo_operacao);
		Expediente expediente = em.find(Expediente.class, id_expediente);
		SimpleDateFormat teste = new SimpleDateFormat("yyyy-MM-dd");
		String data = teste.format(new Date());
		Date tes = null;
		try {
			tes = teste.parse(data);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		OperacaoPK pk = new OperacaoPK(tipo.getId(), expediente.getId(), tes);
		Operacao operacao = new Operacao(pk);
		persistAny(operacao);
		
		return operacao;
	}
	
	public static UserRoles insertUserRoles(String username, String role){
		UserRoles userRoles = new UserRoles(username, role);
		persistAny(userRoles);
		
		return userRoles;
	}
	
	public static Users insertUsers(String userName, String senha){
		Users users = new Users(userName, senha);
		persistAny(users);
		
		return users;
	}
	
	public static Usuario insertUsuario(String cpf, String nascimento, String nome, String username){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date data_nascimento = null;
		try {
			data_nascimento = sdf.parse(nascimento);
		} catch (ParseException e) {
			
		}
		
		Users user = em.find(Users.class, username);
		UsuarioPK pk = new UsuarioPK(cpf, data_nascimento);
		Usuario usuario = new Usuario(pk, nome);
		
		usuario.setUser(user);
		persistAny(usuario);
		
		return usuario;
	}
	
	
	
	public static void main(String[] args) {
		insertUsers("paulo.oliveira", "parimo69");
		insertUserRoles("paulo.oliveira", "Administrador");
		Usuario usuario_persistido = insertUsuario("31973777886", "1984-04-18", "Paulo Henrique de Oliveira","paulo.oliveira");
		
		TipoOperacao tipo_persistido = insertTipoOperacao("Inicio Expediente");
		TipoOperacao tipo_persistido2 = insertTipoOperacao("Fim Expediente");
		
		Expediente expediente_persistido = insertExpediente(usuario_persistido.getUsuarioPK().getCpf(), usuario_persistido.getUsuarioPK().getData_nascimento(), "Testes JPA");
		
		insertOperacao(tipo_persistido.getId(), expediente_persistido.getId());
		insertOperacao(tipo_persistido2.getId(), expediente_persistido.getId());
		
	}
}
