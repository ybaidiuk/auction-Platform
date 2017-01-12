<%--
  Created by IntelliJ IDEA.
  User: florian
  Date: 29.11.16
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <!-- Latest compiled and minified JQuery -->
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"
            integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>


    <title>SWE-Projekt</title>

    <%-- NEUE NAVBAR --%>
    <style>
        body {
            padding-top: 70px;
        }
    </style>

</head>
<body>

<jsp:include page="navbar.jsp"/>

<div class="container">

    <div class="row">

        <div class="col-md-3">
            <!-- <div class="caption-full"> -->

            <script>
                if (${sold}) {
                    document.write("<h1 style='color: red' >Product Sold</h1>");
                }
            </script>

            <h4>Title</h4>
            <h2>${titel}</h2>

            <form method="post" name="form-watchlist" role="form">
                <button type="submit" name="addToWatchlist" class="btn btn-primary">Add to my Watchlist</button>
            </form>
            <br><br>
            <h4>Category</h4>
            <h3>${category}</h3>
            <br>

        </div>

        <script>


        </script>

        <div class="col-md-3">

            <h5>Starting bid</h5>
            <h4>${startPrice}</h4>
            <h4>Current price</h4>
            <h3>${currentPrice}</h3>
            <script>
                if (${!sold}) {
                    document.write(" <h5> Duration Auction </h5> ");
                    document.write(" <h4> ${durationAuction} </h4> ");
                    document.write(" <form method='post' name='form-bitPrise' role='form'>");
                    document.write(" <input  class='form-control' type='number' name='bidPrice' required>");
                    document.write(" <p></p> ");
                    document.write(" <button  type='submit' name='bidNow' class='btn btn-success'>Bid now</button>")
                    document.write(" </form>");
                }
            </script>
            <br><br>
            <h4>Buy now</h4>
            <h3>${sofortKaufPrice}</h3>

            <script>
                if (${!sold}) {
//                    Da ist arbeit reload page
                    document.write(" <form method='post' name='form-bayNow' role='form'>");
                    document.write(" <button type='submit' name='bayNow' class='btn btn-warning'>Buy now</button> ");
                    document.write(" </form>");
                }
            </script>
            <script>
                if (${bidderBool}) {
                    document.write(" <h3>Sie sind der Höchstbietende</h3>");
                }
            </script>
        </div>

        <div class="col-md-6">
            <div class="thumbnail">
                <img class="img-responsive" src="/imageResponser?imageName=${imageName}"/>
            </div>
        </div>

    </div> <!-- row -->

    <div class="row">
        <div class="col-md-12">
            <br>
            <h4>Description</h4>
            <p>${description}</p>
        </div>
    </div>

</div>
<!-- /.container -->

<jsp:include page="footer.jsp"/>

</body>
</html>
