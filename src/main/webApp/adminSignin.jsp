<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

        <link rel="stylesheet" href="signin.css">
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
                        <h3 class="text-whitesmoke">Sign in as an admin</h3>
                        <p class="text-whitesmoke">Sign In</p>
                    <div class="container-content">
                        <form class="margin-t" action="/getAdmin" >
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Username" name="username" required="">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" placeholder="*****"  name="password" required="">
                            </div>
                            <button type="submit" class="form-button button-l margin-b">Sign In</button>
            
                            
                            
                        </form>
                        <p class="margin-t text-whitesmoke"><small> OOP Group 7.1  &copy; 2021</small> </p>
                    </div>
                </div>
    </body>
	

</body>
</html>



