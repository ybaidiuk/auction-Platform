<%@ page import="model.entitys.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="model.managers.HibernateUtil" %>
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

    <script>
        $(document).ready(function () {
            $('#list').click(function (event) {
                event.preventDefault();
                $('#products .item').addClass('list-group-item');
            });
            $('#grid').click(function (event) {
                event.preventDefault();
                $('#products .item').removeClass('list-group-item');
                $('#products .item').addClass('grid-group-item');
            });
        });

        function init() {
            if ("${firstName}" != ""){
                var one = document.getElementById("one");
                var two = document.getElementById("two");

                one.setAttribute("href", "userEdit");
                one.innerHTML = " ${firstName}";
                two.setAttribute("href", "exit");
                two.innerHTML = " Exit";
            }
        }
        window.onload = init;
    </script>


    <link href="itemList.css" rel="stylesheet">

    <style>
        body {
            padding-top: 70px;
        }
    </style>

    <title>SWE-Projekt</title>
</head>
<body>

<jsp:include page="navbar.jsp"/>

<div class="container">
    <div class="well well-sm">
        <strong>Category Title </strong>
        <div class="btn-group">
            <a href="#" id="list" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-th-list">
                </span>List</a> <a href="#" id="grid" class="btn btn-default btn-sm"><span
                class="glyphicon glyphicon-th"></span>Grid</a>
        </div>
    </div>
    <div id="products" class="row list-group">


        <%
            List<Product> list = (List<Product>) request.getAttribute("list");
            for (Product product : list) {
        %>

        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <a href="/showProduct?searchId=<%=product.getProductId()%>"/>
                <img class="group list-group-image" width="300"
                     src="/imageResponser?imageName=<%=product.getImage()%>"
                     alt=""/>
                <div class="caption">
                    <h4 class="group inner list-group-item-heading">
                        <%=product.getTitle()%>
                    </h4>
                    <% if (product.isSold()) { %>
                    <h1 style="color: red">Sold</h1>
                    <%}%>
                    <p class="group inner list-group-item-text">
                        <%=product.getDescription()%>
                    </p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">
                                <%=product.getCurrentPrice()%>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%}%>

    </div>

    <nav aria-label="...">
        <ul class="pager">
            <li><a href="#">Previous</a></li>
            <li><a href="#">Next</a></li>
        </ul>
    </nav>

</div>

<jsp:include page="footer.jsp"/>

</body>
</html>
