<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<body class="main-bg">
  <div class="login-container text-c animated flipInX">
                    <h2 class="text-whitesmoke">Frequently Asked Questions</h2>
                  
	                    
	                    <div >
	                  
	                     <c:forEach items="${FaqList}" var="faq">
	                    <div class="bg-transparent border" data-tor="hover:border(danger)">
	                     <h3 class="text-whitesmoke-bold" > ${faq.title }</h3>
	                    <h4 class="text-whitesmoke">  ${faq.description }</h4> 
	                   </div>
	                    </c:forEach>
	                    
	                    <form action="/addFaq">
                    
                    <div >
						           <button type="submit" class="btn btn-outline-success">Add FAQ(admin)</button>
						        </div>

                    </form>
	                    </div>
                     
   </div>
				
</body>
</html>