<cfapplication name="yourApplicationName">
<!--- LogOnlyConfigurator DefaultConfigurator StrictConfigurator
<cfif NOT IsDefined("application.fuseguard") OR application.fuseguard.shouldReInitialize()>
	<cfinvoke component="fuseguard.components.firewall" method="init" returnvariable="application.fuseguard">
		<cfinvokeargument name="configurator" value="LogOnlyConfigurator">	
	</cfinvoke>
</cfif>
<cfset application.fuseguard.processRequest()> --->