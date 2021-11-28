<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="ISO-8859-1" />
    <meta name="viewport" content="width=device-width, initialscale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="./signin.css" />
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet"
    href=https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css>

    <!-- jQuery library -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  </head>
  <body class="main-bg">
    <div class="login-container text-c animated flipInX">
      <h1 class="text-whitesmoke">Welcome to Malakar Market!</h1>
      <img
        id="logoimg"
        src="https://www.bits-pilani.ac.in/Uploads/University/GJCcompetitions/Winners/Nirant_2012C6PS694P_PIL.png"
      />
      <div>
        <h1 class="logo-badge text-whitesmoke">
          <span class="fa fa-user-circle"></span>
        </h1>
      </div>
      <h3 class="text-whitesmoke">Sign In as a User</h3>
      <p class="text-whitesmoke">Sign In</p>
      <div class="container-content">
        <form
          class="margin-t"
          action="/getUser"
          name="studentForm"
          onsubmit="submitForm();"
        >
          <div class="form-group">
            <input
              type="text"
              class="form-control"
              placeholder="Username"
              name="username"
              required="required"
            />
          </div>
          <div class="form-group">
            <input
              type="password"
              class="form-control"
              placeholder="*****"
              name="password"
              required="required"
            />
          </div>
          <button type="submit" class="form-button button-l margin-b">
            Sign In
          </button>

          <p class="text-whitesmoke text-center">
            <small>Do not have an account?</small>
          </p>
          <a class="text-darkyellow" href="/newUserRegistration"
            ><small>Sign Up</small></a
          >
          <br />
          <a class="text-darkyellow" href="/admin_signin"
            ><small>Admin Sign In</small></a
          >
        </form>
        <p class="margin-t text-whitesmoke">
          <small> OOP Group 7.1 &copy; 2021</small>
        </p>
      </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/forge/0.8.2/forge.all.min.js"></script>
    <script>
      function submitForm() {
        var plainText = document.studentForm.password.value;
        var md = forge.md.sha256.create();
        md.start();
        md.update(plainText, "utf8");
        var hashText = md.digest().toHex();
        document.studentForm.password.value = hashText;
      }
    </script>
  </body>
</html>
