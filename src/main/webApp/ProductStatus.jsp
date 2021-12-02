<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="utf-8">

			<meta name="viewport" content="width=device-width, initial-scale=1">

			<title>BitsEcom</title>

			<link href="Checkout.css" rel="stylesheet">
			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
			<script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>

		</head>
		<body>
			<nav class="navbar navbar-expand-md navbar-light sticky-top  ">

				<div class="container-fluid">

					<img id="logoimg"
						src="https://www.bits-pilani.ac.in/Uploads/University/GJCcompetitions/Winners/Nirant_2012C6PS694P_PIL.png">


					<button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#Item">
						<span class="navbar-toggler-icon"></span>

					</button>

					<div class="collapse navbar-collapse  " id="Item">
						<ul id="cni" class="navbar-nav ml-auto">





							<li class="nav-item active">
								<a href="/addProduct" class="nav-link" style="color: white;"> Add Products </a>
							</li>

							<li class="nav-item active">
								<a href="/AddFaq.jsp" class="nav-link" style="color: white;">Add FAQ </a>
							</li>
							<li class="nav-item active">
								<a href="/ProductStatus" class="nav-link" style="color: white;">Product Status </a>
							</li>




						</ul>


					</div>
				</div>
			</nav>

			<div class="center-wrapper">
				<div class="content">
					<div class="bag">
						<h5 class="bag-head"><span style="color:black">Product Status</span></h5>
						<hr>
					</div>

					<c:forEach items="${ProductList}" var="cp">
						<div class="bag-product">
							<div class="image">
								<img src=${cp.imageUrl } class="product-image" height="200px" width="200px">
							</div>
							<div class="description">

								<h5><span style="color:black" style="padding: 100px">${cp.name }</span></h5>

								<br>

								<h5><span style="color:black" style="padding: 100px">Rs ${cp.price }</span></h5>

								<h5><span style="color:black" style="padding: 100px">Quantity Remaining: ${cp.quantity
										}</span></h5>




								<br>
							</div>
						</div>
						<hr>
					</c:forEach>


				</div>
			</div> ]
		</body>

		</html>