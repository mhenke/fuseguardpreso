<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>FuseGuard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="../assets/css/bootstrap.css" rel="stylesheet">
    <style>
      body {
        padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
      }
    </style>
    <link href="../assets/css/bootstrap-responsive.css" rel="stylesheet">

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!--- <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png"> --->
  </head>

  <body>
	<cfinclude template="topmenu.cfm">

    <div class="container-fluid">
      <div class="row-fluid">
       <cfinclude template="sidemenu.cfm">
        <div class="span9">
          <div class="hero-unit">
            <h1>FuseGuard</h1>
            <p>Web Application Firewall for ColdFusion</p>
            <p><a class="btn btn-info btn-large" href="http://foundeo.com/security/">Learn more &raquo;</a></p>
          </div>
          <div class="row-fluid">
            <div class="span4">
              <h2>SQL Injection</h2>
              <p>The SQL Injection Filter blocks against several SQL injection attack vectors.</p>
              <p><a class="btn btn-info" href="SQLInjection.cfm">View examples &raquo;</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>XSS</h2>
              <p>The XSS Filter blocks several cross site scripting attack vectors. This filter returns multiple threat levels based on the possible presence of a cross site scripting request.</p>
              <p><a class="btn btn-info" href="XSS.cfm">View examples &raquo;</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Session Hijacking</h2>
              <p>This filter is used when session variables are turned on in your application. It can detect if a session suddenly changes user agents, and will block the request.</p>
              <p><a class="btn btn-info" href="SessionHijacking.cfm">View examples &raquo;</a></p>
            </div><!--/span-->
          </div><!--/row-->
          <div class="row-fluid">
            <div class="span4">
              <h2>URL Session ID</h2>
              <p>This filter blocks requests that pass session id in the URL (such as cfid, cftoken, or jsessionid) as this may allow for session hijacking.</p>
              <p><a class="btn btn-info" href="URLSessionID.cfm"">View examples &raquo;</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Foreign Post</h2>
              <p>This filter will block HTTP POST operations which have referrers that differ from the current template.</p>
              <p><a class="btn btn-info" href="ForeignPost.cfm">View examples &raquo;</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Malicious File Uploads</h2>
              <p>This filter allows you to block or log requests in which a file upload takes place based on the file extension passed by the client. </p>
              <p><a class="btn btn-info" href="MaliciousFileUploads.cfm">View examples &raquo;</a></p>
            </div><!--/span-->
          </div><!--/row-->
        </div><!--/span-->
      </div><!--/row-->

      <hr>

      <footer>
        <p>&copy; Company 2012</p>
      </footer>

    </div><!--/.fluid-container-->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="../assets/js/jquery.js"></script>
    <script src="../assets/js/bootstrap-transition.js"></script>
    <script src="../assets/js/bootstrap-alert.js"></script>
    <script src="../assets/js/bootstrap-modal.js"></script>
    <script src="../assets/js/bootstrap-dropdown.js"></script>
    <script src="../assets/js/bootstrap-scrollspy.js"></script>
    <script src="../assets/js/bootstrap-tab.js"></script>
    <script src="../assets/js/bootstrap-tooltip.js"></script>
    <script src="../assets/js/bootstrap-popover.js"></script>
    <script src="../assets/js/bootstrap-button.js"></script>
    <script src="../assets/js/bootstrap-collapse.js"></script>
    <script src="../assets/js/bootstrap-carousel.js"></script>
    <script src="../assets/js/bootstrap-typeahead.js"></script>

  </body>
</html>
