<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style="margin: 0 auto; background-color: white;">
	<sf:form modelAttribute="usuario" action="realizarCadastro" method="POST">
		<sf:label path="" for="nome">Nome: <sf:input id="nome" path="nome"/></sf:label><br>
		<sf:label path="" for="cpf">CPF: <sf:input id="cpf" path="usuarioPK.cpf"/></sf:label><br>
		<sf:label path="" for="nascimento">Data Nascimento<sf:input id="nascimento" path="usuarioPK.data_nascimento"/></sf:label><br>
		<sf:label path="" for="email">Email: <sf:input id="email" path="email"/></sf:label><br>
		<sf:label path="" for="username">UserName: <sf:input id="username" path="user.user"/></sf:label><br>
		<sf:label path="" for="password">Senha: <sf:input id="password" path="user.password"/></sf:label><br>
		
		<input type="button" value="Limpar"/>
		
		<input type="submit" value="Cadastrar" />
	</sf:form>
</div>
