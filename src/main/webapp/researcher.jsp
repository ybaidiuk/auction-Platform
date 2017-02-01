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


    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>


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
    <p><a id="honkknopf" class="btn btn-lg" href="index" role="button">E-Honk</a></p><br>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-4">
            <table class="table table-bordered">
                <tr>
                    <th>Benutzerkonten:</th>
                    <td>${totalUser}</td>
                </tr>
                <tr>
                    <th>Auktionen gesamt:</th>
                    <td>${total}</td>
                </tr>
                <tr>
                    <th>Auktionen laufend:</th>
                    <td>${rest}</td>
                </tr>
                <tr>
                    <th>Auktionen verkauft:</th>
                    <td>${sold}</td>
                </tr>
                <tr>
                    <th>Höchster Auktionspreis:</th>
                    <td>${highestAuction}</td>
                </tr>
                <tr>
                    <th>Niedrigster Sofortkaufpreis:</th>
                    <td>${lowestInstant}</td>
                </tr>
                <tr>
                    <th>Höchster Sofortkaufpreis:</th>
                    <td>${highestInstant}</td>
                </tr>
                <tr>
                    <th>Durschnittlicher Sofortkaufpreis:</th>
                    <td>${averrageInstant}</td>
                </tr>
                <tr>
                    <th>Niedrigster Startpreis:</th>
                    <td>${minStart}</td>
                </tr>
                <tr>
                    <th>Höchster Startpreis:</th>
                    <td>${maxStart}</td>
                </tr>
                <tr>
                    <th>Durschnittlicher Startpreis:</th>
                    <td>${avStart}</td>
                </tr>
                <tr>
                    <th>Kürzeste Laufzeit:</th>
                    <td>${minDuration}</td>
                </tr>
                <tr>
                    <th>Längste Laufzeit:</th>
                    <td>${maxDuration}</td>
                </tr>
                <tr>
                    <th>Durschnittliche Laufzeit:</th>
                    <td>${avDuration}</td>
                </tr>
            </table>

   <%-- <h2>Benutzerkonten:</h2>
    <h3>${totalUser}</h3>
    <br>
    <h2>Auktionen gesamt: </h2>
    <h3>${total}</h3>
    <br>
    <h2>Auktionen laufend:</h2>
    <h3>${rest}</h3>
    <br>
    <h2>Auktionen verkauft: </h2>
    <h3>${sold}</h3>--%>
        </div>

        <div class="col-md-4">
            <canvas id="myPie" width="800" height="600"></canvas>
        </div>
        <script>
            var ctx = document.getElementById("myPie").getContext('2d');
            var myChart = new Chart(ctx, {
                type: 'doughnut',
                data: {
                    labels: ['Auktionen laufend', 'Auktionen verkauft'],
                    datasets: [{
                        backgroundColor: [
                            "#D89A4F",
                            "#834747",
                        ],
                        data:[${rest},${sold}]
                    }]
                },
                options: {
                    title: {
                        display: true,
                        fontSize: 24,
                        bold: true,
                        text: 'Auktionen Gesamt: ${total}'
                    }
                }
            });
        </script>

        <div class="col-md-4">
            <canvas id="myBar" width="800" height="600"></canvas>
        </div>
        <script>
            var ctx = document.getElementById("myBar").getContext('2d');
            var myChart = new Chart(ctx, {
                type: 'horizontalBar',
                data: {

                    labels: ['Min Dauer', 'Av Dauer', 'Max Dauer'],
                    datasets: [{
                        label: 'Dauer',
                        backgroundColor: [
                            "#D89A4F",
                            "#834747",
                            "#798B59"
                        ],
                        data:[${minDuration},${avDuration}, ${maxDuration}]
                    }]
                },
                options: {
                    title: {
                        display: true,
                        fontSize: 24,
                        bold: true,
                        text: 'Auktionslaufzeiten'
                    }
                }
            });
        </script>


        <div class="col-md-4">
            <canvas id="myPolar" width="800" height="600"></canvas>
        </div>
        <script>
            var ctx = document.getElementById("myPolar").getContext('2d');
            var myChart = new Chart(ctx, {
                type: 'line',
                data: {

                    labels: ['Min Startpreis', 'Av Startpreis', 'Max Startpreis'],
                    datasets: [{
                        label: 'Startpreise',
                        backgroundColor: [
                            "#831511"
                        ],
                        data:[${minStart}, ${avStart}, ${maxStart}]
                    }]
                },
                options: {
                    title: {
                        display: true,
                        fontSize: 24,
                        bold: true,
                        text: 'Auktionslaufzeiten'
                    }
                }
            });
        </script>


        <div class="col-md-4">
<canvas id="myLine" width="800" height="600"></canvas>
        </div>
<%--<script>
    var ctx = document.getElementById('myLine').getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: ['Benutzerkonten', 'Auktionen', 'Auktionen laufend', 'Auktionen verkauft'],
            datasets: [{
                label: 'Daten',
                data: [${totalUser}, ${total},${rest},${sold}],
                backgroundColor: "#798B59"
            }]
        }
    });
</script>--%>


        <script>
            var ctx = document.getElementById('myLine').getContext('2d');
            var myChart = new Chart(ctx, {
                type: 'line',
                data: {
                    labels: ['Lowest', 'Averrage', 'Highest'],
                    datasets: [{
                        label: 'Sofortkaufpreis',
                        data: [${lowestInstant}, ${averrageInstant},${highestInstant}],

                    }]
                },
                options: {
                    title: {
                        display: true,
                        fontSize: 24,
                        bold: true,
                        text: 'Sofortkaufspreise:'
                    }
                }
            });
        </script>


    </div>

<jsp:include page="footer.jsp"/>

</body>
</html>