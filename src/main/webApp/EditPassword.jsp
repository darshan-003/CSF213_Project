<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initialscale=1.0">
<title>Edit Password</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
                   
                <div class="container-content">	
                
<form action="/EditPassword" name="studentForm" onsubmit="submitForm();">
	<h2 class="text-whitesmoke" >Edit Password</h2>
		<div class="form-group">
		<div class="form-group">
			<div class="row">
				<div class="col"><input type="text" class="form-control" name="username"  required="required" value=${user.username } readonly></div>
			</div>        	
        </div>
			<div class="row">
				<div class="col"><input type="password" class="form-control" name="old_"  required="required"  placeholder="Current Password"></div>
			</div>        	
        </div>
        <div class="form-group">
			<div class="row">
				<div class="col"><input type="password" class="form-control" name="new_"  required="required"  placeholder="New Password"></div>
			</div>        	
        </div>
        
		<div class="form-group">
            <button type="submit" class="btn btn-success btn-lg btn-block">Change Password</button>
        </div>
</form>
    
	 
	<p class="margin-t text-whitesmoke"><small> OOP Group 7.1  &copy; 2021</small> </p>
 </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/forge/0.8.2/forge.all.min.js"></script>
<script>

   function submitForm(){
      var plainText =  document.studentForm.old_.value;
      var md = forge.md.sha256.create();  
      md.start();  
      md.update(plainText, "utf8");  
      var hashText = md.digest().toHex();
      document.studentForm.old_.value=hashText;

      var plainText =  document.studentForm.new_.value;
      var md = forge.md.sha256.create();  
      md.start();  
      md.update(plainText, "utf8");  
      var hashText = md.digest().toHex();
      document.studentForm.new_.value=hashText;


   }
</script>
</body>
</html>