<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html class="beerDetails">
<head>
<meta charset="utf-8">
<title>Beer Details</title>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/main.css">
</head>
<body class="mainApp">
	<jsp:useBean id="newBeer" class="com.jv391.models.Beer" scope="page">
		<jsp:setProperty name="newBeer" property="*" />
	</jsp:useBean>
	<div class="container">
		<ul>
			<li>Beer Name - ${newBeer.name}</li>
			<li>Color -  ${newBeer.name}</li>
			<li>Rating - ${newBeer.rating}</li>
			<li>Date Added - ${newBeer.date}</li>
		</ul>
	</div><!-- /.container -->
	<%@ include file="../footer.html" %>
</body>
</html>