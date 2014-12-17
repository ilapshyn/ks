<#macro container class="" style="">
	<div class="container ${class}" style="${style}">
		<#nested/>
	</div>
</#macro>

<#macro row class="" style="">
	<div class="row ${class}" style="${style}">
		<#nested/>
	</div>
</#macro>


<#macro section size=12 class="" style="">
	<div class="span${size} ${class}" style="${style}">
		<#nested/>
	</div>
</#macro>

