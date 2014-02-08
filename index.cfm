
<cfset settings = {

	title: "BFitz's Dev Server",
	sitesDir: "/users/brian/Google Drive/www/sites",
	services: [
		{
			name: "Github",
			url: "http://github.com/agentfitz",
			icon: "fa-github"			
		},
		{
			name: "Stack Overflow",
			url: "http://stackoverflow.com",
			icon: "fa-stack-overflow"			
		},
		{
			name: "CF Admin",
			url: "http://localhost/CFIDE/administrator",
			icon: "fa-bolt"			
		}
	]

}>






<cfdirectory action="list" directory="#settings.sitesDir#" name="qSites">
<cfoutput>
	<html>

		<head>

			<link rel="stylesheet" type="text/css" href="lib/css/font-awesome.min.css">
			<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700' rel='stylesheet' type='text/css'>
			<link rel="stylesheet" type="text/css" href="lib/css/style.css">

		</head>



		<body>

			<h1>#settings.title#</h1>

			<ul id="serviceList">


				<cfloop from="1" to="#arrayLen(settings.services)#" index="i">
					
					<li>
						<a href="#settings.services[i].url#" target="_blank">
							<i class="#settings.services[i].icon#"></i> #settings.services[i].name#
						</a>
					</li>

				</cfloop>

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