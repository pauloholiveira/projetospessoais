<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style="margin:0 auto;background-color:white;">
	<div style="margin:0 auto;background-color:white;">
		<sf:form modelAttribute="tipoOperacao" action="novaOperacao">
			<input type="hidden" name="id_expediente" value="${id_expediente}"/>
			
			<input type="hidden" name="id" value="1"/>
			<input <c:out value="${status_botoes.get('inicio_expediente')}"/> type="submit" name="descricao" value="Inicio Expediente" />
		</sf:form>
		
		<sf:form modelAttribute="tipoOperacao" action="novaOperacao">
			<input type="hidden" name="id_expediente" value="${id_expediente}"/>
			
			<input type="hidden" name="id" value="3"/>
			<input <c:out value="${status_botoes.get('inicio_almoco')}"/> type="submit" name="descricao" value="Inicio Almo�o"/>
		</sf:form>
		
		<sf:form modelAttribute="tipoOperacao" action="novaOperacao">
			<input type="hidden" name="id_expediente" value="${id_expediente}"/>
			
			<input type="hidden" name="id" value="4"/>
			<input <c:out value="${status_botoes.get('fim_almoco')}"/> type="submit" name="descricao" value="Fim Almo�o"/>
		</sf:form>
		
		<sf:form modelAttribute="tipoOperacao" action="novaOperacao">
			<input type="hidden" name="id_expediente" value="${id_expediente}"/>
			
			<input type="hidden" name="id" value="5"/>
			<input <c:out value="${status_botoes.get('inicio_intervalo')}"/> type="submit" name="descricao" value="Inicio Intervalo"/>
		</sf:form>
		
		<sf:form modelAttribute="tipoOperacao" action="novaOperacao">
			<input type="hidden" name="id_expediente" value="${id_expediente}"/>
			
			<input type="hidden" name="id" value="6"/>
			<input <c:out value="${status_botoes.get('fim_intervalo')}"/> type="submit" name="descricao" value="Fim Intervalo"/>
		</sf:form>
		
		<sf:form modelAttribute="tipoOperacao" action="novaOperacao">
			<input type="hidden" name="id_expediente" value="${id_expediente}"/>
			
			<input type="hidden" name="id" value="2"/>
			<input <c:out value="${status_botoes.get('fim_expediente')}"/> type="submit" name="descricao" value="Fim Expediente"/>
		</sf:form>
	</div>
</div>