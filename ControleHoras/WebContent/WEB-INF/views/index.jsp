<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style="margin:0 auto;background-color:white;">
	<div style="margin:0 auto;background-color:white;">
		<sf:form modelAttribute="tipoOperacao" action="novaOperacao">
			<input type="hidden" name="id_expediente" value="${id_expediente}"/>
			
			<input type="hidden" name="id" value="1"/>
			<input type="submit" name="descricao" value="Inicio Expediente"/>
		</sf:form>
		
		<sf:form modelAttribute="tipoOperacao" action="novaOperacao">
			<input type="hidden" name="id_expediente" value="${id_expediente}"/>
			
			<input type="hidden" name="id" value="3"/>
			<input type="submit" name="descricao" value="Inicio Almoço"/>
		</sf:form>
		
		<sf:form modelAttribute="tipoOperacao" action="novaOperacao">
			<input type="hidden" name="id_expediente" value="${id_expediente}"/>
			
			<input type="hidden" name="id" value="4"/>
			<input type="submit" name="descricao" value="Fim Almoço"/>
		</sf:form>
		
		<sf:form modelAttribute="tipoOperacao" action="novaOperacao">
			<input type="hidden" name="id_expediente" value="${id_expediente}"/>
			
			<input type="hidden" name="id" value="5"/>
			<input type="submit" name="descricao" value="Inicio Intervalo"/>
		</sf:form>
		
		<sf:form modelAttribute="tipoOperacao" action="novaOperacao">
			<input type="hidden" name="id_expediente" value="${id_expediente}"/>
			
			<input type="hidden" name="id" value="6"/>
			<input type="submit" name="descricao" value="Fim Intervalo"/>
		</sf:form>
		
		<sf:form modelAttribute="tipoOperacao" action="novaOperacao">
			<input type="hidden" name="id_expediente" value="${id_expediente}"/>
			
			<input type="hidden" name="id" value="2"/>
			<input type="submit" name="descricao" value="Fim Expediente"/>
		</sf:form>
	</div>
	
	<div style="margin:5px;background-color:white;">
		<table>
			<thead>
				<th>
					<td>Tipo</td>
					<td>Hora</td>
				</th>
			</thead>
			<tbody>
				<c:forEach items="${lista_operacoes}" var="operacao" >
					<tr>
						<td><c:out value="${operacao.tipoOperacao.id}" /></td>
						<td><c:out value="${operacao.tipoOperacao.descricao}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>