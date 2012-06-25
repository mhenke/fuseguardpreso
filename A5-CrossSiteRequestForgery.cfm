<cfinclude template="header.cfm">
      <h1>A5-Cross Site Request Forgery (CSRF)</h1>
<p style="font-size: 22px;">
A CSRF attack forces a logged-on victim’s browser to send a forged HTTP request, including the victim’s session cookie and any other automatically included authentication information, to a vulnerable web application. This allows the attacker to force the victim’s browser to generate requests the vulnerable application thinks are legitimate requests from the victim.
</p>
	<hr>
	<h2>Filters Examples</h2>
	<p><a href="XSS.cfm">XSS</a></p>
	<p><a href="ForeignPost.cfm">Foreign Post</a></p>
<cfinclude template="footer.cfm">