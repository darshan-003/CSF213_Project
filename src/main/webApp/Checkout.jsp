<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="Checkout.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>

</head>
<body>
  
<nav class="navbar navbar-expand-md navbar-light sticky-top  " >

		<div class="container-fluid">
			

			<button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#Item" >
				<span class="navbar-toggler-icon" ></span>

			</button>

			<div class="collapse navbar-collapse  " id="Item" >
				<ul id="cni" class="navbar-nav ml-auto" >

					<li class="nav-item active">
					
					<a href="" class="nav-link" > Home </a>
				</li>
				<li class="nav-item active">
					<a href="/addProduct" class="nav-link" > Add Products </a>
				</li>

					<li class="nav-item active">
					
					<form action="/cart">
					     <input type ="hidden" name="username" value=${user.username }></input>
                        <input type ="hidden" name="password" value=${user.getPassword() }></input>
              
                          <button  type="submit" class="btn btn-primary btn-lg"> Cart</button> 
                          
                        
					</form>
				</li>

					<li class="nav-item active">
					<a href="" class="nav-link" > Orders Placed </a>
				   </li>

				   <li class="nav-item active">
					<a href="/Faq" class="nav-link" > FAQ </a>
				   </li>
				   
				   </ul>
				   
				   
				   
				   
				   
				   
				   
				   <form action="/getDetails" method="GET">
  <button type="submit" class="btn btn-primary btn-lg" name="username" id="username" value=${user.username }> Details</button> 
  </form>
				
			</div>
		</div>
	</nav>
<div class="center-wrapper">
	<div class="content">
	
	
	<div class="bag">
		<p class="bag-head"><span style="text-transform: uppercase">Your Cart</span></p>
	</div>
	<c:forEach items="${cp}" var="cp">
	<div class="bag-product">
		<div class="image">
			<img src=${cp.imageUrl } class="product-image">
		</div>
		<div class="description">
			
			<h1>${cp.name }</h1>
			
			<p class="description-text">${cp.description }.</p>
			
			<h2>Rs${cp.price }</h2>
			<div class="quantity-wrapper">
				<div>
					<label for="quantity" style="margin-right: 0.5rem;">Quantity:</label>
	
	
						<option value="1" selected>${cp.quantity }</option>
						
				</div>
				
				<div>
				<form action="/removeproduct">
					     <input type ="hidden" name="username" value=${cp.username }></input>
					     <input type ="hidden" name="id" value=${cp.id }></input>
                        <input type ="hidden" name="password" value=${user.getPassword() }></input>
              
                          <button type="submit" class="btn-remove">Remove</button>
                          
                        
					</form>
				</div>
				
			</div>
		</div>
	</div>
	</c:forEach>
	<div class="bag-total">
		
		<div class="delivery">
			<p class="small">Delivery in 2 working days):<br>
			
			
		</div>
		<div class="total">
			<h3>Total:</h3>
			<h3>Rs ${TotalPrice.getTotalPrice() }</h3>
		</div>
		
		<button href="/thankyou">
			
			<span>Confirm Order</span>
		</button>
	</div>
	<div class="help">
		<p>Need help? Call free 01234 567 890</p>
	</div>
</div>
</div>
<div class="bg"></div>


</body>


</html>