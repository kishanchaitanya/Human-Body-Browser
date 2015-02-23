<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <%@ page import="java.util.ResourceBundle"%>
  <script type="text/javascript"
          src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
  <link href="css/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="css/customStyle.css" rel="stylesheet">

  <link href="./bootstrap/css/signin.css" rel="stylesheet">

  <%
    ResourceBundle resource = null;
    if (null != request.getParameter("language")) {
      resource = ResourceBundle.getBundle((String) request
              .getParameter("language"));
    } else {
      resource = ResourceBundle.getBundle(("English"));
    }
  %>

  <script type="text/javascript">
    $(document)
            .ready(
            function() {
              <%if (null != request.getParameter("language")) {
                              if (request.getParameter("language")
                                      .equalsIgnoreCase("English")) {%>
              $("#Eng").attr('selected', true);
              <%} else {%>
              $("#Span").attr('selected', true);
              <%}
                          }%>
            });
  </script>
  <title><%=resource.getString("Title")%></title>
</head>
<nav class="navbar navbar-inverse" role="navigation"
     style="margin-bottom: 0px;height: 52px">
  <div class="container">
    <div id="navbar" class="navbar-collapse collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="./Login.jsp"
                              style="padding-bottom: 0px"><img height="35px" width="50px"
                                                               style="padding-bottom: 0px" src="img/logo.png" width="200px" /><img
                height="35px" width="50px" style="padding-bottom: 0px"
                src="img/logo.png" width="200px" /><img height="35px" width="50px"
                                                        style="padding-bottom: 0px" src="img/logo.png" width="200px" /></a></li>

        <li
                style="margin-left: 725px; padding-top: 13px; font-color: ' white'">
          <font color="white"> <%=resource.getString("Language")%></font> <select
                onChange=getLanguage() id="language"="<%=request.getParameter("language")%>">
          <option value="English" id="Eng">English</option>
          <option value="Spanish" id="Span">Spanish</option>
          </select>
        </li>
      </ul>
    </div>
  </div>

</nav>

<body>



<div class="container">

  <form class="form" role="form" method="get" action="./LoginServ">
    <center>
      <h2 class="form-signin-heading"><%=resource.getString("SignUp")%></h2>

      <input type="text" id="inputPassword" class="form-control"
             placeholder=<%=resource.getString("FName")%> required name="fName" autofocus>
      <br> <input type="email" id="inputEmail" class="form-control"
                  placeholder="<%=resource.getString("UserName")%>" name="uName" required>
      <br> <input type="password" id="inputPassword"
                  class="form-control" placeholder=<%=resource.getString("Password") %>
            required name="passwd" > <br> <input type="password"
                                  id="inputPassword" class="form-control"
                                  placeholder=<%=resource.getString("CPassword")%> required> <br>
      <button class="btn btn-lg btn-primary" type="submit">Sign-Up</button>
    </center>
  </form>

</div>
<!-- /container -->

<nav class="navbar navbar-default navbar-fixed-bottom footerColor"
     role="navigation">
  <div class="container">Developed and Maintained by Team
    Codethons. Copyright 2014.</div>
</nav>
</body>

<script>
  $("#language").change(function() {

    if ($("#language").val() == 'English') {
      <%session.setAttribute("lang", "English");%>
      window.location.replace("./Login.jsp?language=English");
    } else if ($("#language").val() === 'Spanish') {
      <%session.setAttribute("lang", "Spanish");%>
      window.location.replace("./Login.jsp?language=Spanish");
    }
  });
  function getLanguage() {
    if (document.getElementById("language").value == 'English') {
      <%resource = ResourceBundle.getBundle("English");%>
    } else if (document.getElementById("language").value == 'Spanish') {
      <%resource = ResourceBundle.getBundle("Spanish");%>
    }
  }
</script>
<script src="js/jquery.min.js"></script>
<script src="css/bootstrap/js/bootstrap.min.js"></script>

<script src="js/custom.js"></script>
<script src="js/highcharts.js"></script>
<script src="js/modules/heatmap.js"></script>
<script src="js/modules/exporting.js"></script>
</html>