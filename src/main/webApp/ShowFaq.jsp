<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%@ page
language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Insert title here</title>
    <link rel="stylesheet" href="faq.css" />
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet"
    href=https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css>

    <!-- jQuery library -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Bootstrap CSS -->
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
      integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
      crossorigin="anonymous"
    />
    <!-- FontAwesome CSS -->
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css"
    />
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script
      src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
      integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
      integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
      integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
      crossorigin="anonymous"
    ></script>
  </head>

  <body class="main-bg">
    <div>
      <div class="text-center">
        <h1 class="mt-5 mb-5">FAQ</h1>
      </div>

      <c:forEach items="${FaqList}" var="faq">
        <section class="container my-5" id="maincontent">
          <section id="accordion">
            <a
              class="
                faqTitle
                py-3
                d-block
                h-100
                w-100
                position-relative
                z-index-1
                pr-1
                text-secondary
                border-top
              "
              aria-controls="faq-17"
              aria-expanded="false"
              data-toggle="collapse"
              href="#faq-17"
              role="button"
            >
              <div class="position-relative">
                <h2 class="h4 m-0 pr-3">${faq.title }</h2>
                <div
                  class="
                    position-absolute
                    top-0
                    right-0
                    h-100
                    d-flex
                    align-items-center
                  "
                >
                  <i class="fa fa-plus"></i>
                </div>
              </div>
            </a>
            <div class="collapse" id="faq-17">
              <div class="card card-body border-0 p-0" style="background: beige;">
                <p style="background-color: beige;">${faq.description }</p>
              </div>
            </div>
          </section>
        </section>
      </c:forEach>
    </div>
  </body>
</html>
