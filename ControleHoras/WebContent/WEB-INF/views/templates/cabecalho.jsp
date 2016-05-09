<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style="width:100%; height:75px;">
	<h1>Controle Horas</h1>
	
	<c:if test="${usuarioLogado != null}">
		Seja Bem vindo <c:out value="${usuarioLogado}"></c:out> | <a href="logout">LogOut</a>
	</c:if>
</div>