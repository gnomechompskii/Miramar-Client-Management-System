$(document).ready(function() {
	$( "#clients" ).on("click", function(){
	    window.location.href="../Client/clients.cfm";
	});
	
	$( "#projects" ).on("click", function(){
	    window.location.href="../Project/projects.cfm";
	});
	
	$( "#clients" ).mouseover(function() {
		$( "#clients" ).css("background-color", "#3b97d3");
		$( "#logo1" ).attr("src", "../resources/img/client-white.svg");
		$( "h3.clients" ).css("color", "white")
		$( "#clients" ).css("cursor", "pointer");
	});
	
	$( "#clients" ).mouseout(function() {
		$( "#clients" ).css("background-color", "white");
		$( "#logo1" ).attr("src", "../resources/img/client.svg");
		$( "h3.clients" ).css("color", "#3b97d3");
		$( "#clients" ).css("cursor", "default");
	});
	
	$( "#projects" ).mouseover(function() {
		$( "#projects" ).css("background-color", "#3b97d3");
		$( "#logo2" ).attr("src", "../resources/img/project-white.svg");
		$( "h3.projects" ).css("color", "white");
		$( "#projects" ).css("cursor", "pointer");
	});
	
	$( "#projects" ).mouseout(function() {
		$( "#projects" ).css("background-color", "white");
		$( "#logo2" ).attr("src", "../resources/img/project.svg");
		$( "h3.projects" ).css("color", "#3b97d3");
		$( "#projects" ).css("cursor", "default");
	});
                  
});