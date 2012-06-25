<cfinclude template="header.cfm">
<cfparam name="url.id" default="3">

<cfquery name="getUser" datasource="demo" maxrows="5">
 SELECT id,username from users
 WHERE id = #url.id#
</cfquery>

      <h1>SQL Injection</h1>
	<p>The SQL Injection Filter blocks against several SQL injection attack vectors. </p>
	<hr>
		<h2>Output</h2>
		<cfoutput query="getUser">
		<p><a href="?id=#getUser.id#">#getUser.username#</a></p>
		</cfoutput>
		<p>Add this to url: <b>?id=3 or 1=1</b></p>
		<p>Add this to url: <b>?id=3 Union All SELECT 0, table_name FROM information_schema.tables</b></p>
<cfinclude template="footer.cfm">