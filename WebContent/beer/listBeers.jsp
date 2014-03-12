<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.jv391.models.Beer" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="brTg" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html class="beerList">
<head>
<meta charset="utf-8">
<title>Create a Beer</title>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css">
<link rel="stylesheet" href="../css/main.css">
</head>
<body class="mainApp">
	<div class="container">
		<h1><i class="fa fa-beer"></i> Beer Listing</h1>
		<%! Beer[] beers = Beer.beers; %>
		<table class="table">
			<thead>
				<tr>
					<th>Name</th>
					<th>Color</th>
					<th>Time Added</th>
					<th>Rating</th>
				</tr>
			</thead>
			<tbody>
				<brTg:listBeers/>
				<brTg:listBeers/>
				<brTg:listBeers/>		
			</tbody>
		</table>
	</div><!-- /.container -->
	<%@ include file="../footer.html" %>
	<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
	<script>
		$( document ).ready(function() {
			$('body').fadeIn(2000);
			$('table').fadeIn(1000);
		});
	</script>
</body>
</html>