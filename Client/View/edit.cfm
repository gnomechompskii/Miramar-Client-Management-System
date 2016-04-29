<cfquery datasource="clientsystem" name="deleteClient">
	Update dbo.tClient
    Set businessName = '#form.businessName#', clientFirstName = '#form.clientFirstName#', clientLastName = '#form.clientLastName#', phoneNumber = '#form.phoneNumber#', email = '#form.email#', updatedOn = CURRENT_TIMESTAMP
    Where dbo.tClient.clientID = #form.clientID#
</cfquery>

<cflocation url="../clients.cfm">