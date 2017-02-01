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

<script>
    function validate_form() {
        var form = document.add_product;
        var valid = true;
        if (form.titel.value == "") {
            document.getElementById("titel").style.borderColor = "red";
            form.titel.focus();
            valid = false;
        } else
            document.getElementById("titel").style.borderColor = "green";

        if (isNaN(form.startpreis.value) || form.startpreis.value=="") {
            document.getElementById("startpreis").style.borderColor = "red";
            form.titel.focus();
            valid = false;
        } else
            document.getElementById("startpreis").style.borderColor = "green";
        console.log("HEllo");
        if (isNaN(form.sofortkaufpreis.value) || form.sofortkaufpreis.value == ""
            || Number(form.sofortkaufpreis.value) <= Number(form.startpreis.value)) {
            document.getElementById("sofortkaufpreis").style.borderColor = "red";
            form.titel.focus();
            valid = false;
        } else
            document.getElementById("sofortkaufpreis").style.borderColor = "green";

        if (form.category.value == "") {
            document.getElementById("category").style.borderColor = "red";
            form.category.focus();
            valid = false;
        } else
            document.getElementById("category").style.borderColor = "green";

        if (form.durationAuction.value == "") {
            document.getElementById("durationAuction").style.borderColor = "red";
            form.durationAuction.focus();
            valid = false;
        }else document.getElementById("durationAuction").style.borderColor = "green";

        if (form.description.value == "") {
            document.getElementById("description").style.borderColor = "red";
            form.description.focus();
            valid = false;
        } else
            document.getElementById("description").style.borderColor = "green";


        return valid;
    }

</script>
<div class="container">
    <form class="form-horizontal" role="form" method="post" name="add_product" onsubmit="return validate_form()"
          enctype="multipart/form-data">
        <h2>Seller Form</h2>
        <div class="form-group">
            <label for="titel" class="col-sm-3 control-label">Titel</label>
            <div class="col-sm-9">
                <input type="text" id="titel" name="titel" placeholder="Titel" class="form-control" ng-model="titel"
                       autofocus>
            </div>
        </div>

        <div class="form-group">
            <label for="sofortkaufpreis" class="col-sm-3 control-label">Startpreis</label>
            <div class="col-sm-9">
                <input type="price" id="startpreis" name="startpreis" placeholder="Startpreis" class="form-control"
                       ng-model="startpreis">
            </div>
        </div>
        <div class="form-group">
            <label for="sofortkaufpreis" class="col-sm-3 control-label">Sofortkaufpreis</label>
            <div class="col-sm-9">
                <input type="price" id="sofortkaufpreis" name="sofortkaufpreis" placeholder="Sofortkaufpreis"
                       class="form-control" ng-model="sofortkaufpreis">
            </div>
        </div>
        <div class="form-group">
            <label for="durationAuction" class="col-sm-3 control-label">Duration of Auction (days)</label>
            <div class="col-sm-9">
                <select id="durationAuction" name="durationAuction" class="form-control">
                    <option disabled selected value> -- select an option --</option>
                    <option>5</option>
                    <option>10</option>
                    <option>15</option>
                    <option>30</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label for="category" class="col-sm-3 control-label">Category</label>
            <div class="col-sm-9">
                <select id="category" name="category" class="form-control">
                    <option disabled selected value> -- select an option --</option>
                    <option>Auto / Motor</option>
                    <option>Baby / Kind</option>
                    <option>Beauty / Gesundheit / Wellness</option>
                    <option>Buecher / Filme / Musik</option>
                    <option>Computer / Software</option>
                    <option>Dienstleistungen</option>
                    <option>Freizeit / Instrumente / Kulinarik</option>
                    <option>Games / Konsolen</option>
                    <option>Haus / Garten / Werkstatt</option>
                    <option>Kameras / TV / Multimedia</option>
                    <option>KFZ-Zubehör / Motorradteile</option>
                    <option>Mode / Accessoires</option>
                    <option>Smartphones / Telefonie</option>
                    <option>Spielen / Spielzeug</option>
                    <option>Sport / Sportgeräte</option>
                    <option>Tiere / Tierbedarf</option>
                    <option>Uhren / Schmuck</option>
                    <option>Wohnen / Haushalt / Gastronomie</option>
                    <option>Zu Verschenken</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label for="description" class="col-sm-3 control-label">Description</label>
            <div class="col-sm-9">
                <textarea class="form-control" rows="5" id="description" name="description"
                          placeholder="Description" ng-model="description"></textarea>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">Select Picture</label>
            <div class="col-sm-9">
                <input type="file" name="file" id="inputOne" class="file">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-9 col-sm-offset-3">
                <button onclick="return confirm('Are you sure? Product can not be edited after confirmation!')" type="submit" class="btn btn-primary btn-block">Submit</button>
            </div>
        </div>
    </form> <!-- /form -->

</div> <!-- ./container -->

<jsp:include page="footer.jsp"/>

</body>
</html>
