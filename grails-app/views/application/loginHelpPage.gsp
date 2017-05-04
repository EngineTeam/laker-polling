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
<style>
#content {
    align-self: center;
}

p {
    font-size: 120%;
}

hr {
    color: #0f0f0f;
    border: 1px solid;
}

a.anchor {
    display: block;
    position: relative;
    visibility: hidden;
}

 </style>

<body class="bg-light-gray">

<!-- Navigation -->
<nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top" style="padding-bottom: 0px">
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
                    <span><asset:image src="logo2.png" class="logo"/></span>
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
                       aria-expanded="false">Help Links <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#1">Accessing Laker Polling Application</a></li>
                         <li><a href="#2">Log in</a></li> 
                        <li><a href="#3">Logout</a></li>
                    </ul>
                </li>
            </ul>

        </div>
        <!-- /.navbar-collapse -->
    </div> 
    <!-- /.container -->
</nav>

<section>
<div id="content" style="width: 100%;">
    <div style="width: 90%;padding-left: 10%;"> 

        <a class="anchor" name="1"></a>

        <h3>Accessing Laker Polling Application</h3> 
        <p>In your web browser, type:  pi.cs.oswego.edu:8081 to access Laker Polling web application. </p> 
        <div style="text-align: center"><asset:image src="HelpImages/Access/1.png" style="height:70%;width:70%;
         border: solid;border-width:1px;border-color: #0f0f0f;"/></div>
        <br><hr><br>  

        <a class="anchor" name="2"></a>

        <h3>Logging in</h3>
         <p>To log into Laker Polling, click on the button that says “Login through Google”.</p>
         <div style="text-align: center"><asset:image src="HelpImages/Login/1.png" style="height:70%;width:70%;
         border: solid;border-width:1px;border-color: #0f0f0f;"/></div>

        <p>You will then be brought to a Google page. On this page, select to login with your oswego.edu  email.</p>
         <div style="text-align: center"><asset:image src="HelpImages/Login/2.png" style="height:70%;width:70%;
         border: solid;border-width:1px;border-color: #0f0f0f;"/></div>

        <p>If you attempt to login not using a oswego.edu, a warning message will appear asking you 
        to select your oswego.edu email for login.</p>
         <div style="text-align: center"><asset:image src="HelpImages/Login/3.png" style="height:70%;width:70%;
         border: solid;border-width:1px;border-color: #0f0f0f;"/></div>

        <p>Once you select your oswego.edu email, you will be  automatically logged into Laker Polling and brought to
        the Student Dashboard.</p> 
        <div style="text-align: center"><asset:image src="HelpImages/Student/Login/4.png" style="height:70%;width:70%;
         border: solid;border-width:1px;border-color: #0f0f0f;"/></div>
        <br><hr><br>  

        <a class="anchor" name="3"></a>

        <h3>Logging out</h3> 
        <p>To logout, click on the “logout” link at the top right of the screen. 
        If you do not logout, you will be kept automatically logged into the application.</p>
         <div style="text-align: center"><asset:image src="HelpImages/Student/Logout/1.png" style="height:70%;width:70%;
         border: solid;border-width:1px;border-color: #0f0f0f;"/></div>
        <br><hr><br>  



    </div>
</div>
</section>
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