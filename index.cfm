
<cfdirectory action="list" directory="/users/brian/Google Drive/www/sites" name="qSites">
<cfoutput>
	<html>

		<head>

			<link rel="stylesheet" type="text/css" href="lib/css/font-awesome.min.css">
			<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700' rel='stylesheet' type='text/css'>
			<link rel="stylesheet" type="text/css" href="lib/css/style.css">

		</head>



		<body>

			<h1>BFitz's Dev Server</h1>

			<ul id="serviceList">

				<li>
					<a href="http://github.com/agentfitz" target="_blank">
						<i class="fa-github"></i> Github
					</a>
				</li>

				<li>
					<a href="http://stackoverflow.com" target="_blank">
						<i class="fa-stack-overflow"></i> Stack Overflow
					</a>
				</li>


				<li>
					<a href="http://localhost/CFIDE/administrator" target="_blank">
						<i class="fa-bolt"></i> CF Admin
					</a>
				</li>

			</ul>

			<ul id="siteList">

				<cfloop query="qSites">
					
					<cfif qSites.type eq "Dir">
						
						<li>
							<a href="http://#qSites.name#.loc" target="_blank">#qSites.name#</a>
						</li>
		
					</cfif>

				</cfloop>

			</ul>


		</body>


	</html>
</cfoutput>