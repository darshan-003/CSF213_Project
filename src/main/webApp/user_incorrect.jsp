<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Insert title here</title>
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
    <style>
      h2 {
        text-align: center;
      }
    </style>
  </head>

  <body class="main-bg-signin">
    <div class="login-container text-c animated flipInX">
      <div>
        <h1 class="logo-badge text-whitesmoke">
          <span class="fa fa-user-circle"></span>
        </h1>
      </div>
      <h3 class="text-whitesmoke">Sign In details incorrect</h3>
      <p class="text-whitesmoke">Click To sign in Again</p>
      <div class="container-content">
        <form class="margin-t" action="/user_signin">
          <button type="submit" class="form-button button-l margin-b">
            Sign In
          </button>
        </form>
        <p class="margin-t text-whitesmoke">
          <small> OOP Group 7.1 &copy; 2021</small>
        </p>
      </div>
    </div>
  </body>
</html>
