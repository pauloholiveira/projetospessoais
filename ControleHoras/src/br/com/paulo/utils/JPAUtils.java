package br.com.paulo.utils;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JPAUtils {
	//Criamos a fabrica de entity manager a partir da persistence-unit definida em persistence.xml
	private static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("ControleHoras");
	
	public static EntityManager getEntityManager(){
		//Agora com a fábrica criada, pegamos um EntityManager.
		return emf.createEntityManager();
	}
}
