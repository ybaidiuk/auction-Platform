<%--
  Created by IntelliJ IDEA.
  User: marti
  Date: 11.01.2017
  Time: 11:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

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

    <link href="signin.css" rel="stylesheet">


    <title>SWE-Projekt</title>

    <%-- NEUE NAVBAR --%>
    <style>
        body {
            padding-top: 70px;
        }

        #honkknopf {
            background-color: #404040;
            color: #9d9d9d;
        }

        #honkknopf:hover {
            background-color: #101010;
            color: #9d9d9d;
        }

    </style>

</head>
<body>
<div class="container text-center">
    <p><a id="honkknopf" class="btn btn-lg" href="index" role="button">E-Honk</a></p>
</div>

<div class="container">

    <h2>Benutzerkonten:</h2>
    <h3>${totalUser}</h3>
    <br>
    <h2>Auktionen gesamt: </h2>
    <h3>${total}</h3>
    <br>
    <h2>Auktionen Laufend:</h2>
    <h3>${rest}</h3>
    <br>
    <h2>Auktionen verkauft: </h2>
    <h3>${sold}</h3>

</div>

<jsp:include page="footer.jsp"/>

</body>
</html>