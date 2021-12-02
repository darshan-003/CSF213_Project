<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
		<!DOCTYPE html>
		<html>

		<head>



			<meta charset="utf-8">

			<meta name="viewport" content="width=device-width, initial-scale=1">

			<title>BitsEcom</title>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
			<script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>

			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

			<link rel="stylesheet" type="text/css" href="thankyou.css"  >
  </head>
  <body class="thankyouPage">

    <nav class="navbar navbar-expand-md navbar-light sticky-top  ">


      <img id="logoimg"
        src="https://www.bits-pilani.ac.in/Uploads/University/GJCcompetitions/Winners/Nirant_2012C6PS694P_PIL.png">


      <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#Item">
        <span class="navbar-toggler-icon"></span>

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
        </li >
            
         
         <li class="nav-item active">
          <form action="/Orders">
             <input type ="hidden" name="username" value=${user.username }></input>
            <input type ="hidden" name="password" value=${user.getPassword() }></input>
              <button  type="submit"  class="btn nav-item-link">Your Orders </button> 
          </form>
        </li >
            
           <li class="nav-item active">	
           <form action="/Faq">
            
              <button  type="submit"  class="btn nav-item-link"> Faq </button> 
          </form>
        </li>
          <li class="nav-item active">
      <form action="/getDetails" method="GET">
              <button type="submit" class="btn nav-item-link" name="username" id="username" value=${user.username} > Details</button> 
            </form>
          </li>
          
          <li class="nav-item active">
          <form action="/">
             
              <button  type="submit"  class="btn nav-item-link">Sign out </button> 
          </form>
        </li >
        </ul>	   
      </div>
    </nav>
    <div>
      <h2 class="thankyouText">
        The amount will be deducted from your SWD account. Thank you for shopping
        with us.
      </h2>
    </div>
  </body>
</html>
