// JavaScript Document

function enableEdit()
{	 
	 if(document.getElementById('cmn-toggle-7').checked)
	 {
		 document.getElementById('saveBtn').className = 'btn btn-primary btn-lg active';
		 document.getElementById("clientFirstName").readOnly = false;
		 document.getElementById("clientFirstName").classList.remove('disabledText');
		 document.getElementById("clientFirstName").classList.add('enabledText');
		 document.getElementById("clientLastName").readOnly = false;
		 document.getElementById("clientLastName").classList.remove('disabledText');
		 document.getElementById("clientLastName").classList.add('enabledText');
		 document.getElementById("businessName").readOnly = false;
		 document.getElementById("businessName").classList.remove('disabledText');
		 document.getElementById("businessName").classList.add('enabledText');
		 document.getElementById("phoneNumber").readOnly = false;
		 document.getElementById("phoneNumber").classList.remove('disabledText');
		 document.getElementById("phoneNumber").classList.add('enabledText');
		 document.getElementById("email").readOnly = false;
		 document.getElementById("email").classList.remove('disabledText');
		 document.getElementById("email").classList.add('enabledText');
	 }
	 else
	 {
		document.getElementById('saveBtn').className = 'btn btn-primary btn-lg disabled';
		document.getElementById("clientFirstName").readOnly = true;
		 document.getElementById("clientFirstName").classList.remove('enabledText');
		 document.getElementById("clientFirstName").classList.add('disabledText');
		 document.getElementById("clientLastName").readOnly = true;
		 document.getElementById("clientLastName").classList.remove('enabledText');
		 document.getElementById("clientLastName").classList.add('disabledText');
		 document.getElementById("businessName").readOnly = true;
		 document.getElementById("businessName").classList.remove('enabledText');
		 document.getElementById("businessName").classList.add('disabledText');
		 document.getElementById("phoneNumber").readOnly = true;
		 document.getElementById("phoneNumber").classList.remove('enabledText');
		 document.getElementById("phoneNumber").classList.add('disabledText');
		 document.getElementById("email").readOnly = true;
		 document.getElementById("email").classList.remove('enabledText');
		 document.getElementById("email").classList.add('disabledText');
	 }
}

function submitForm(action)
{
	var page = action;
	
	if(page == "edit.cfm")
	{
		document.getElementById('viewClientForm').action = "edit.cfm";
		
		var fname=document.forms["viewClientForm"]["clientFirstName"].value;  
		if(fname==null || fname=="")
		{
			swal({   
			title: "Oops, something went wrong!",   
			text: "Client MUST have a first name!",   
			type: "error",   
			confirmButtonText: "Got it!" });
			return false;
		}
		else if(!isNaN(fname))
		{
			swal({   
			title: "Oops, something went wrong!",   
			text: "This isn't prison. Clients have real names, not numbers!",   
			type: "error",   
			confirmButtonText: "Fine." });
			return false;
		}
		
		//Validate last name field
		var lname=document.forms["viewClientForm"]["clientLastName"].value;  
		if(lname==null || lname=="")
		{
			swal({   
			title: "Oops, something went wrong!",   
			text: "Client MUST have a last name!",   
			type: "error",   
			confirmButtonText: "Got it!" });
			return false;
		}
		else if(!isNaN(lname))
		{
			swal({   
			title: "Oops, something went wrong!",   
			text: "This isn't prison. Clients have real names, not numbers!",   
			type: "error",   
			confirmButtonText: "Fine." });
			return false;
		}
		
		
		//Validate business name field
		var bus=document.forms["viewClientForm"]["businessName"].value;  
		if(!isNaN(bus) && (bus!=null &&	 bus!=""))
			{
				swal({   
				title: "Oops, something went wrong!",   
				text: "Business names can't be only numbers!",   
				type: "error",   
				confirmButtonText: "Retry." });
				return false;
			}
			
		//Validate phone number field
		var phone=document.forms["viewClientForm"]["phoneNumber"].value;  
		if(phone.length!=13)
			{
				swal({   
				title: "Oops, something went wrong!",   
				text: "A phone number must be associated with the client!",   
				type: "error",   
				confirmButtonText: "Okay." });
				return false;
			}
		
		//Validate email field
		var email=document.forms["viewClientForm"]["email"].value;
		if(email==null || email=="")
		{
			return true;
		}
		else if(email!=null || email!="")
		{
			if (!(/^([\w\.\-_]+)?\w+@[\w-_]+(\.\w+){1,}$/.test(email))) 
			{
				swal({
				title: "Oops, something went wrong!",
				text: "The email '" + email + "' is not valid. Please try again!",
				type: "error",
				confirmationButtonText: "Will do!" });
				return false;
			}
			document.getElementById('viewClientForm').submit(); 
		}
		
		
	}
	else if(page == "delete.cfm")
	{
		document.getElementById('viewClientForm').action = "delete.cfm";
		swal({   
		title: "Are you sure?",   
		text: "Do you really want to delete this client",   
		type: "warning",   
		showCancelButton: true,   
		confirmButtonColor: "#DD6B55",   
		confirmButtonText: "Yes, delete them!",   
		cancelButtonText: "Cancel the delete!",   
		closeOnConfirm: false,   
		closeOnCancel: false }, 
		function(isConfirm)
		{   
			if (isConfirm) 
			{     
				swal("Deleted!", "The client has been deleted!", "success"); 
				document.getElementById('viewClientForm').submit();  
			} 
			else 
			{     
				swal("Cancelled", "Client has NOT been deleted", "error");
				return false; 
			} 
		});	
		
	}
}