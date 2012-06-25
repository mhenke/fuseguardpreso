<cfparam name="url.id" default="2">

<cfquery name="getUser2" datasource="demo">
 SELECT username from users
 WHERE id = #url.id#
</cfquery>

<cfinclude template="header.cfm">

      <h1>ID Validation Filter</h1>
      	<p>The ID Validation Filter has a simple concept but can be very effective in blocking many attacks. This filter inspects the value of variables whose name ends with id and ensures that they are a <a href="A1-Injection.cfm">valid id</a>. By default it allows any string containing alphanumeric characters, underscore, and dash. You can configure this filter to only allow integer id values, or UUID values created with CreateUUID. Consult the CFC reference for details.</p>
		<hr>
		<h2>Example</h2>
		<p>My User is: <cfoutput query="getUser2">#getUser2.username#</cfoutput></p>
		<p>Add this to url: <b>?id=notanid</b></p>
	
<cfinclude template="footer.cfm">