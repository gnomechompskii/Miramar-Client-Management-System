<cfquery datasource="clientsystem" name="deleteClient">
	delete from dbo.tClient
    where clientID = #form.clientID#
</cfquery>

<cflocation url="../clients.cfm">