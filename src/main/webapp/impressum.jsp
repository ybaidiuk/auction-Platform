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
    <script   src="https://code.jquery.com/jquery-3.1.1.min.js"   integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="   crossorigin="anonymous"></script>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

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

    <title>SWE-Projekt</title>
</head>
<body>

<div class="container text-center">
    <p><a id="honkknopf" class="btn btn-lg" href="index" role="button">E-Honk</a></p>
</div>

<div class="container-fluid">
    <div class="row">
        <div class="col-lg-2"></div>
        <div class="col-lg-8">
            <h2>Impressum</h2>
            <h3>Punkt 1</h3>
            <p>
                Bacon ipsum dolor amet swine beef kevin sirloin meatloaf fatback, leberkas boudin rump ham hock cow ribeye. Tail shankle shank alcatra beef ribs corned beef sirloin burgdoggen swine cupim beef chuck rump. Drumstick kielbasa kevin, hamburger meatball shank prosciutto fatback andouille spare ribs tail. Kevin ground round pork belly, andouille jerky rump pancetta ham cupim.

                Frankfurter sirloin prosciutto, shoulder jerky tri-tip meatball landjaeger tenderloin sausage. Tail rump salami picanha pig, cupim landjaeger strip steak porchetta short loin ham hock shank jerky burgdoggen pancetta. Short ribs frankfurter ball tip ribeye, cupim porchetta shank sausage strip steak spare ribs drumstick shoulder meatloaf tongue. Rump filet mignon meatloaf turkey biltong, drumstick t-bone doner chuck ham cupim ham hock landjaeger ball tip. Cupim pig filet mignon fatback meatloaf short loin t-bone brisket biltong meatball shoulder chuck tenderloin.

                Burgdoggen picanha drumstick, filet mignon kielbasa prosciutto tenderloin frankfurter t-bone chicken bresaola tri-tip swine jowl. Chuck cow pork chop salami sirloin kevin jerky ribeye meatloaf drumstick pancetta t-bone leberkas shank pork loin. Cupim salami sausage picanha, filet mignon turkey kielbasa. Ribeye ham hock fatback kielbasa ground round alcatra brisket pastrami hamburger shankle andouille. Swine pastrami salami, capicola flank pancetta cupim kevin shoulder jowl filet mignon shankle ribeye pork belly. Short loin jowl picanha, andouille ground round doner chuck landjaeger pork belly. Porchetta tail sirloin rump corned beef.

                Prosciutto turkey bacon ribeye kevin picanha frankfurter beef ribs. Landjaeger capicola bacon beef corned beef doner brisket cupim short loin porchetta alcatra picanha boudin shank. Prosciutto short ribs biltong rump shank. Tri-tip meatball corned beef shank shankle landjaeger beef flank sausage alcatra bresaola.
            </p>
            <h3>Punkt 2</h3>
            <p>

                Tongue strip steak pork belly, bresaola pancetta cupim chicken t-bone. Corned beef short ribs shank pork chop venison, cow bacon strip steak porchetta prosciutto. Pork loin boudin shoulder, kevin short loin chuck brisket short ribs pancetta. Swine tongue boudin strip steak ground round picanha chicken tenderloin.

                Alcatra ham pancetta landjaeger ham hock pig. Fatback picanha filet mignon pork belly porchetta pork. Short loin alcatra kevin tail doner short ribs. Short ribs bresaola hamburger, andouille pancetta jerky cupim swine cow sirloin. Picanha rump turducken andouille sausage pig ham hock shankle prosciutto. Ball tip boudin tail, porchetta kevin andouille kielbasa ribeye tri-tip shank turkey tongue. Turducken cow boudin alcatra turkey doner.</p>

            <h3>Punkt 3</h3>
            <p>
                Sirloin hamburger strip steak alcatra bacon short loin salami beef ribeye cow flank. Porchetta sirloin drumstick cow. Chicken flank shoulder, meatloaf kielbasa ham hock leberkas capicola tail ham cow porchetta pork chop. Kevin hamburger filet mignon, strip steak cupim jerky tenderloin ribeye capicola. Swine landjaeger bacon cow, t-bone chicken frankfurter corned beef boudin fatback brisket. Doner brisket strip steak, tail frankfurter turkey tongue venison. Pancetta meatloaf brisket leberkas chuck kevin shank.

                Chicken shankle filet mignon jerky ball tip biltong venison pork belly pork loin alcatra porchetta meatloaf meatball bacon capicola. Bacon shoulder fatback, venison prosciutto bresaola strip steak. Frankfurter pork loin chicken, strip steak porchetta bresaola alcatra doner pastrami kielbasa shoulder rump tenderloin. Short loin tenderloin leberkas, ribeye fatback porchetta swine cupim corned beef chuck capicola.
            </p>
        </div>
        <div class="col-lg-2"></div>
    </div>
</div>

<jsp:include page="footer.jsp"/>

</body>
</html>