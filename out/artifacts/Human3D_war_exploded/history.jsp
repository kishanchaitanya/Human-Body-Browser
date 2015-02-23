<!DOCTYPE HTML>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Body Browser</title>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
        <link href ="css/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href ="css/customStyle.css" rel="stylesheet">
    </head>
    
    <body>
        
       <nav class="navbar navbar-inverse" role="navigation" style="margin-bottom: 0px;height: 52px">
  
          <div class="container">
            <div id="navbar" class="navbar-collapse collapse" style="font-size:78%;">
              <ul class="nav navbar-nav">
                 <li class="active"><a href="./Landing.jsp"><img height="35px" width="50px" style="padding-bottom: 10px"src="img/logo.png" width="200px"/><img height="35px" width="200px" style="padding-bottom: 10px"src="img/logoTitle.png" width="200px"/></a></li>
                 <li><a href="./Landing.jsp" style="margin-left: 350px;">Dashboard</a></li>
				<li>                  
                    <a href="./liveMonitoring.jsp" >Live Monitoring</a>
                </li>
				<li>                  
                    <a href="./history.jsp">History</a>
                </li>
				
               <li>                  
                    <a href="./Login.jsp">Sign Out</a>
                </li>
              </ul>
            </div>
          </div>            
            
        </nav>
        
        <div id="heatMap" style="height: 400px; min-width: 310px; max-width: 800px; margin: 0 auto;margin-top:80px"></div>
        

        
                <nav class="navbar navbar-default navbar-fixed-bottom footerColor" role="navigation">
            <div class="container">
                Developed and Maintained by Team Codethons. Copyright 2014.
            </div>
        </nav>
        
        <script src="js/jquery.min.js"></script>
        <script src="css/bootstrap/js/bootstrap.min.js"></script>
        
        <script src="js/custom.js"></script>
        <script src="js/highcharts.js"></script>
        <script src="js/modules/heatmap.js"></script>
        <script src="js/modules/exporting.js"></script>
        
    </body>
    
</html>