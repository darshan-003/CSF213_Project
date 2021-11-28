<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FAQ</title>
<link rel="stylesheet" href="signin.css">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href=https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css>

        <!-- jQuery library -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body class="main-bg">

  <div class="login-container text-c animated flipInX">
                    <div>
                        <h1 class="logo-badge text-whitesmoke"><span class="fa fa-user-circle"></span></h1>
                    </div>
                        <h3 class="text-whitesmoke">Add a Frequently Asked Question</h3>
                        
		  
		<div class="container-content">
                        <form class="margin-t" action="/addFaq" >
                        	<div class="form-group">
                                <input type="text" class="form-control" placeholder="id" name="id" >
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Question" name="title" >
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Answer" name="description" >
                            </div>
                            <button type="submit" class="form-button button-l margin-b" onclick="return alertFunction();">Save</button>
            
                            
                        </form>
        </div>
     </div>
     <script>
        function alertFunction() {
          alert("FAQ Added");
        }
    </script>
</body>
</html>