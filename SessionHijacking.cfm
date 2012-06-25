<cfinclude template="header.cfm">
<h1>Session Hijacking Filter</h1>
<p>
	This filter is used when session variables are turned on in your application. It can detect if a session suddenly changes user agents, and will block the request.
</p>
<hr>
<h2>Example</h2>
<p>Change user agent. Current user agent is <b><cfoutput>#cgi.http_user_agent#</cfoutput></b></p>
<p>
	Copy this into another browser: 
	<b>
		<cfoutput>
			http://railo.local/SessionHijacking.cfm?CFID=#session.CFID#&CFTOKEN=#session.CFToken#
		</cfoutput>
	</b>
</p>
<cfinclude template="footer.cfm">
