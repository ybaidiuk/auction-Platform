<%@ page import="java.util.Set" %>
<%@ page import="model.entitys.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: martin
  Date: 21.01.2017
  Time: 20:35
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

        tr:nth-child(even) {
            background: lightgray;
        }

    </style>

</head>
<body>
<jsp:include page="navbar.jsp"/>


<div class="container">
    <table class="table table-bordered">
        <th>Titel</th>
        <th>Current Price</th>
        <th>Auction end</th>
        <th>Buyer</th>
        <%
            Calendar cal = Calendar.getInstance();
            SimpleDateFormat sf = new SimpleDateFormat("dd.MM.yyyy  - @ - HH:mm");

        List<Product> list = (List<Product>) request.getAttribute("list");
        for (Product product : list) {
            cal.setTime(product.getAddDay());
            cal.add(5, product.getDurationAuction());
            String auctionDate = sf.format(cal.getTime());
            Calendar calNow = Calendar.getInstance();
            if (calNow.after(cal)){
                auctionDate = "Sold";
            }
    %>


        <tr>
            <td><a href="/showProduct?searchId=<%=product.getProductId()%>"><%=product.getTitle()%></a></td>
            <td><%=product.getCurrentPrice()%></td>
            <td><%=auctionDate%></td>
            <td><%=product.getHighestBidderEmail()%></td>
        </tr>
        <%}%>
    </table>



</div>

<jsp:include page="footer.jsp"/>

</body>
</html>


