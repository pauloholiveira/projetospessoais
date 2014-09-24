package br.com.oliveira.controleloja.converters;

import java.util.Map;

import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;

import br.com.oliveira.controleloja.datamodels.EntityGenerica;

@FacesConverter(value="simpleIndexConverter")
public class SimpleIndexConverter implements Converter {

	@Override
	public Object getAsObject(FacesContext ctx, UIComponent component, String value) {
        if (value != null) {  
            return this.getAttributesFrom(component).get(value);  
        }  
        return null;  
	}

	@Override
	public String getAsString(FacesContext ctx, UIComponent component, Object value) {
        if (value != null  
                && !"".equals(value)) {  

            EntityGenerica entity = (EntityGenerica) value;

            // adiciona item como atributo do componente  
            this.addAttribute(component, entity);  

            Integer codigo = entity.getId();  
            if (codigo != 0) {  
                return String.valueOf(codigo);  
            }  
        }  

        return (String) value;  
	}
	
	 protected void addAttribute(UIComponent component, EntityGenerica o) {  
	        String key = Integer.toString(o.getId()); // codigo como chave neste caso  
	        this.getAttributesFrom(component).put(key, o);  
	    }  

	protected Map<String, Object> getAttributesFrom(UIComponent component) {  
	        return component.getAttributes();  
	}  

}
