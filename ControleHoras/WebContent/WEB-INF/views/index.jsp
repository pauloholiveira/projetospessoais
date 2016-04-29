<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div style="margin:5px;background-color:white;">
	<form method="POST" action="novaOperacao">
		<input type="hidden" name="expediente" id="expediente" value="${expediente}"/>
		
		<input type="submit" name="descricao" id="btn_inicio_exped" value="Inicio Expediente"/>
		<input type="submit" name="descricao" id="btn_inicio_almoco" value="Inicio Almoço"/>
		<input type="submit" name="descricao" id="btn_fim_almoco" value="Fim Almoço"/>
		<input type="submit" name="descricao" id="btn_inicio_intervalo" value="Inicio Intervalo"/>
		<input type="submit" name="descricao" id="btn_fim_intervalo" value="Fim Intervalo"/>
		<input type="submit" name="descricao" id="btn_fim_exped" value="Fim Expediente"/>
		<input type="submit" name="btn_inicio_almoco" id="btn_inicio_almoco" value="Inicio Almoço"/>
	</form>
</div>
