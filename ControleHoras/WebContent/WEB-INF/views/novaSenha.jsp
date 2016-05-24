<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style="margin: 0 auto; background-color: white;">
	<c:if test="${msg != null}" >
		<c:out value="${msg}"/>
	</c:if>
	
	<form name='novaSenha' action="<c:url value='alterarSenha' />" method='POST'>
		<input type="hidden" name="key" value="${param.key}" />
		<p>Digite a sua nova Senha</p>
		<table>
			<tr>
				<td>Senha:</td>
				<td><input type='password' name='senha' value=''></td>
			</tr>
			<tr>
				<td>Confirmação Senha:</td>
				<td><input type='password' name='senha_confirmacao' value=''></td>
			</tr>
			<tr>
				<td colspan='2'><input name="submit" type="submit" value="Enviar" /></td>
			</tr>
			
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		</table>
	</form>
</div>