<cfinclude template="header.cfm">
      <h1>Malicious File Uploads Filter</h1>
      <p>This filter allows you to block or log requests in which a file upload takes place based on the file extension passed by the client. You can either provide a whitelist or blacklist of extensions.</p>
	<hr>
		<h2>Example</h2>
		<!--- Windows Example --->
		<!--- Check to see if the Form variable exists. --->
		<cfif isDefined("Form.FileContents") >
		    <!--- If TRUE, upload the file. --->
		    <cffile action = "upload" 
		        fileField = "FileContents" 
		        destination = "#ExpandPath( "./" )#/upload" 
		        accept = "image/gif,image/png,application/msword,application/pdf,application/vnd.openxmlformats-officedocument.wordprocessingml.document,application/excel,application/vnd.openxmlformats-officedocument.spreadsheetml.sheet,image/jpeg" 
		        nameConflict = "overwrite">
		 </cfif>
		 
		    <form class="well form-search" method="post" name="uploadForm" enctype="multipart/form-data">
		        <input name="FileContents" type="file">
		        <br>
		        <button class="btn btn-primary" name="submit" type="submit">Upload file</button>
		    </form>
		
		
		<hr>
		
		<CFDIRECTORY NAME="myfiles"
		  DIRECTORY="#ExpandPath( "./" )#/upload" 
		  SORT="DateLastModified DESC">
		
		<h2>My Files</h2>
		<cfif myfiles.recordcount>
		<CFOUTPUT QUERY="myfiles">
		<p>#myfiles.Name# #myfiles.DateLastModified#<br /></p>
		</CFOUTPUT>
		<cfelse>
			No Files Found in Upload Folder
		</cfif>
<cfinclude template="footer.cfm">
