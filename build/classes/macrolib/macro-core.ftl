<#macro requiredScript library="">
	<#if library != "">
		<#global scriptLibraries = scriptLibraries + [library]/>
	</#if>
	<#local script>
		<#nested>
	</#local>
	<#if script??>
		<#global scripts = scripts + [script]/>
	</#if>
</#macro>

<#macro document resourceFolder="resources" title="Insert title" requiredStyles=[]>
	<#global scripts = []/>
	<#global scriptLibraries = []/>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>
		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<title>${title}</title>
			<link rel="shortcut icon" type="image/x-icon" href="${resourceFolder}/img/favicon.ico" />
			<!---------------------------------------->
			<!-------------- CSS section ------------->
			<!---------------------------------------->
			<link href="${resourceFolder}/css/bootstrap.css" 				rel="stylesheet">
			<#list requiredStyles as style>
				<link href="${resourceFolder}/css/${style}.css" rel="stylesheet">
			</#list>
			
			<!---------------------------------------->
			<!---------- End of CSS section ---------->
			<!---------------------------------------->
		</head>
		
		<body>
			<!---------------------------------------->
			<!------------- Main section ------------->
			<!---------------------------------------->
			<#nested/>
			<!---------------------------------------->
			<!---------- End of main section --------->
			<!---------------------------------------->
			
			<!---------------------------------------->
			<!----- JavaScript libraries section ----->
			<!---------------------------------------->
			<script src="${resourceFolder}/js/jquery.js"></script>
			<script src="${resourceFolder}/js/bootstrap.js"></script>
			<#list scriptLibraries as lib>
				<script src="${resourceFolder}/js/${lib}.js"></script>
			</#list> 
			<script>
				<#list scripts as script>
					${script}
				</#list>
			</script>
			<!----------------------------------------->
			<!-- End of JavaScript libraries section -->
			<!----------------------------------------->
			
		</body>
	</html>
</#macro>
