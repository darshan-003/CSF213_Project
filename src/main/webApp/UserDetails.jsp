<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 <link rel="stylesheet" href="signin.css">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href=https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css>

        <!-- jQuery library -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <style>
	h2 {text-align: center;;}
</style>
</head>

<body class="main-bg">
            <div class="login-container text-c animated flipInX">
                    <div>
                        <h1 class="logo-badge text-whitesmoke"><span class="fa fa-user-circle"></span></h1>
                    </div>
                    
                     <h3 class="text-whitesmoke">User Details</h3>
                    <div class="container-content">
                    <h4 class="text-whitesmoke">Username : ${user.username }</h4>
                    <h4 class="text-whitesmoke">Email : ${user.email }</h4>
                    <h4 class="text-whitesmoke">ID : ${user.idNumber }</h4>
                    <h4 class="text-whitesmoke">Mobile No. : ${user.mobileNumber }</h4>
                    <h4 class="text-whitesmoke">Hostel : ${user.hostelName }</h4>
                    <h4 class="text-whitesmoke">Room No. : ${user.roomNumber }</h4>
                    
                       
                    
                    </div>
                    
                    <form action="/editUserDetails">
                    
                    <div class="form-group">
						            <button type="submit" class="btn btn-success btn-lg btn-block" name="username" id="username" value=${user.username }>Edit Details</button>
						        </div>

                    </form>
                    
                     <form action="/editUserPassword">
                    
                    <div class="form-group">
						            <button type="submit" class="btn btn-success btn-lg btn-block" name="username" id="username" value=${user.username }>Edit Password</button>
						        </div>

                    </form>
                    
             </div>

</body>



</html>