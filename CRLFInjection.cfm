<cfinclude template="header.cfm">
	<cfparam name="url.page" default="this is page content via url">
      <h1>CRLF Injection Filter</h1>
      	<p>This filter blocks against CRLF injection attacks. By injecting a CRLF into a HTTP response header a malicious user may be able to execute a Cross Site Scripting attack.</p>
		<hr>
		<h2>Example</h2>
		<p><cfoutput>#url.page#</cfoutput></p>
		<p>add this to url: <b>?page=%0d%0aContent-Type: text/html%0d%0aHTTP/1.1 200 OK%0d%0aContent-Type: text/html%0d%0a%0d%0a%3Chtml%3Ethis is the Hacker's Content%3C/html%3E</b></p>
<cfinclude template="footer.cfm">