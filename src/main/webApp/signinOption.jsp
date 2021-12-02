<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>BitsEcom</title>
    <link rel="stylesheet" href="signin.css" />
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet"
    href=https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css>

    <!-- jQuery library -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
      button {
        background-color: #4caf50;
        border: none;
        color: white;
        padding: 15px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        cursor: pointer;
        border-radius: 12px;
      }
    </style>
  </head>
  <body>
    <body class="main-bg">
      <div class="login-container text-c animated flipInX">
        <div>
          <h1 class="logo-badge text-whitesmoke">
            <span class="fa fa-user-circle"></span>
          </h1>
        </div>
        <div>
          <a href="/user_signin">
            <button><h3 class="text-whitesmoke">Sign in as User</h3></button>
          </a>
        </div>
        <br />
        <div>
          <a href="/admin_signin">
            <button><h3 class="text-whitesmoke">Sign in as Admin</h3></button>
          </a>
        </div>
        <br />
      </div>
    </body>
  </body>
</html>
