<%--
  Created by IntelliJ IDEA.
  User: florian
  Date: 28.12.16
  Time: 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<body>


<script>
    function init() {
        if ("${firstName}" != "") {
            var one = document.getElementById("one");
            var two = document.getElementById("two");

            one.setAttribute("href", "userEdit");
            one.innerHTML = "<li><a href='userEdit'><span class='glyphicon glyphicon-user'></span> ${firstName}</a></li>";
            two.setAttribute("href", "exit");
            two.innerHTML = "<li><a onclick=\"return confirm('Are you sure?')\" href='exit'><span class='glyphicon glyphicon-log-in'></span> Exit</a></li>";
        }
    }
    window.onload = init;
</script>

<nav class='navbar navbar-inverse navbar-fixed-top'>
    <div class='container-fluid'>
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class='navbar-header'>
            <button type='button' class='navbar-toggle' data-toggle='collapse' data-target='#ourNavbar'>
                <span class='sr-only'>Toggle navigation</span>
                <span class='icon-bar'></span>
                <span class='icon-bar'></span>
                <span class='icon-bar'></span>
            </button>
            <a class='navbar-brand' href='index'>E-Honk</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class='collapse navbar-collapse' id='ourNavbar'>
            <ul class='nav navbar-nav'>
                <li><a href='index'>Home<span class='sr-only'>(current)</span></a></li>
                <li><a href='productsList'>Products List</a></li>
            </ul>

            <%--!!!--%>
            <form class="navbar-form navbar-left" method="post">
                <div class="input-group">
                    <input type="text" name="suchWort" class="form-control">
                    <div class='input-group-btn'>
                        <button class='btn btn-default' type='submit'>Search</button>
                    </div>
                </div>
            </form>
            <%--!!!--%>

            <ul class='nav navbar-nav navbar-right'>
                <li class='dropdown'>
                    <a href='#' class='dropdown-toggle' data-toggle='dropdown' href='#'>Menu <span class='caret'></span></a>
                    <ul class='dropdown-menu'>
                        <li><a href='admin'>Admin</a></li>
                        <li><a href='researcher'>Researcher</a></li>
                        <li role='separator' class='divider'></li>
                        <li><a href='watchlist'>My Watchlist</a></li>
                        <li><a href='myAuctions'>My Auctions</a></li>

                    </ul>
                </li>
                <li><a href='userAdd' id='one'><span class='glyphicon glyphicon-user'></span> Sign Up</a></li>
                <li><a href='signin' id='two'><span class='glyphicon glyphicon-log-in'></span> Log In</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

</body>
</html>
