<%--
  Created by IntelliJ IDEA.
  User: y.baidiuk
  Date: 28/11/2016
  Time: 23:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

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


    <title>registrationForm</title>

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

<script>
    function validate_form() {
        var form = document.editForm;
        valid = true;

        if (form.firstName.value == "") {
            document.getElementById("firstName").style.borderColor = "red";
            form.firstName.focus();
            valid = false;
        }else
            document.getElementById("firstName").style.borderColor = "green";
//
        if (form.lastName.value == "") {
            document.getElementById("lastName").style.borderColor = "red";
            form.lastName.focus();
            valid = false;
        }else
            document.getElementById("lastName").style.borderColor = "green";


        if (form.password.value == "") {
            document.getElementById("password").style.borderColor = "red";
            form.password.focus();
            valid = false;
        }else
            document.getElementById("password").style.borderColor = "green";

        if (form.retypePassword.value != form.password.value ||form.retypePassword.value == "") {
            document.getElementById("retypePassword").style.borderColor = "red";
            form.retypePassword.focus();
            valid = false;
        } else
            document.getElementById("retypePassword").style.borderColor = "green";

        if (form.birthDate.value == "") {
            document.getElementById("birthDate").style.borderColor = "red";
            form.birthDate.focus();
            valid = false;
        }else
            document.getElementById("birthDate").style.borderColor = "green";

        if (form.country.value == "") {
            document.getElementById("country").style.borderColor = "red";
            form.country.focus();
            valid = false;
        }else
            document.getElementById("country").style.borderColor = "green";

        if (form.adresse.value == "") {
            document.getElementById("adresse").style.borderColor = "red";
            form.adresse.focus();
            valid = false;
        }else
            document.getElementById("adresse").style.borderColor = "green";

        return valid;
    }
</script>
<div class="container text-center">
    <p><a id="honkknopf" class="btn btn-lg" href="index" role="button">E-Honk</a></p>
</div>

<div class="container">
    <form class="form-horizontal" role="form" method="post" name ="editForm" onsubmit="return validate_form ( );">
        <h2>Your's Profil</h2>
        <div class="form-group">
            <label for="firstName" class="col-sm-3 control-label">First Name</label>
            <div class="col-sm-9">
                <input type="text" name="firstName" id="firstName" value="<c:out value='${firstName}'/>" placeholder="First Name" class="form-control">
            </div>
        </div>
        <div class="form-group">
            <label for="lastName" class="col-sm-3 control-label" >Last Name</label>
            <div class="col-sm-9">
                <input type="text" name="lastName" id="lastName" value="<c:out value='${lastName}'/>" placeholder="Last Name"  class="form-control" >
            </div>
        </div>
        <div class="form-group">
            <label for="email" class="col-sm-3 control-label">Email</label>
            <div class="col-sm-9">
                <input type="email" readonly name="email" id="email" placeholder="Email" class="form-control" value="<c:out value='${email}'/>">
            </div>
        </div>
        <div class="form-group">
            <label for="password" class="col-sm-3 control-label" >Password</label>
            <div class="col-sm-9">
                <input type="password" name="password" value="<c:out value='${password}'/>" id="password" placeholder="Password" class="form-control">
            </div>
        </div>
        <div class="form-group">
            <label for="password" class="col-sm-3 control-label">Re-enter Password</label>
            <div class="col-sm-9">
                <input type="password" name="retypePassword" value="<c:out value='${password}'/>" id="retypePassword" placeholder="Password"
                       class="form-control">
            </div>
        </div>
        <div class="form-group">
            <label for="birthDate" class="col-sm-3 control-label">Birthday</label>
            <div class="col-sm-9">
                <input value="<c:out value='${dateOfBirth}'/>" type="date" name="birthDate" id="birthDate" class="form-control"/>
            </div>

        </div>
        <div class="form-group">
            <label for="country" class="col-sm-3 control-label">Country</label>
            <div class="col-sm-9">
                <select name="country" id="country"  class="form-control" >
                    <option>${country}</option>
                    <option>Austria</option>
                    <option>Ukraine</option>
                    <option>Bahamas</option>
                    <option>Cambodia</option>
                    <option>Denmark</option>
                    <option>Ecuador</option>
                    <option>Fiji</option>
                    <option>Gabon</option>
                    <option>Haiti</option>
                </select>
            </div>
        </div> <!-- /.form-group -->
        <div class="form-group">
            <label for="adresse" class="col-sm-3 control-label">Adresse</label>
            <div class="col-sm-9">
                <input type="text" name="adresse" id="adresse" value="<c:out value='${adresse}'/>" placeholder="Musterstrasse 12A/11, Wien 1090" class="form-control" >
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-9 col-sm-offset-3">
                <button onclick="return confirm('Are you sure?')" type="submit" class="btn btn-primary btn-block">Save</button>
            </div>
        </div>
    </form> <!-- /form -->
</div> <!-- ./container -->

<jsp:include page="footer.jsp"/>

</body>
</html>