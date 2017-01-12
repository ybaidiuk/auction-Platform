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
    <script   src="https://code.jquery.com/jquery-3.1.1.min.js"   integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="   crossorigin="anonymous"></script>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>



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
    <form class="form-horizontal" role="form">
        <h2>Edit Product</h2>
        <div class="form-group">
            <label for="titel" class="col-sm-3 control-label">Titel</label>
            <div class="col-sm-9">
                <input type="text" id="titel" placeholder="Titel" class="form-control" autofocus>
            </div>
        </div>
        <div class="form-group">
            <label for="email" class="col-sm-3 control-label">Email</label>
            <div class="col-sm-9">
                <input type="email" id="email" placeholder="Email" class="form-control">
            </div>
        </div>
        <div class="form-group">
            <label for="startpreis" class="col-sm-3 control-label">Startpreis</label>
            <div class="col-sm-9">
                <input type="price" id="startpreis" placeholder="Startpreis" class="form-control">
            </div>
        </div>
        <div class="form-group">
            <label for="sofortpreis" class="col-sm-3 control-label">Sofortkaufpreis</label>
            <div class="col-sm-9">
                <input type="price" id="sofortpreis" placeholder="Sofortkaufpreis" class="form-control">
            </div>
        </div>
        <div class="form-group">
            <label for="category" class="col-sm-3 control-label">Category</label>
            <div class="col-sm-9">
                <select id="category" class="form-control">
                    <option>Food</option>
                    <option>Animal</option>
                    <option>Computer</option>
                    <option>Planet</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label for="comment" class="col-sm-3 control-label">Description</label>
            <div class="col-sm-9">
                <textarea class="form-control" rows="5" id="comment" placeholder="Description"></textarea>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">Select Picture</label>
            <input id="input-1" type="file" class="file">
        </div>


        <div class="form-group">
            <div class="col-sm-9 col-sm-offset-3">
                <div class="checkbox">
                    <label>
                        <input type="checkbox" required>I accept <a href="agb.jsp">terms</a>
                    </label>
                </div>
            </div>
        </div> <!-- /.form-group -->
        <div class="form-group">
            <div class="col-sm-9 col-sm-offset-3">
                <button type="submit" class="btn btn-primary btn-block">Submit</button>
            </div>
        </div>
    </form> <!-- /form -->
</div> <!-- ./container -->

<jsp:include page="footer.jsp"/>

</body>
</html>
