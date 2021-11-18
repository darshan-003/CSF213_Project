
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

        <link rel="stylesheet" href="main.css">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href=https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css>

        <!-- jQuery library -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<body>

	
	
	<body class="main-bg">
            <div class="login-container text-c animated flipInX">
                    <div>
                        <h1 class="logo-badge text-whitesmoke"><span class="fa fa-user-circle"></span></h1>
                    </div>
                        <h3 class="text-whitesmoke">Post Product Details</h3>
                        <p class="text-whitesmoke">Details</p>
                    <div class="container-content">
                    
                    
                    
                    
                        <form class="margin-t" action="/addedProduct" >
                        
                        
                         <div class="form-group">
                                <input type="text" class="form-control" placeholder="Id" name="id" required="">
                            </div>
                            
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Name" name="name" required="">
                            </div>
                            
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="ImageUrl" name="imageUrl" required="">
                            </div>
                            
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Price" name="price" required="">
                            </div>
                            
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Description" name="description" required="">
                            </div>
                              <div class="form-group">
                                <input type="text" class="form-control" placeholder="Quantity" name="quantity" required="">
                            </div>
                            
                           
                            <button type="submit" class="form-button button-l margin-b">Add Product</button>
            
                           
                        </form>
                        
                    </div>
                </div>
    </body>
	

</body>
</html>






