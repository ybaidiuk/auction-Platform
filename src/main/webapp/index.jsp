<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.io.Writer" %><%--
  Created by IntelliJ IDEA.
  User: florian
  Date: 14.11.16
  Time: 13:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType='text/html;charset=UTF-8' language='java' %>
<html>
<head>

    <!-- Latest compiled and minified JQuery -->
    <script src='https://code.jquery.com/jquery-3.1.1.min.js'
            integrity='sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=' crossorigin='anonymous'></script>

    <!-- Latest compiled and minified CSS -->
    <link rel='stylesheet' href='//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'
          integrity='sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u' crossorigin='anonymous'>

    <!-- Optional theme -->
    <link rel='stylesheet' href='//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css'
          integrity='sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp' crossorigin='anonymous'>

    <!-- Latest compiled and minified JavaScript -->
    <script src='//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'
            integrity='sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa'
            crossorigin='anonymous'></script>


    <%-- NEUE NAVBAR --%>
    <style>
        body {
            padding-top: 70px;
        }
    </style>

    <title>SWE-Projekt</title>
</head>
<body>


<jsp:include page="navbar.jsp"/>


<div class='container-fluid'>
    <div class='page-header'>
        <h1> E-Honk
            <small>the new Auction-platform</small>
        </h1>
    </div>
</div>

<div class='container'>
    <div class='jumbotron text-center'>
        <h1>Buy yourself out</h1>
        <p>the place to sell and buy</p>

        <p><a class='btn btn-primary btn-lg' href='productsList' role='button'>Buy</a>

            <script>
                if (${geloged}) {
                    document.write(" <a class='btn btn-primary btn-lg' href='addProduct' role='button'>new Product</a></p>");
                } else {
                    document.write(" <a class='btn btn-primary btn-lg' href='signin' role='button'>new Product</a></p>");
                }</script>
    </div>
</div>

<!-- Page Content -->
<div class='container'>

    <!-- Heading Row -->
    <div class='row'>
        <div class='col-md-8'>
            <img class='img-responsive img-rounded' src='container.jpg' alt='Container.jpg'
                 style='width:900px;height:350px'>
        </div>
        <!-- /.col-md-8 -->
        <div class='col-md-4'>
            <h1>E-Honk, still the best</h1>
            <p>Why not be part of the best?</p>
            <a class='btn btn-primary btn-lg' href='userAdd'>Create your own account now!</a>
        </div>
        <!-- /.col-md-4 -->
    </div>
    <!-- /.row -->
    <hr>
    <!-- Call to Action Well -->
    <div class='row'>
        <div class='col-lg-12'>
            <div class='well text-center'>You can search for all our current offers and other products. Everything else
                is for registered users only.
            </div>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <!-- Content Row -->
    <div class='row'>
        <div class='col-md-4'>
            <h2>Verkaufen</h2>
            <p>Bei uns können Sie alles an den Menschen bringen, von den geliebten Kleinoden bis zu den verhassten
                Staubfängern</p>
            <a class='btn btn-default' href='userAdd'>Subscribe</a>
        </div>
        <!-- /.col-md-4 -->
        <div class='col-md-4'>
            <h2>Bieten</h2>
            <p>Bei uns finden Sie die interessantesten Angebote</p>
            <a class='btn btn-default' href='userAdd'>Subscribe</a>
        </div>
        <!-- /.col-md-4 -->
        <div class='col-md-4'>
            <h2>Genug vom Warten</h2>
            <p>Mittels Sofortkauf muss nicht das ganze Leben vorüber ziehen bis die neuen Sachen endlich greifbar
                sind</p>
            <a class='btn btn-default' href='userAdd'>Subscribe</a>
        </div>
        <!-- /.col-md-4 -->
    </div>
    <!-- /.row -->

</div>
<!-- /.container -->

<jsp:include page="footer.jsp"/>

</body>
</html>
