<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign in as admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 <link rel="stylesheet" href="signin.css">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href=https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css>

        <!-- jQuery library -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <style>
	h2 {text-align: center;}
</style>
</head>

<body class="main-bg">
    <nav class="navbar navbar-expand-md navbar-light sticky-top  " >

		
        <img id="logoimg" src="https://www.bits-pilani.ac.in/Uploads/University/GJCcompetitions/Winners/Nirant_2012C6PS694P_PIL.png">
    

    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#Item" >
        <span class="navbar-toggler-icon" ></span>

    </button>

    <div class="collapse navbar-collapse  " id="Item" >
        <ul id="cni" class="navbar-nav ml-auto" >
        <li class="nav-item active">
            <a href="/addProduct" class="nav-link" > Add Products </a>
        </li>

            

           
           

           <li class="nav-item active">
            <a href="/AddFaq.jsp" class="nav-link" >Add FAQ </a>
           </li>
           
           </ul>
           
           
           
           
           
           
           
           
        
    </div>
</div>
</nav>
<h2  class="text-whitesmoke" >Welcome to Admin page ${user.username }</h2>





</body>
</html>