package br.com.paulo.controlehoras.dao;


import br.com.paulo.controlehoras.model.Expediente;
import br.com.paulo.controlehoras.model.Usuario;

public interface ExpedienteDAO extends GenericJPADAO<Integer, Expediente>{
	public Expediente getLastExpedienteByUsuario(Usuario usuario);
}
