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
    <style>
      h2 {
        text-align: center;
      }
      button {
        cursor: pointer;
        font-family: tahoma;
        margin-top: 5px;
        margin-right: 15px;
        position: absolute;
        top: 0;
        right: 0;
      }
    </style>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <style>
      .w3-btn {
        width: 150px;
      }
    </style>
  </head>

  <body class="main-bg">
    <h2 class="text-whitesmoke">Welcome to User page ${user.username }</h2>

    <form action="/getDetails" method="GET">
      <button
        class="w3-button w3-black w3-round"
        name="username"
        id="username"
        value="${user.username"
        }
        type="submit"
      >
        Details
      </button>
    </form>
  </body>
</html>
