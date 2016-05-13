package br.com.paulo.controlehoras.utils;

import javax.servlet.http.HttpServletRequest;
 
public class Context {
	
    public static String getContextPath(HttpServletRequest req) {
    	
    	String url = req.getRequestURL().toString();
    	return url.substring(0, url.length() - req.getRequestURI().length()) + req.getContextPath() + "/";
    }
 
}