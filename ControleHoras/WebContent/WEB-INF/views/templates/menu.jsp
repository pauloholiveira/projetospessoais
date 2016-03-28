<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<ul style="list-style:none;line-height:28px;">

	<li><spring:url value="/index" var="homeUrl" htmlEscape="true" />
		<a href="${homeUrl}">Home</a>
	</li>
	
	<li><spring:url value="/relatorios" var="relatoriosUrl" htmlEscape="true" />
		<a href="${relatoriosUrl}">Relatorios</a>
	</li>

</ul>
