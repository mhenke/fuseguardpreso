<cfinclude template="header.cfm">

<cfif isdefined("form.foreignpost")>
	<cfhttp
		method="post"
		url="http://railo.local/ForeignPost.cfm"
		result="objGET">
			<cfhttpparam type="header" name="HTTP_REFERER" value="http://hackme.com/fakeform.cfm">
			<cfhttpparam type="Formfield" value="#form.mytext#" name="mytext">
	</cfhttp>
	<cflocation url="ForeignPost.cfm" addtoken="false">
</cfif>

<cfif isdefined("form.mytext")>
	<cfquery name="getMyText" datasource="demo">
		UPDATE mytext
		SET mytext=<cfqueryparam value="#form.mytext#" cfsqltype="cf_sql_varchar">,
		myreferer=<cfqueryparam value="#cgi.http_referer#" cfsqltype="cf_sql_varchar">
		WHERE id = 2
	</cfquery>
</cfif>

<cfquery name="getMyText" datasource="demo">
 SELECT mytext, myreferer from mytext
 WHERE id = 2
</cfquery>

      <h1>Foreign Post Filter</h1>
      <p>This filter will block HTTP POST operations which have referrers that differ from the current template. You may not want to enable this filter if other web sites submit HTTP form posts cross domain to your application. This filter can help mitigate the effects of some <a href="A2-CrossSiteScripting.cfm">Cross Site Scripting</a> and <a href="A5-CrossSiteRequestForgery.cfm">Cross Site Request Forgery</a> attacks.</p>
	<hr>
		<h2>Example</h2>
		<p>
		<form method="post" class="well form-search">
			<p>My Text Area: <textarea name="mytext"><cfoutput>#getMyText.mytext#</cfoutput></textarea></p>
			<p>Foreign Referer <input type="checkbox" name="foreignpost"></p>
			<p><button class="btn btn-primary" name="submit" type="submit">Save changes</button></p>
	    </form>
		</p>
		<hr>
		<h2>Results</h2>
		<p>Value of mytext: <b><cfoutput>#getMyText.mytext#</cfoutput></b></p>
		<p>Value of myreferer: <b><cfoutput>#getMyText.myreferer#</cfoutput></b></p>

<cfinclude template="footer.cfm">