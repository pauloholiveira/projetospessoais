<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style="margin: 0 auto; background-color: white;">
	<c:if test="${msg != null}" >
		<c:out value="${msg}"/>
	</c:if>
	
	<form name='loginForm' action="<c:url value='login' />" method='POST'>

		<table>
			<tr>
				<td>Usuario:</td>
				<td><input type='text' name='username' value=''></td>
			</tr>
			<tr>
				<td>Senha:</td>
				<td><input type='password' name='password' /></td>
			</tr>
			<tr>
				<td colspan="2">
					<label for="remember-me">Lembrar meus Dados</label>	
					<input id="remember-me" name="remember-me" type="checkbox"/>
				</td>
			</tr>
			
			<tr>
				<td colspan='2'><input name="submit" type="submit" value="submit" /></td>
			</tr>
		</table>
		<a href="<c:url value='esqueciSenha' />">Esqueci Minha Senha</a>
		
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	</form>
	
	
	
</div>