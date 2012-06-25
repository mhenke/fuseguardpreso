<cfparam name="Change" default="1">

<cfif isDefined("url.Change") and url.Change EQ 2>
<cfhttp
	method="post"
	url="http://railo.local/SessionHijacking.cfm"
	result="objGet"	
	useragent="Mozilla/5.0 (Linux; U; Android 1.6; en-gb; Dell Streak Build/Donut AppleWebKit/528.5+ (KHTML, like Gecko) Version/3.1.2 Mobile Safari/ 525.20.1"	>
	<cfhttpparam type="Formfield" value="#change#" name="Change">
</cfhttp>

<cfoutput>#objGet.filecontent#</cfoutput>	
<cfabort>
</cfif>

<cfif isdefined("form.mytext")>
	<cfquery name="getMyText" datasource="demo">
		UPDATE mytext
		SET mytext=<cfqueryparam value="#form.mytext#" cfsqltype="cf_sql_varchar">
		WHERE id = 1
	</cfquery>
</cfif>

<cfquery name="getMyText" datasource="demo">
 SELECT mytext from mytext
 WHERE id = 1
</cfquery>

<cfparam name="url.message" default="Hello">

<cfinclude template="header.cfm">

<cfif isdefined("form.submit")>
	<cflocation url="A3-BrokenSessionManagement2.cfm">
</cfif>

<h1>Session Hijacking Filter</h1>
      <p>This filter is used when <a href="A3-BrokenSessionManagement.cfm">session</a> variables are turned on in your application. It can detect if a session suddenly changes user agents, and will block the request.</p>
	<hr>
		<h2>Example</h2>
		<p><a href="SessionHijacking.cfm?change=<cfif Change EQ 1>2<cfelse>1</cfif>">change user agent</a></p>
		<p><cfoutput>#cgi.http_user_agent#</cfoutput></p>
	
<cfinclude template="footer.cfm">
