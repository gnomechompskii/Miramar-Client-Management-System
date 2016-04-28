// JavaScript Document

function displayDelete()
{
	if(fname==null || fname=="")
    {
		swal({   
		title: "Oops, something went wrong!",   
		text: "Client MUST have a first name!",   
		type: "error",   
		confirmButtonText: "Got it!" });
        return false;
    }	
}