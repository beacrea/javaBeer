<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html class="beerCreate">
<head>
<meta charset="utf-8">
<title>Create a Beer</title>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/main.css">
</head>
<body class="mainApp">
	<div class="container">
		<h1>Create a Beer</h1>
			<form action="details.jsp">
			  <div class="form-group">
			    <label>Name</label>
				<input class="form-control" type="text" name="name">
				<label>Rating</label>
				<input class="form-control" type="text" name="rating">
				<label>Color</label>
				<input class="form-control" type="text" name="color">
			  </div>
			  <button type="submit" class="btn btn-primary">Submit</button>
			</form>
	</div><!-- /.container -->
	<%@ include file="../footer.html" %>
</body>
</html>