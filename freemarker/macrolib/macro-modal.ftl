
<#macro modalButton windowId label>
	<a href="#${windowId}" role="button" class="btn" data-toggle="modal">${label}</a>
</#macro>

<#macro modalWindow windowId class="">
	<div id="${windowId}" class="modal hide fade ${class}" tabindex="-1" role="dialog" aria-labelledby="${windowId}-header" aria-hidden="true">
		<#nested/>
	</div>
</#macro>

<#macro modalHeader windowId header="" addCloseButton=false>
	<div class="modal-header">
		<#if addCloseButton>
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
		</#if>
		<h3 id="${windowId}-header">${header}</h3><#nested/>
	</div>
</#macro>

<#macro modalBody>
	<div class="modal-body">
		<#nested/>
	</div>
</#macro>

<#macro modalFooter addCloseButton=true>
	<div class="modal-footer">
		<#if addCloseButton>
			<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
		</#if>
		<#nested/>
	</div>
</#macro>

