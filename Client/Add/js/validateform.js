// Validation for the Add Client Form

function validate()
{	
	//Validate first name field
	var fname=document.forms["addClientForm"]["clientFirstName"].value;  
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
    var lname=document.forms["addClientForm"]["clientLastName"].value;  
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
    var bus=document.forms["addClientForm"]["businessName"].value;  
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
	var phone=document.forms["addClientForm"]["phoneNumber"].value;  
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
	var email=document.forms["addClientForm"]["email"].value;
	if(email==null || email=="")
	{
		return true;
	}
	else if(email!=null || email!="")
	{
		if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email))) 
		{
			swal({
			title: "Oops, something went wrong!",
			text: "The email '" + email + "' is not valid. Please try again!",
			type: "error",
			confirmationButtonText: "Will do!" });
			return false;
		}
	}
	
	
}

function thank()
{
	swal({
			title: "Hurray!",
			text: "The client was added successfully!",
			type: "success",
			confirmationButtonText: "Sweet!" });
}