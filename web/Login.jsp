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

    <link href="./css/bootstrap/css/signin.css" rel="stylesheet">

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

<nav class="navbar navbar-inverse" role="navigation" style="margin-bottom: 0px;height: 52px">

    <div class="container">
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="./Login.jsp"><img height="35px" width="50px" style="padding-bottom: 10px"src="img/logo.png" width="200px"/><img height="35px" width="200px" style="padding-bottom: 10px"src="img/logoTitle.png" width="200px"/></a></li>
                <li><a href="#" style="margin-left: 350px;"><%=resource.getString("Language")%>  </a>



                </li>
                <li style="">
                    <br>

                    <select id="language">
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

    <form class="form-signin" role="form" method="post" action="./LoginServ?language=<%=null!=request.getParameter("language")?request.getParameter("language"):"English"%>">
        <h2 class="form-signin-heading"><%=resource.getString("Login")%></h2>
        <%--         <label for="inputEmail" class="sr-only"><%=resource.getString("UserName") %></label> --%>
        <input type="email" name="uName" class="form-control"
               placeholder="<%=resource.getString("UserName")%>" required autofocus>
        <%--         <label for="inputPassword" class="sr-only"><%=resource.getString("Password") %></label> --%>
        <input type="password" name="passwd" class="form-control"
               placeholder=<%=resource.getString("Password")%> required>
        <div class="checkbox">
            <label>
                <a href="./CreateUser.jsp"><%=resource.getString("NewUser")%> </a> <h4><%=session.getAttribute("errorL")!=null?session.getAttribute("errorL"):""%></h4>
            </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit"><%=resource.getString("Signin")%>
        </button>

    </form>

</div>
<!-- /container -->

<nav class="navbar navbar-default navbar-fixed-bottom footerColor" role="navigation" style="background: black">
    <div class="container">
        <h4> Developed and Maintained by Team Codethons. Copyright 2014.</h4>
    </div>
</nav><!-- /footer_site_info -->


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

<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-57418210-1', 'auto');
    ga('send', 'pageview');

</script>



<script src="js/jquery.min.js"></script>
<script src="css/bootstrap/js/bootstrap.min.js"></script>

<script src="js/custom.js"></script>
<script src="js/highcharts.js"></script>
<script src="js/modules/heatmap.js"></script>
<script src="js/modules/exporting.js"></script>
</html>