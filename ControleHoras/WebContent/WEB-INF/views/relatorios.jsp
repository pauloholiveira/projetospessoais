<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style="margin:10px;">
	<h3>Relatorios</h3>
	<p>By:- Tousif Khan</p>
	<c:forEach items="${listaTipos}" var="tipo" >
		<li id="tipo_<c:out value="tipo.id"/>">
			<div class="spittleMessage">
			<c:out value="${tipo.descricao}" />
			</div>
		</li>
	</c:forEach>
</div>