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
							 <button  type="submit"  class="btn nav-item-link"> Home</button> 
					   </form>
				</li>
					<li class="nav-item active">
					<form action="/cart">
					     <input type ="hidden" name="username" value=${user.username }></input>
                        <input type ="hidden" name="password" value=${user.getPassword() }></input>
                          <button  type="submit"  class="btn nav-item-link"> Cart</button> 
					</form>
				</li>
				<li class="nav-item active">
					<form action="/Orders">
					   <input type="hidden" name="username" value=${user.username }></input>
					   <input type="hidden" name="password" value=${user.getPassword() }></input> 
						<button id="btnSubmit" type="submit" class="btn nav-item-link"  > Your Orders</button>
					  </form>
				</li>
				     <li class="nav-item active">	
					   <form action="/Faq">
							
							  <button  type="submit"  class="btn nav-item-link"> Faq </button> 
						</form>
					</li>
					<li class="nav-item active">

						<form action="/getDetails" method="GET">
							<button type="submit" class="btn nav-item-link" name="username" id="username" value=${user.username }> Details</button> 
						</form>
					</li>
					<li class="nav-item active">
						<form action="/">
							  <button  type="submit"  class="btn nav-item-link">Sign out </button> 
						</form>
					</li >
				</ul>	   
				
			</div>
		</div>
	</nav>
	
<div class="center-wrapper">
	<div class="content">
	
	
	<div class="bag">
		<h5 class="bag-head"><span style="color:black">Your Cart</span></h5>
		<hr>
	</div>
	<c:forEach items="${cp}" var="cp">
	<div class="bag-product" >
		<div class="image"  >
			<img src=${cp.imageUrl } class="product-image"  height="200px" width="200px">
		</div>
		<div class="description">
			
			<h5><span style="color:black" style="padding: 100px">${cp.name }</span></h5>
			
			<br>
			
			<h5><span style="color:black" style="padding: 100px">Rs ${cp.price }</span></h5>
			<div class="quantity-wrapper" >
				<div>
					<label for="quantity" ><span style="color:black">Quantity: ${cp.quantity }</span></label>
						
				<div style="padding: 50px">
				
				</div>		
				
				</div>
				
			<div>
				<form action="/removeproduct">
				
			
					     <input type ="hidden" name="username" value=${cp.username }></input>
					     <input type ="hidden" name="id" value=${cp.id }></input>
                        <input type ="hidden" name="password" value=${user.getPassword() }></input>
              
                          <button type="submit" class="btn-remove removeButton"><span style="color:white">Remove</span></button>
                          
                       
					</form>
				</div>
				
			</div>
		</div>
	</div>
	<hr>
	</c:forEach>
	<div class="bag-total">
		
		<div class="delivery">
			<p class="small"><span style="color:black" style="font-size:50px" >Delivery in 2 working days):</span><br>
			
			
		</div>
		<div class="total">
		
			<h3><span style="color:black">Total:</span></h3>
			<h3><span style="color:black">Rs ${TotalPrice.getTotalPrice() }</span></h3>
		</div>
		<div class = "thank confirm">
		<div class = "thank">
			<form action="/placeOrder">
				<input type ="hidden" name="username" value=${user.username }></input>	    
                <input type ="hidden" name="password" value=${user.getPassword() }></input>
              	<button type="submit" class="btn-remove confirm">Confirm</button>
            </form>
		</div>
	</div>
</div>
</div>
<div class="help">
	<p><span style="color:black">Need help? Call free 01234 567 890</span></p>
</div>

</body>


</html>