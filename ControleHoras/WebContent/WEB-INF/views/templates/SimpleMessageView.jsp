<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<tiles:insertAttribute name="meta" />
	<title>Spring MVC - Tiles Integration tutorial</title>
<style>
	*{padding: 0; margin: 0;}
	body{ margin-top:10px; margin-bottom:10px; background-color:#DFDFDF;}
</style>
</head>
<body>
	<div style="border: #C1C1C1 solid 1px; border-radius:10px; width: 99.90%;">
		<!-- Body Page -->
		<div>
			<tiles:insertAttribute name="body" />
		</div>
	</div>
</body>
</html>