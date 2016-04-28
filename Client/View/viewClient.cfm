<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Miramar | View Client</title>
</head>

<link href='../../resources/css/bootstrap.min.css' rel='stylesheet' type='text/css' />
<link href="../../resources/css/bootstrap-formhelpers.min.css" rel="stylesheet" type='text/css' />
<link href='https://fonts.googleapis.com/css?family=Nunito' rel='stylesheet' type='text/css' />
<link href="../../resources/css/sweetalert.css" rel="stylesheet" type="text/css" />

<link href='css/style.css' rel='stylesheet' type='text/css' />
<link rel="icon" type="image/vnd.microsoft.icon" href="../../resources/img/client.png" />


<script src="../../resources/js/jquery-2.2.2.min.js"></script>
<script src="../../resources/js/bootstrap.min.js"></script>
<script src="../../resources/js/sweetalert.min.js"></script>

<cfset selID = url.id />
<cfquery datasource="clientsystem" name="qViewClient">
	Select * from dbo.tClient
    where clientID = #selID#
</cfquery>

<body>
<div class="container">
    <div class="row row1">
        <div class="container" id="clientBar"> <a class="inline" id="homeIcon" href="../../index.cfm"><img alt="home icon" src="../../resources/img/home.svg"></a>
          <h3 class="inline" id="title">View Client</h3>
          <button class="inline" id="btnClient" onClick="window.location.href='../index.cfm';">Client</button>
          <button class="inline" id="btnProject" onClick="window.location.href='../../Project/index.cfm';">Project</button>
          <h3 class="inline" id="title2">Miramar Client Management System</h3>
        </div>
    </div>
    <div class="container">
      <div class="col-xs-2"></div>
      <!--placeholder row -->
      
      <div class="row col-xs-8">
          <div class="form">
            <cfform action="viewClient.cfm" id="viewClientForm" name="viewClientForm" method="post" onsubmit="return validate()">
              <div>
                <label> First Name: </label>
                  <cfinput type="Text" name="clientFirstName" value="#qViewClient.clientFirstName#" size="25" maxlength="50">
                  <br>
                  <label> Last Name: </label>
                  <cfinput type="Text" name="clientLastName" value="#qViewClient.clientLastName#" size="30" maxlength="50">
                  <br>
                  <label> Business Name: </label>
                  <cfinput type="Text" name="businessName" size="40" value="#qViewClient.businessName#" maxlength="100">
                  <br>
                  <label> Contact Number: </label>
                  <cfinput type="text" data-format="1ddd-ddd-dddd" class="bfh-phone" value="#qViewClient.phoneNumber#" name="phoneNumber" size="13" minlength="13">
                  <br>
                  <label> Contact Email: </label>
                  <cfinput type="text" name="email" value="#qViewClient.email#" size="40" >
                  <br>
                  <cfinput type="hidden" name="createdOn"/>
                  <cfinput type="hidden" name="updatedOn"/>
                  <cfinput type="hidden" name="submitted" value="1" />
                  <cfinput type="button" value="Save" name="btnSave" class="btn btn-primary btn-lg"/>
                  <cfinput type="button" value="Delete" name="btnDelete" class="btn btn-danger btn-lg"/>
              </div>
            </cfform>
          </div>
      </div>
      <!--middle form row -->
      <div class="row col-xs-2"></div>
    </div>
</div>
</body>
</html>
