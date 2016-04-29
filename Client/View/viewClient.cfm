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
<link href="../../resources/css/toggleStyle.css" rel="stylesheet" type="text/css" />

<link href='css/style.css' rel='stylesheet' type='text/css' />
<link rel="icon" type="image/vnd.microsoft.icon" href="../../resources/img/client.png" />


<script src="../../resources/js/jquery-2.2.2.min.js"></script>
<script src="../../resources/js/bootstrap.min.js"></script>
<script src="../../resources/js/sweetalert.min.js"></script>
<script src="../../resources/js/bootstrap-formhelpers.min.js"></script>

<script src="js/enableEdit.js"></script>
<script src="js/validateEdit.js"></script>

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
      	<div class="row">
          <div class="question">
            Enable editing?
          </div>
          <div class="switch">
            <input onchange="enableEdit()" id="cmn-toggle-7" class="cmn-toggle cmn-toggle-yes-no" type="checkbox">
            <label for="cmn-toggle-7" data-on="Yes" data-off="No"></label>
          </div>
        </div>
      <div class="form">
        <cfform id="viewClientForm" name="viewClientForm" method="post">
          <div>
            <label> First Name: </label>
              <cfinput type="Text"  name="clientFirstName" class="disabledText" value="#qViewClient.clientFirstName#" size="25" maxlength="50" readonly="true">
              <br>
              <label> Last Name: </label>
              <cfinput type="Text" name="clientLastName" class="disabledText" value="#qViewClient.clientLastName#" size="30" maxlength="50" readonly="true">
              <br>
              <label> Business Name: </label>
              <cfinput type="Text" name="businessName" class="disabledText" size="40" value="#qViewClient.businessName#" maxlength="100" readonly="true">
              <br>
              <label> Contact Number: </label>
              <cfinput type="text" data-format="1ddd-ddd-dddd" class="bfh-phone disabledText" value="#qViewClient.phoneNumber#" name="phoneNumber" size="13" minlength="13" maxlength="13" readonly="true">
              <br>
              <label> Contact Email: </label>
              <cfinput type="text" name="email" class="disabledText" value="#qViewClient.email#" size="40" readonly="true">
              <br>
              <cfinput type="hidden" name="createdOn"/>
              <cfinput type="hidden" name="updatedOn"/>
              <cfinput type="hidden" name="clientID" value="#qViewClient.clientID#"/>
              <cfinput type="hidden" name="submitted" value="1" />
              <cfinput type="button" onclick="submitForm('edit.cfm')" id="saveBtn" value="Save" name="btnSave" class="btn btn-primary btn-lg disabled"/>
              <cfinput type="button" onclick="submitForm('delete.cfm')" value="Delete" name="btnDelete" class="btn btn-danger btn-lg"/>
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
