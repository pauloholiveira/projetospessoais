<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style="margin: 0 auto; background-color: white;">
	<c:if test="${msg != null}" >
		<c:out value="${msg}"/>
	</c:if>
	
	<form name='redefineForm' action="<c:url value='emailRedefinicao' />" method='POST'>
		<p>Digite o e-mail cadastrado na sua conta:</p>
		<table>
			<tr>
				<td>Email:</td>
				<td><input type='text' name='email' value=''></td>
			</tr>
			<tr>
				<td colspan='2'><input name="submit" type="submit" value="submit" /></td>
			</tr>
		</table>
	</form>
</div>