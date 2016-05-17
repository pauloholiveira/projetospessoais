<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style="margin:0 auto;background-color:white;">
	<c:if test="${msg != null}" >
		<c:out value="${msg}"/>
	</c:if>
	
	<sf:form modelAttribute="usuario" action="alterarConta" method="POST">
		<sf:label path="" for="nome">Nome: <sf:input id="nome" path="nome"/></sf:label><br>
		
		<sf:label path="" for="cpf">CPF: <c:out value="${usuario.usuarioPK.cpf}"/> </sf:label><br>
		<sf:hidden id="cpf" path="usuarioPK.cpf"/>
		
		<sf:label path="" for="nascimento">Data Nascimento: <c:out value="${usuario.usuarioPK.data_nascimento}"/></sf:label><br>
		<sf:hidden id="nascimento" path="usuarioPK.data_nascimento"/>
		
		<sf:label path="" for="email">Email: <sf:input id="email" path="email"/></sf:label><br>
		
		<sf:label path="" for="username">UserName: <c:out value="${usuario.user.user}"/></sf:label><br>
		<sf:hidden id="username" path="user.user"/>
		<sf:label path="" for="password">Senha: <sf:password id="password" path="user.password"  /></sf:label><br>
		
		<input type="submit" value="Alterar" />
	</sf:form>
</div>