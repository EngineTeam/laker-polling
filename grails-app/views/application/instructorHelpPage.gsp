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
                <a class="navbar-brand" href="/dashboard">
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
                <li>
                    <a class="logout" onclick="logout()" >LogOut</a>
                </li>
                <!--<li class="active"><a href="#">Home</a></li>-->
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">Help Links<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                         <li><a href="#1">Accessing Laker Polling Application</a></li> 
                        <li><a href="#2">Log in</a></li> 
                        <li><a href="#3">Logout</a></li> 
                        <li><a href="#4">Switch to student view</a></li> 
                        <li><a href="#5">Add another instructor</a></li> 
                        <li><a href="#6">Create a course</a></li> 
                        <li><a href="#7">Add students to a course</a></li>
                         <li><a href="#8">Run a live poll</a></li> 
                        <li><a href="#9">Create an online quiz</a></li> 
                        <li><a href="#10">Check/download grades</a></li>
                         <li><a href="#11">Check/download attendance</a></li>
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
        <p>In your web browser, type:  pi.cs.oswego.edu:8081to access Laker Polling web application. </p> 
        <div style="text-align: center"><asset:image src="HelpImages/Access/1.png" style="height:70%;width:70%;
         border: solid;border-width:1px;border-color: #0f0f0f;"/></div>
        <br><hr><br>  

        <a class="anchor" name="2"></a>

        <h3>Logging in</h3>
                     <p>To log into Laker Polling, click on the button that says “Login through Google”.</p>
                      <div style="text-align: center"><asset:image src="HelpImages/Login/1.png" style="height:70%;width:70%;
         border: solid;border-width:1px;border-color: #0f0f0f;"/></div>
                 <p>You will then be brought to a Google page. On this page, select to login with your oswego.edu 
    email.</p>
         <div style="text-align: center"><asset:image src="HelpImages/Login/2.png" style="height:70%;width:70%;
         border: solid;border-width:1px;border-color: #0f0f0f;"/></div>

        <p>If you attempt to login not using a oswego.edu, a warning message will appear asking you 
        to select your oswego.edu email for login.</p> 
        <div style="text-align: center"><asset:image src="HelpImages/Login/3.png" style="height:70%;width:70%;
         border: solid;border-width:1px;border-color: #0f0f0f;"/></div>

        <p>Once you select your oswego.edu email, you will be 
        automatically logged into Laker Polling and brought to the Instructor Dashboard.</p> 
        <div style="text-align: center"><asset:image src="HelpImages/Login/4.png" style="height:70%;width:70%;
         border: solid;border-width:1px;border-color: #0f0f0f;"/></div>
        <br><hr><br>  

        <a class="anchor" name="3"></a>

        <h3>Logging out</h3> 
        <p>To logout, click on the “logout” link at the top right of the screen.
        If you do not logout, you will be kept automatically logged into the application.</p> 
        <div style="text-align: center"><asset:image src="HelpImages/Logout/1.png" style="height:70%;width:70%;
         border: solid;border-width:1px;border-color: #0f0f0f;"/></div>
        <br><hr><br>  

        <a class="anchor" name="4"></a>

        <h3>Switch to student view</h3>

        <p>Access the role switching button from your dashboard. It will be located above your available classes.</p> 
        <div style="text-align: center"><asset:image src="HelpImages/StudentView/1.png" style="height:70%;width:70%;
         border: solid;border-width:1px;border-color: #0f0f0f;"/></div>
        <br><hr><br>  

        <a class="anchor" name="5"></a>

        <h3>Add another instructor</h3>
                 <p>To add another user as an instructor, click the create a new instructor button and type in their 
    email to give them access to instructor level features.</p> 
        <div style="text-align: center"><asset:image src="HelpImages/AddInstructor/1.png" style="height:70%;width:70%;
         border: solid;border-width:1px;border-color: #0f0f0f;"/></div>
                 <br><hr><br>  

        <a class="anchor" name="6"></a>

        <h3>Create a course</h3>
         <p>To create a course, scroll down until you see the “Add a New Course” section.
     

        <div style="text-align: center">
            <asset:image src="HelpImages/CreateCourse/1.png" style="height:70%;width:70%;
         border: solid;border-width:1px;border-color: #0f0f0f;"/></div>
        Simply type the course name and CRN. Clicking on the created class will bring you to the class dashboard.</p> 
        <div style="text-align: center"><asset:image src="HelpImages/CreateCourse/2.png" style="height:70%;width:70%;
         border: solid;border-width:1px;border-color: #0f0f0f;"/></div>
        <br><hr><br>  

        <a class="anchor" name="7"></a>

        <h3>Add students to a course</h3> 
        <p>Once you have access to the class dashboard, you can add or remove students by clicking the Roster button.</p> 
        <div style="text-align: center"><asset:image src="HelpImages/AddStudents/1.png" style="height:70%;width:70%;
         border: solid;border-width:1px;border-color: #0f0f0f;"/></div>

        <p>Type in a student manually or add students via CSV exported from Blackboard.</p> 
        <div style="text-align: center"><asset:image src="HelpImages/AddStudents/2.png" style="height:70%;width:70%;
         border: solid;border-width:1px;border-color: #0f0f0f;"/></div>

        <div style="text-align: center"><asset:image src="HelpImages/AddStudents/3.png" style="height:70%;width:70%;
         border: solid;border-width:1px;border-color: #0f0f0f;"/></div>
          <br><hr></br>

          <a class="anchor" name="8"></a>

        <h3>Run a live poll</h3> 
        <p>From your class dashboard, click on “Create Question”.</p> 
        <div style="text-align: center"><asset:image src="HelpImages/RunPoll/1.png" style="height:70%;width:70%;
         border: solid;border-width:1px;border-color: #0f0f0f;"/></div>

        <p>Then select your answer(s) and submit.</p>
                 <div style="text-align: center"><asset:image src="HelpImages/RunPoll/2.png" style="height:70%;width:70%;
         border: solid;border-width:1px;border-color: #0f0f0f;"/></div>

        <p>Once you are done collecting data for this question, close the question.</p>
                  <div style="text-align: center"><asset:image src="HelpImages/RunPoll/3.png" style="height:70%;width:70%;
         border: solid;border-width:1px;border-color: #0f0f0f;"/></div>

        <p>Once the question is closed, click on "Show Results" to see answer statistics.</p> 
        <div style="text-align: center"><asset:image src="HelpImages/RunPoll/4.png" style="height:70%;width:70%;
         border: solid;border-width:1px;border-color: #0f0f0f;"/></div>
                 <p>You may revisit these closed questions from the class page.</p> 
        <br><hr><br>

          <a class="anchor" name="9"></a>

        <h3>Create an online quiz</h3>
                 <p>Click on the At-home Quizzes button from the class page.</p> 
        <div style="text-align: center"><asset:image src="HelpImages/CreateQuiz/1.png" style="height:100%;width:100%;
         border: solid;border-width:1px;border-color: #0f0f0f;"/></div>
                 <p>Fill in all the fields and create your quiz.</p> 
        <div style="text-align: center"><asset:image src="HelpImages/CreateQuiz/2.png" style="height:70%;width:70%;
         border: solid;border-width:1px;border-color: #0f0f0f;"/></div>

        <p>Then you may begin adding questions to the quiz. Click the checkbox on an answer that you desire 
        to be the correct one. You may have as many correct answers as you wish.</p> 
        <div style="text-align: center"><asset:image src="HelpImages/CreateQuiz/3.png" style="height:70%;width:70%;
         border: solid;border-width:1px;border-color: #0f0f0f;"/></div>
        <br><hr><br>  

        <a class="anchor" name="10"></a>

        <h3>Check/download grades</h3>
                 <p>To check on grades for a quiz, visit the at-home quiz section from your class page.</p> 
        <div style="text-align: center"><asset:image src="HelpImages/Grades/1.png" style="height:70%;width:70%;
         border: solid;border-width:1px;border-color: #0f0f0f;"/></div>

        <div style="text-align: center"><asset:image src="HelpImages/Grades/2.png" style="height:70%;width:70%;
         border: solid;border-width:1px;border-color: #0f0f0f;"/></div>
                 <p>Then click on the individual quiz from the list. You may then view the grades and/or download a csv
    of the quiz.</p>
                     <div style="text-align: center"><asset:image src="HelpImages/Grades/3.png" style="height:70%;width:70%;
         border: solid;border-width:1px;border-color: #0f0f0f;"/></div>
                 <br><hr><br>  

        <a class="anchor" name="11"></a>

        <h3>Check/download attendance</h3> 
        <p>To view attendance, click on the attendance button from the class page.</p> 
        <div style="text-align: center"><asset:image src="HelpImages/Attendance/1.png" style="height:70%;width:70%;
         border: solid;border-width:1px;border-color: #0f0f0f;"/></div>

        <p>Attendance is controlled through the “Create Question”  feature, so 
        attendance will only appear for the days in which you have launched a question. 
        Students who have answered a single question for any given day will be given attendance credit.</p>
         <div style="text-align: center"><asset:image src="HelpImages/Attendance/2.png" style="height:70%;width:70%;
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
<!--<script src="https://apis.google.com/js/platform.js"></script>-->
<!--<asset:javascript src="auth/config.js"/>-->
<!--<asset:javascript src="auth/login.js"/>-->
<asset:javascript src="bootstrap.min.js"/>

</body>
</html>