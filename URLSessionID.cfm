<cfinclude template="header.cfm">
	<cfif isdefined("form.submit")>
		<cflocation url="URLSessionID.cfm">
	</cfif>
	
	
      <h1>URL Session ID Filter</h1>
      <p>This filter blocks requests that pass session id in the URL (such as cfid, cftoken, or jsessionid) as this may allow for session hijacking. An authenticated user may unknowingly email, im, or otherwise make public a url granting anyone who visits the url their authentication rights. It is recommended that you don't place session identifiers in the url, this is done automatically with cflocation unless you specify the attribute addtoken="false"
If your application requres support for disabled cookies we recommend that you encrypt an expiring token containing the session id's, the user's ip, user agent, and a secret token.</p>
		<hr>
		<h2>Example</h2>
		<form class="well form-search" method="post" action="URLSessionID.cfm">
		<cfparam name="session.greeting" default="Hi Bob">
		<p>I set a session variable if doesn't exit called "greeting" to "<cfoutput>#session.greeting#</cfoutput>".</p>
		<p>I might submit a form, then redirect the user.</p>
		 <button class="btn btn-primary" name="submit" type="submit">Save changes</button>
    	</form>
	
	<cfdump var="#session#">
<cfinclude template="footer.cfm">