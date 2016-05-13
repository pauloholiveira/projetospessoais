<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>Spring MVC - Tiles Integration tutorial</title>
<style>
	*{padding: 0; margin: 0;}
	body{ margin-top:10px; margin-bottom:10px; background-color:#DFDFDF;}
</style>
</head>
<body>
	<div style="border: #C1C1C1 solid 1px; border-radius:10px; width: 99.90%;">
		<!-- Header -->
		<tiles:insertAttribute name="header" />
		<!-- Menu Page -->
		<div style="height:20px; width: 100%;">
			<tiles:insertAttribute name="menu" />
		</div>
		<!-- Body Page -->
		<div>
			<tiles:insertAttribute name="body" />
		</div>
		<!-- Footer Page -->
		<tiles:insertAttribute name="footer" />
	</div>
</body>
</html>