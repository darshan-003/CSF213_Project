<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>



<meta charset="utf-8">

	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title>Products</title>
	
<link href="Checkout.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>

</head>


</head>
<body>




<nav class="navbar navbar-expand-md navbar-light sticky-top  " >

		<div class="container-fluid">
			
				<img id="logoimg" src="https://www.bits-pilani.ac.in/Uploads/University/GJCcompetitions/Winners/Nirant_2012C6PS694P_PIL.png">
			

			<button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#Item" >
				<span class="navbar-toggler-icon" ></span>

			</button>

			<div class="collapse navbar-collapse  " id="Item" >
				<ul id="cni" class="navbar-nav ml-auto" >

					<li class="nav-item active">
						<form action="/getUser">
							<input type="hidden" name="username" value=${user.username }></input>
							<input type="hidden" name="password" value=${user.getPassword() }></input>

							<button type="submit" class="btn nav-item-link"> Home</button>


						</form>

					</li>
					<li class="nav-item active">

						<form action="/cart">
							<input type="hidden" name="username" value=${user.username }></input>
							<input type="hidden" name="password" value=${user.getPassword() }></input>

							<button type="submit" class="btn nav-item-link"> Cart</button>


						</form>
					</li>
					<li class="nav-item active">
						<form action="/Checkout">
						   <input type="hidden" name="username" value=${user.username }></input>
						   <input type="hidden" name="password" value=${user.getPassword() }></input> 
							<button id="btnSubmit" type="submit" class="btn nav-item-link"  > Checkout</button>
						  </form>
			   </li>	
					<li class="nav-item active">
						<button href="" class="btn nav-item-link"> Orders Placed </a></button>
					</li>
					<li class="nav-item active">
						<button href="/Faq" class="btn nav-item-link"> FAQ </a></button>
					</li>
				</ul>
				<form action="/getDetails" method="GET">
					<button type="submit" class="btn nav-item-link" name="username" id="username"
						value=${user.username }> Details</button>
				</form>

			</div>
			</div>
	</nav>
	
	





          
     
        
        
    
<div class="center-wrapper">
	<div class="content">
	



	<div class="bag">
		<h5 class="bag-head"><span style="color:black">Your Cart</span></h5>
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
			
			
			 <form class="margin-t" action="/cartQuantity"  id="changeQuantity">   
                         <input type="text" name="quantity" value=${cp.quantity }></input>
                        <input type="hidden" name="username" value=${user.username }></input>
                        <input type="hidden" name="id" value=${cp.id }></input> 
                        <input type="hidden" name="password" value=${user.getPassword() }></input> 
                        <button id="btnSubmit" type="submit" class="btn btn-outline-info"  > Save Quantity</button>
                       
                        
               </form>
               
               <br>
               </div>
               </div>
               
        </c:forEach>
        
                        
</div>
</div>	


		
			
			






</body>
</html>