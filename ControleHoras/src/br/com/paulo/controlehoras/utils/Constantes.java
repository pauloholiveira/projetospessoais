package br.com.paulo.controlehoras.utils;

public class Constantes{
	public static enum TIPOS_OPERACOES {
		INICIO_EXPEDIENTE(1, "Inicio Expediente"), 
		FIM_EXPEDIENTE(2, "Fim Expediente"), 
		INICIO_ALMOCO(3, "Inicio Almoço"),
		FIM_ALMOCO(4, "Fim Almoço"),
		INICIO_INTERVALO(5, "Inicio Intervalo"), 
		FIM_INTERVALO(6, "Fim Intervalo");
		
		private final int tipo;
		private final String descricao;
		
		private TIPOS_OPERACOES(int tipo, String descricao) {
	        this.tipo = tipo;
	        this.descricao = descricao;
	    }
		
		public int tipo(){
			return this.tipo;
		}
		
		public String descricao(){
			return this.descricao;
		}
		
		public static TIPOS_OPERACOES getByDescricao(String descricao){
			
			if(descricao.equals("Inicio Expediente")){
				return INICIO_EXPEDIENTE;
			} else if(descricao.equals("Fim Expediente")){
				return FIM_EXPEDIENTE;
			}else if(descricao.equals("Inicio Almoço")){
				return INICIO_ALMOCO;
			}else if(descricao.equals("Fim Almoço")){
				return FIM_ALMOCO;
			}else if(descricao.equals("Inicio Intervalo")){
				return INICIO_INTERVALO;
			}else if(descricao.equals("Fim Intervalo")){
				return FIM_INTERVALO;
			} else {
				return null;
			}
		}
	}
}