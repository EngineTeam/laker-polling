<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Laker Polling</title>
    <link rel="icon" href="${resource(directory: 'images', file: 'logo.ico')}"/>
    <asset:stylesheet href="bootstrap.min.css"/>
    %{--<asset:stylesheet href="bootstrap-theme.min.css"/>--}%
    <asset:stylesheet href="landing.css"/>
    <asset:stylesheet src="agency.css"/>
    <asset:stylesheet src="agency.min.css"/>
    <asset:stylesheet src="style.css"/>
</head>

<body class="bg-light-gray">

<!-- Navigation -->
<nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top">
<!--<nav class="navbar navbar-default navbar-fixed-top" role="navigation">-->
    <div class="container topnav">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#navmenu">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <div class="navbar-header">
                <a class="navbar-brand" href="/">
                    %{--<span>    <asset:image src="logo2.png" class="logo"/></a></span>--}%
                    %{--Laker Polling--}%
                    <span> <asset:image src="logo2.png" class="logo" /> </span>
                    %{--Laker Polling--}%
                </a>
            </div>

        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navmenu">
            <ul class="nav navbar-nav navbar-right">
                <!--<li class="active"><a href="#">Home</a></li>-->
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">Useful Campus Links <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="https://www.oswego.edu/" target="_blank">Suny Oswego Home</a></li>
                        <li><a href="https://www.oswego.edu/blackboard/" target="_blank">Blackboard</a></li>
                        <li><a href="https://lakerlife.oswego.edu/" target="_blank">Laker Life</a></li>
                        <li><a href="https://www.oswego.edu/myoswego/" target="_blank">My Oswego</a></li>
                    </ul>
                    <li style="border: 0px solid #fed136">
                    <a href="/landing/help" style="cursor: pointer">help</a>
                </li>
                </li>
            </ul>

        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>

<div class="intro-header">
    <div class="container">

        <div class="row">
            <div class="col-lg-12">
                <div class="intro-message">
                    <h1>Laker Polling</h1>

                    <h3>An open source implementation of clicker devices for your browser.</h3>
                    <hr class="intro-divider">

                    <div align="center" id="sign-in-btn"></div>
                </div>
            </div>
        </div>

    </div>
    <!-- /.container -->

</div>

<div class="first-section">

    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-sm-6">
                <hr class="section-heading-spacer">

                <div class="clearfix"></div>

                <h2 class="section-heading">About Laker Polling</h2>

                <p>
                    During the 2017 Spring Semester, the Software Design class from the State University
                    of NewYork at Oswego developed an audience response system. Laker Polling is a free 
                    web-based application that requires no Software to be downloaded. Laker Polling is an interactive
                    component to learning that allows instructors to poll students in class at SUNY Oswego. Laker
                    Polling is open-source and available to individuals outside of the SUNY Oswego Campus.
                </p>
            </div>

            <div class="col-lg-5 col-lg-offset-2 col-sm-6">
                <hr class="section-heading-spacer">

                <div class="clearfix"></div>

                <h2 class="section-heading">How to use it</h2>

                <p>
                    Laker Polling's web based application allows individuals from SUNY Oswego to access it from any
                    device with access to the internet. For more information on specific use, please browse our <a href="/landing/help" style="cursor: pointer">help document</a>
                </p>
                %{--<img class="img-responsive" src="https://placeholdit.imgix.net/~text?txtsize=33&txt=350%C3%97200&w=250&h=250" alt="">--}%
            </div>
        </div>

    </div>
    <!-- /.container -->

</div>

<footer>
    <p>Copyright (c) 2017</p>
    <p>Find us on <a href="https://github.com/CSC480/laker-polling"><strong>Github</strong></a></p>
</footer>


<asset:javascript src="jquery-3.2.0.min.js"/>
<script src="https://apis.google.com/js/platform.js"></script>
<asset:javascript src="auth/config.js"/>
<asset:javascript src="auth/login.js"/>
<asset:javascript src="bootstrap.min.js"/>

</body>
</html>