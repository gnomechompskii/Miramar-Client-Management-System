<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--Author: Steven Porte -->
<!--Project Name: Miramar Client Management System -->
<!--Project Description: This is a simple CRUD application that will run in-house -->
<!--Date Started: March 29th, 2016 -->
<!--Date Finished: -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href='../resources/css/bootstrap.min.css' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Nunito' rel='stylesheet' type='text/css'>
<link href='css/styles.css' rel='stylesheet' type='text/css'>
<link rel="icon" type="image/vnd.microsoft.icon" href="../resources/img/client.png" />
<title>Miramar | Client Management System</title>
</head>
<body>
<div class="container" id="outerContainer">
  <div class="container jumbotron" id="title">
    <h1>Client Management System</h1>
  </div>
  <div class="container">
    <div class="row">
      <div class="col-xs-1" id="leftPane"></div>
      <div class="col-xs-4" id="clients">
        <h3 class="clients">Clients</h3>
        <img src="../resources/img/client.svg" alt="Client Logo" id="logo1" class="logo"/> </div>
      <div class="col-xs-1"></div>
      <div class="col-xs-1"></div>
      <div class="col-xs-4" id="projects">
        <h3 class="projects">Projects</h3>
        <img src="../resources/img/project.svg" alt="Project Logo" id="logo2" class="logo"/> </div>
      <div class="col-xs-1" id="rightPane"></div>
    </div>
  </div>
</div>
</body>
<script src="../resources/js/jquery-2.2.2.min.js"></script>
<script src="js/animate.js"></script>
</html>
