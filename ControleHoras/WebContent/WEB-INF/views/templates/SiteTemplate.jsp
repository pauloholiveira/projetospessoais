<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Spring MVC - Tiles Integration tutorial</title><!-- 
	<link rel="stylesheet" href="resources/css/screen.css" type="text/css" media="screen, projection"></link>
	<link rel="stylesheet" href="resources/css/print.css" type="text/css" media="print"></link> -->
	<!--[if IE]>
	<link rel="stylesheet" href="resources/css/ie.css" type="text/css" media="screen, projection">
	<![endif]-->
	
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