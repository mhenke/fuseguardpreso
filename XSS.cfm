<cfinclude template="header.cfm">
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
<cfparam name="url.searchby" default="" type="string">

<h1>XSS</h1>
<p>The XSS Filter blocks several Cross Site Scripting attack vectors. This filter returns multiple threat levels based on the possible presence of a cross site scripting request.</p>
<hr>
<h2>Example 1</h2>
<p>My message: <cfoutput>#url.message#</cfoutput></p>
<p>Add this to url: <b>?message=&lt;IMG SRC="" onmouseover="alert(111);" alt="test"&gt;</b></p>
<hr>
<h2>Example 2</h2>
<form class="well form-search">
<p>Search: <input name="searchby" value="<cfoutput>#url.searchby#</cfoutput>"></p>
<p>Add to the end of url after search <b>%22+onmouseover%3D%22alert%28document.cookie%29%3B%22</b></p>
<p><button class="btn btn-primary" type="submit">Save changes</button>
  </form>
<hr>
<h2>Example 3</h2>
<form class="well form-search" method="post">
<p>My Text Area: <textarea name="mytext"><cfoutput>#getMyText.mytext#</cfoutput></textarea></p>
<p>Add this to text area: <b>&lt/textarea&gt&lt;IMG SRC="" onmouseover="alert(111);" alt="test"&gt;</b></p>
<p><button class="btn btn-primary" type="submit"  value="submit">Save changes</button></p>
  </form>
<cfinclude template="footer.cfm">