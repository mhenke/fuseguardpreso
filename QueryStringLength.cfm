<cfinclude template="header.cfm">

      <h1>Query String Length Filter</h1>
      <p>Allows you to specify a maximum length for the url query string. The default value is 2083 characters which is the maximum length of a url in Internet Explorer. You will want to set it to a lower value to force attackers to have brevity. Most Applications do not requre a lengthy query string, inspect your web server logs to determine the appropriate length.</p>
	<hr>
		<h2>Example</h2>
		<p><a href="http://datatables.net/examples/data_sources/server_side.html">DataTables server-side processing example </p>
		<p>
			<a href="http://railo.local/server_processing.cfm?sEcho=1&iColumns=5&sColumns=&iDisplayStart=0&iDisplayLength=10&mDataProp_0=0&mDataProp_1=1&mDataProp_2=2&mDataProp_3=3&mDataProp_4=4&sSearch=&bRegex=false&sSearch_0=&bRegex_0=false&bSearchable_0=true&sSearch_1=&bRegex_1=false&bSearchable_1=true&sSearch_2=&bRegex_2=false&bSearchable_2=true&sSearch_3=&bRegex_3=false&bSearchable_3=true&sSearch_4=&bRegex_4=false&bSearchable_4=true&iSortCol_0=0&sSortDir_0=asc&iSortingCols=1&bSortable_0=true&bSortable_1=true&bSortable_2=true&bSortable_3=true&bSortable_4=true&_=1340554837321">
			Ajax Call for Datatables
			</a>
		</p>
		<p>523 Characters</p>
		<p>sEcho=1&iColumns=5&sColumns=&iDisplayStart=0&iDisplayLength=10&mDataProp_0=0&mDataProp_1=1&mDataProp_2=2&mDataProp_3=3&mDataProp_4=4&sSearch=&bRegex=false&sSearch_0=&bRegex_0=false&bSearchable_0=true&sSearch_1=&bRegex_1=false&bSearchable_1=true&sSearch_2=&bRegex_2=false&bSearchable_2=true&sSearch_3=&bRegex_3=false&bSearchable_3=true&sSearch_4=&bRegex_4=false&bSearchable_4=true&iSortCol_0=0&sSortDir_0=asc&iSortingCols=1&bSortable_0=true&bSortable_1=true&bSortable_2=true&bSortable_3=true&bSortable_4=true&_=1340554837321</p>
<cfinclude template="footer.cfm">
