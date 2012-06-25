<cfinclude template="header.cfm">

<cfif isDefined("form.username") and not isDefined("form.stop")>
	<cfloop index = "ListElement" list = "password, 123456, 12345678, qwerty, abc123, monkey, 1234567, letmein, trustno1, dragon"> 
		<cfhttp
			method="post"
			url="http://railo.local/DictionaryAttack.cfm"
			result="objGET">
				<cfhttpparam type="Formfield" value="#form.username#" name="username">
				<cfhttpparam type="Formfield" value="<cfoutput>#ListElement#</cfoutput>" name="password">
				<cfhttpparam type="Formfield" value="1" name="stop">
		</cfhttp>
	</cfloop>
</cfif>
    <h1>Dictionary Attack Filter</h1>
	<p>Detects multiple requests from the same client which contain passwords. Once a specified number of password guesses is reached the filter will block or log subsequent requests from that client. See the CFC reference for configurable settings.</p>
	<hr>
		<h2>Example</h2>
		<p>Submitting this form will spawn 10 posts looping through commom passwords like a Dictionary Attack.</p>
		<p>
		<form method="post" class="well form-search">
			<p>My User Name: <input type="text" name="username" /></p>
			<p>My Password: <input type="password" name="password" /></p>
			<p>Process Once <input type="checkbox" name="stop"></p>
			<p><button class="btn btn-primary" name="submit" type="submit">Save changes</button></p>
	    </form>
		</p>
		
<cfinclude template="footer.cfm">