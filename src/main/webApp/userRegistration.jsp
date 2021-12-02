<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>BitsEcom</title>
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <link rel="stylesheet" href="signin.css" />
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet"
    href=https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css>

    <!-- jQuery library -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  </head>
  <body class="main-bg-signin">
    <div class="login-container text-c animated flipInX">
      <div>
        <h1 class="logo-badge text-whitesmoke">
          <span class="fa fa-user-circle"></span>
        </h1>
      </div>

      <div class="container-content">
        <form action="/checkUsername">
          <div class="form-group">
            <h4 class="text-whitesmoke">Enter a Username</h4>
          </div>

          <div class="form-group">
            <input type="text" name="username" placeholder="Username" />
          </div>

          <div class="form-group">
            <h6 class="text-whitesmoke">Current Username is not available</h6>
          </div>

          <div class="form-group">
            <button type="submit" class="btn btn-success btn-lg btn-block">
              Check Availibility
            </button>
          </div>
        </form>
      </div>
    </div>
  </body>
</html>
