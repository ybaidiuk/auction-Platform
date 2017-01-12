<%--
  Created by IntelliJ IDEA.
  User: florian
  Date: 14.11.16
  Time: 13:12
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
    <form class="form-signin" name="formular1" method="post">
        <h2 class="form-signin-heading">Please log in</h2>
        <script>
            if (${logAndPasIncorrect})
                document.write("<h5 style='color: red' class='form-signin' >login or password incorrect</h5>");
        </script>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="email" id="inputEmail" name="inputEmail" class="form-control" placeholder="Email address" required
               autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" name="inputPassword" class="form-control" placeholder="Password"
               required>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
        <p style="text-align:center">or
            <a class="btn btn-lg btn-default btn-block" href="userAdd" role="button">Create new account</a></p>
    </form>

</div> <!-- /container -->

<script>
    if (${logAndPasIncorrect})
        alert("login or password incorrect");
</script>

<jsp:include page="footer.jsp"/>

</body>
</html>

