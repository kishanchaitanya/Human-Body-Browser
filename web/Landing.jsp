<!DOCTYPE HTML>
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>Body Browser</title>
  <script type="text/javascript"
          src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
  <link href="css/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
  <link href="css/customStyle.css" rel="stylesheet">
</head>

<body>

<nav class="navbar navbar-inverse" role="navigation"
     style="margin-bottom: 0px; height: 52px">

  <div class="container">
    <div id="navbar" class="navbar-collapse collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="./SearchPatient.jsp"><img height="35px" width="50px" style="padding-bottom: 10px"src="img/logo.png" width="200px"/><img height="35px" width="200px" style="padding-bottom: 10px"src="img/logoTitle.png" width="200px"/></a></li>
        <li><a href="./SearchPatient.jsp" style="margin-left: 550px;">Home</a></li>

        <li><a href="./Login.jsp">Sign Out</a></li>
      </ul>
    </div>
  </div>

</nav>

 	<div class="container">
<div class="row" style = "padding-left: 10px; padding-top:200px">
  <a href="./HumanThreeD.jsp">
    <div class="col-md-4" style="background-image: url(./img/HumanBody3D.png); border: 2px solid; padding:10px; ">
      <font color="white">
        <h2>Patient-Body - 3D</h2>
       <label>This view would show you human body in a 3D where you can pinpoint certain specific areas.</label>
      </font>
      <p>

        <a class="btn" href="./HumanThreeD.jsp">View details &raquo;</a>
      </p>
    </div>
  </a>
  <a href="./innerBody.jsp">
    <div class="col-md-4" style="background-image: url(./img/Human2D.jpg); border: 2px solid; padding:10px">
      <font color="white">
        <h2>Patient-Body - 2D</h2>
        <br>
        <label>See specific points of the Human Body</label>
      </font>
      <p>
        <a class="btn" href="#">View details &raquo;</a>
      </p>
    </div>
  </a>

  <div class="col-md-4" style="background-image: url(./img/Performance.png);background-size: 100% 100%;;background-repeat: no-repeat; border: 2px solid; padding:10px">
    <a href="./liveMonitoring.jsp">
      <font color="white">
        <h2>Live Monitoring</h2>
        <br>
        <label>View Live Performance of Human Body</label>
      </font>
      <p>
        <a class="btn" href="#">View details &raquo;</a>
      </p>
    </a>
  </div>

</div>
</div>

<footer>
  <nav class="navbar navbar-default navbar-fixed-bottom footerColor"
       role="navigation">
    <div class="container">Developed and Maintained by Team
      Codethons. Copyright 2014.</div>
  </nav>
</footer>
<script src="js/jquery.min.js"></script>
<script src="css/bootstrap/js/bootstrap.min.js"></script>

<script src="js/custom.js"></script>
<script src="js/highcharts.js"></script>
<script src="js/modules/heatmap.js"></script>
<script src="js/modules/exporting.js"></script>

</body>

</html>