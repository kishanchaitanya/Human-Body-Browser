<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="com.human3d.pojo.Doctor" %>
<%--
  Created by IntelliJ IDEA.
  User: rane
  Date: 12/9/14
  Time: 10:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title></title>
</head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">
<link href="./css/fontawesome/css/font-awesome.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
<style type="text/css">
  .bs-example{
    margin: 20px;
  }
</style>
<link href="css/customStyle.css" rel="stylesheet">

<body>
<nav class="navbar navbar-inverse" role="navigation" style="margin-bottom: 0px;height: 52px">

  <div class="container">
    <div id="navbar" class="navbar-collapse collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="./SearchPatient.jsp"><img height="35px" width="50px" style="padding-bottom: 10px"src="img/logo.png" width="200px"/><img height="35px" width="200px" style="padding-bottom: 10px"src="img/logoTitle.png" width="200px"/></a></li>
        <li><a href="#" style="margin-left: 35px;">Welcome <%=((Doctor)session.getAttribute("doc")).getDocName()%></a></li>
        <li><a href="./NewPatient.jsp" style="margin-left: 35px;">New Patient</a></li>

        <li>
          <a href="./Login.jsp">Sign Out</a>
        </li>
        <%if (((Doctor)session.getAttribute("doc")).getDocName().equalsIgnoreCase("admin")){ %>
        <li>
          <a href="./patients_list.jsp">Master List</a>
        </li>
        <%}%>
      </ul>
    </div>
  </div>

</nav>

<center>

  <div class="container" style="padding-top:100px;">
    <i class="fa fa-users fa-5x"></i>
    <h1>Patient Lookup</h1>
    <br>
    <br>
    <br>
    <form  method="post" action="/Patient">
      <input type="text" list="patients" style="width: 300px; height: 50px" name="pName">
      <datalist id="patients">
        <%if(null!=session.getAttribute("pMap"))
        {
          Map<String,String> pList=(Map<String,String>)session.getAttribute("pMap");
          for(String name:pList.keySet())
          {
        %>
        <option value="<%=name%>">

            <%
                }
            }
            %>
      </datalist>
      <input type="submit" class="btn btn-success" value="Get Info" style="width: 150px; height: 50px; border-radius: 5px;">
    </form>
  </div>

</center>


<nav class="navbar navbar-default navbar-fixed-bottom footerColor" role="navigation" style="background: black">
  <div class="container">
    <h4> Developed and Maintained by Team Codethons. Copyright 2014.</h4>
  </div>
</nav><!-- /footer_site_info -->


</body>
</html>