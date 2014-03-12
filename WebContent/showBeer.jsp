<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.jv391.models.Beer" %>
<!DOCTYPE html>
<html class="beerView">
<head>
<meta charset="utf-8">
<title>Show Me a Beer</title>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<div class="container mainApp">
		<div class="beerPanel text-center">
			<h1>Here's Your Beer, <%= request.getAttribute("name") %>!</h1>
			<jsp:useBean id="beer" class="com.jv391.models.Beer" scope="request" />
			<ul>
				<li>Beer Color =  <jsp:getProperty property="color" name="beer" /></li>
				<li>Beer Rating =  <jsp:getProperty property="rating" name="beer" /></li>
				<li>Beer Added =  <jsp:getProperty property="date" name="beer" /></li>
			</ul>
		</div>
	</div>
	<%@ include file="footer.html" %>
</body>
</html>