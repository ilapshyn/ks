<#macro form id legend="" action="" method="post">
	<form id="${id}" class="form-horizontal" action="${action}" method="${method}">
		<fieldset>
			<#if legend!=""><legend>${legend}</legend></#if>
			<#nested/>  
		</fieldset>
	</form>
</#macro>

<#macro control label="" for="">
	<div class="control-group">
		<label for="${for}" class="control-label">${label}</label>
		<div class="controls">
			<#nested/>
		</div>
	</div>
</#macro> 

<#macro textField label="" name="" id="" placeholder="" required=false>
	<@control label=label for=id>
		<input type="text" id="${id}" name="${name}" placeholder="${placeholder}" <#if required>required</#if>>
	</@control>
</#macro>

<#macro passwordField label="Password: " name="" id="password" placeholder="Password">
	<@control label=label for=id>
		<input type="password" id="${id}" name="${name}" placeholder="${placeholder}" required>
	</@control>
</#macro>

<#macro emailField label="E-mail: " name="" id="email" placeholder="Your e-mail">
	<@control label=label for=id>
		<input type="email" id="${id}" name="${name}" placeholder="${placeholder}" required>
	</@control>
</#macro>


<#macro button label id="" type="button" inline=true>
	<#if inline>
		<input type="${type}" class="btn" id="${id}" value="${label}">
	<#else>
		<@control><input type="${type}" class="btn" id="${id}" value="${label}"></@control>
	</#if>
</#macro>

