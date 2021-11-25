<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>CheckOut</title>
<link href="Checkout.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>

</head>
<body>
  
<nav class="navbar navbar-expand-md navbar-light sticky-top  " >
<img id="logoimg" src="https://www.bits-pilani.ac.in/Uploads/University/GJCcompetitions/Winners/Nirant_2012C6PS694P_PIL.png">
		<div class="container-fluid">
			

			<button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#Item" >
				<span class="navbar-toggler-icon" ></span>

			</button>

			<div class="collapse navbar-collapse  " id="Item" >
				<ul id="cni" class="navbar-nav ml-auto" >

					<li class="nav-item active">
					
						<form action="/getUser">
							<input type ="hidden" name="username" value=${user.username }></input>
						   <input type ="hidden" name="password" value=${user.getPassword() }></input>
				 
							 <button  type="submit" class="btn btn-primary btn-lg"> Home</button> 
							 
						   
					   </form>
				</li>
				

					<li class="nav-item active">
					
					<form action="/cart">
					     <input type ="hidden" name="username" value=${user.username }></input>
                        <input type ="hidden" name="password" value=${user.getPassword() }></input>
              
                          <button  type="submit" class="btn btn-primary btn-lg"> Cart</button> 
                          
                        
					</form>
				</li>

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
	
			</div>
		</div>
	</nav>
<div class="center-wrapper">
	<div class="content">
	
	
	<div class="bag">
		<p class="bag-head"><span style="color:white">Your Cart</span></p>
	</div>
	<c:forEach items="${cp}" var="cp">
	<div class="bag-product">
		<div class="image">
			<img src=${cp.imageUrl } class="product-image">
		</div>
		<div class="description">
			
			<h1><span style="color:yellow" style="padding: 100px">${cp.name }</span></h1>
			
			<p class="description-text"><span style="color:whitesmoke" style="padding: 100px">${cp.description }.</span></p>
			
			
			<h2><span style="color:white" style="padding: 100px">Rs${cp.price }</span></h2>
			<div class="quantity-wrapper">
				<div>
					<label for="quantity" style="padding: 100px"><span style="color:white">Quantity:</span></label>

	
						<option value="1" selected><span style="color:white">${cp.quantity }</span></option>
						</style>
				</div>
				
				<div>
				<form action="/removeproduct">
				
			
					     <input type ="hidden" name="username" value=${cp.username }></input>
					     <input type ="hidden" name="id" value=${cp.id }></input>
                        <input type ="hidden" name="password" value=${user.getPassword() }></input>
              
                          <button type="submit" class="btn-remove"><span style="color:white">Remove</span></button>
                          
                       
					</form>
				</div>
				
			</div>
		</div>
	</div>
	</c:forEach>
	<div class="bag-total">
		
		<div class="delivery">
			<p class="small"><span style="color:white" style="font-size:50px" >Delivery in 2 working days):</span><br>
			
			
		</div>
		<div class="total">
		
			<h3><span style="color:white">Total:</span></h3>
			<h3><span style="color:white">Rs ${TotalPrice.getTotalPrice() }</span></h3>
		</div>
		<div class = "thank">
		
		<a href="thankyou.html" class = "confirm">
		 
		<span style="color:white">Confirm Order</span></a>
		</div>	
		
	</div>
	<div class="help">
		<p><span style="color:white">Need help? Call free 01234 567 890</span></p>
	</div>
</div>
</div>
<div class="bg"></div>


</body>


</html>