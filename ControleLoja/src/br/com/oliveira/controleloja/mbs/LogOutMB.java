package br.com.oliveira.controleloja.mbs;

import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

/**
 * Classe responsável por manipular o usuario logado no sistema.
 * @author paulo.oliveira
 */
@Component("LogOutMB")
@Scope("request")
public class LogOutMB {
	
	/**
	 * Instancia do FacesContext.
	 */
	private FacesContext facesContext;
	
	/**
	 * @author paulo.oliveira
	 * Contrutor Default
	 */
	public LogOutMB() {
		setFacesContext(FacesContext.getCurrentInstance());
	}
	
	/**
	 * @author paulo.oliveira
	 * @return Destination page name defined in navigation rules(faces-config)
	 */
	public String logout() {  		  
	    HttpSession session = (HttpSession) getFacesContext().getExternalContext().getSession(false);
	    HttpServletRequest req = (HttpServletRequest) getFacesContext().getExternalContext().getRequest();
	    req.getContextPath();
	    if(session != null) {
	    	session.invalidate();  
	    }
	    return "index";
	}
	
	/**
	 * @author paulo.oliveira
	 * @return Returns the name of principal(User) logged in.
	 */
	public String getLogged() {
		if(getFacesContext().getExternalContext().getUserPrincipal()!= null){
			return  getFacesContext().getExternalContext().getUserPrincipal().toString();
		} else{
			return "";
		}
	}
	
	/**
	 * @author paulo.oliveira
	 * @param String role name
	 * @return true if user is or false if user isn't in role passed in param.
	 */
	public boolean isLogged(String role) {
		return getFacesContext().getExternalContext().isUserInRole(role);
	}

	/**
	 * @author paulo.oliveira
	 * @return the facesContext
	 */
	public FacesContext getFacesContext() {
		return facesContext;
	}

	/**
	 * @author paulo.oliveira
	 * @param facesContext the facesContext to set
	 */
	public void setFacesContext(FacesContext facesContext) {
		this.facesContext = facesContext;
	}
	
	public String toPage(String page) {
		return page;
	}
}
