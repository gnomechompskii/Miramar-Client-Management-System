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
<link href='../../resources/css/bootstrap.min.css' rel='stylesheet' type='text/css' />
<link href="../../resources/css/bootstrap-formhelpers.min.css" rel="stylesheet" type='text/css' />
<link href='https://fonts.googleapis.com/css?family=Nunito' rel='stylesheet' type='text/css' />
<link href="../../resources/css/sweetalert.css" rel="stylesheet" type="text/css" />

<link href='css/styles.css' rel='stylesheet' type='text/css' />
<link rel="icon" type="image/vnd.microsoft.icon" href="../../resources/img/client.png" />

<title>Miramar | Add Client</title>
</head>
<cfparam name="form.submitted" default="0" />

<script src="../../resources/js/jquery-2.2.2.min.js"></script>
<script src="../../resources/js/bootstrap.min.js"></script>
<script src="../../resources/js/sweetalert.min.js"></script>
<script src="../../resources/js/bootstrap-formhelpers.min.js"></script>
<script src="js/validateform.js"></script>

<body>
<div class="container">
    <div class="row row1">
        <div class="container" id="clientBar"> <a class="inline" id="homeIcon" href="../../index.cfm"><img alt="home icon" src="../../resources/img/home.svg"></a>
          <h3 class="inline" id="title">Add New Client</h3>
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
            <cfform action="addClient.cfm" id="addClientForm" name="addClientForm" method="post" onsubmit="return validate()">
              <div>
                <label> First Name: </label>
                  <cfinput type="Text" name="clientFirstName" size="25" maxlength="50">
                  <br>
                  <label> Last Name: </label>
                  <cfinput type="Text" name="clientLastName" size="30" maxlength="50">
                  <br>
                  <label> Business Name: </label>
                  <cfinput type="Text" name="businessName" size="40" maxlength="100">
                  <br>
                  <label> Contact Number: </label>
                  <cfinput type="text" data-format="1ddd-ddd-dddd" class="bfh-phone" name="phoneNumber" size="13" minlength="13">
                  <br>
                  <label> Contact Email: </label>
                  <cfinput type="text" name="email" size="40" >
                  <br>
                  <cfinput type="hidden" name="createdOn"/>
                  <cfinput type="hidden" name="updatedOn"/>
                  <cfinput type="hidden" name="submitted" value="1" />
                  <cfinput type="submit" name="btnSubmit" class="btn btn-primary btn-lg"/>
              </div>
            </cfform>
          </div>
      </div>
      <!--middle form row -->
      <div class="row col-xs-2"></div>
      <cfif form.submitted>     
        <cftry>
          <cfquery datasource="clientsystem" name="insertClient" result="insertClient">
            <!--- SQL for inserting record --->
            INSERT INTO [dbo].[tClient](businessName, clientFirstName, clientLastName, phoneNumber, email, createdOn, updatedOn)
                VALUES ('#form.BusinessName#', '#form.clientFirstName#', '#form.clientLastName#', '#form.phoneNumber#', '#form.email#', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
          </cfquery>
          <script language="javascript">
            thank();
          </script>
          <cfcatch type="any">
            <cfoutput> Type : #cfcatch.Type#<br>
              Message : #cfcatch.Message#<br>
              Detail : #cfcatch.Detail#<br>
            </cfoutput>
          </cfcatch>
        </cftry>
      </cfif>
    </div>
</div>
</body>
</html>
