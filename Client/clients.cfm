<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--Author: Steven Porte -->
<!--Project Name: Miramar Client Management System -->
<!--Project Description: This is a simple CRUD application that will run in-house -->
<!--Date Started: March 29th, 2016 -->
<!--Date Finished: -->

<cfquery datasource="clientsystem" name="qClients">
	Select * from dbo.tClient
</cfquery>

<cfquery datasource="clientsystem" name="qNumClients">
	select count(clientID) as 'count' from dbo.tClient
</cfquery>

<!--This is the array for the client id's -->
<cfset clientIDArray=ArrayNew(1)>
<cfset x = 1>
<cfloop query="qClients">
	<cfset clientIDArray[x] = qClients.clientID>
    <cfset x+=1>
</cfloop>
<!--This is the array for the client id's -->

<!--This is the array for the client id's -->
<cfset y = 1>
<cfloop>
	
</cfloop>
<!--This is the array for the client id's -->

<cfset y = 1>
<cfquery datasource="clientsystem" name="qNumProjects">
    select count(dbo.tProject.projectID) as 'projects' from dbo.tProject
    where dbo.tProject.client_clientID = #clientIDArray[y]#
</cfquery>
 

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href='../resources/css/bootstrap.min.css' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Nunito' rel='stylesheet' type='text/css'>
<link href='css/styles.css' rel='stylesheet' type='text/css'>
<link rel="icon" type="image/vnd.microsoft.icon" href="../resources/img/client.png" />
<title>Miramar | Clients</title>
</head>

<script src="../resources/js/jquery-2.2.2.min.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/js/sweetalert.min.js"></script>

<script src="js/delete.js"></script>
<body>
<div class="container">
  <div class="row row1">
    <div class="container" id="clientBar"> <a class="inline" id="homeIcon" href="../Home/home.cfm"><img alt="home icon" src="../resources/img/home.svg"></a>
      <h3 class="inline" id="title">Client Records</h3>
      <button class="inline" id="btnClient" onClick="window.location.href='index.cfm';">Client</button>
      <button class="inline" id="btnProject" onClick="window.location.href='../Project/index.cfm';">Project</button>
      <h3 class="inline" id="title2">Miramar Client Management System</h3>
    </div>
  </div>
  <div class="col-xs-4"></div>
    
  <div class="col-xs-4">
      <input id="clientSearch" type="text" placeholder="Enter Client Information"><button class="pull-right" id="searchButton" class="btn btn-large btn-search btn-primary" type="submit"><img src="../resources/img/search.svg" alt="Search Button"></button>
  </div>
    
  <div class="col-xs-2"></div>
    
    <div class="col-xs-2"><a href="Add/index.cfm"><img src="../resources/img/add.svg" alt="Add Client"> Add New Client</a></div>
    
  <div class="row row3">
    <div class="col-md-12" id="clients">
      <table id="clientTable" class="table table-hover">
        <thead class="thead-default">
        <tr>
          <th>Client Name</th>
          <th>Business Affiliation</th>
          <th>Phone Number</th>
          <th>Email Address</th>
          <th>Number of Projects</th>
          <th>Action</th>
        </tr>
        </thead>
        <tbody>
          <cfoutput query="qClients">
            <tr>
              <td>#qClients.clientFirstName# #qClients.clientLastName#</td>
              <td>#qClients.businessName#</td>
              <td>#qClients.phoneNumber#</td>
              <td>#qClients.email#</td>
              <td>
              #y#
              </td>
              <td><a href="View/viewClient.cfm?id=#qClients.clientID#"><img id="viewID" src="../resources/img/view.svg" alt="view"></a></td>
            </tr>
          </cfoutput>
        </tbody>
      </table>
    </div>
  </div>
</div>
    
</body>
</html>
