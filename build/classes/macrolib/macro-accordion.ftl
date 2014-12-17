<#macro accordion accordionId>
	<div class="accordion" id="${accordionId}">
		<#nested>
	</div>
</#macro>

<#macro accordionGroup accordionId groupId header active=false>
	<div class="accordion-group">
		<div class="accordion-heading">
		    <a class="accordion-toggle" data-toggle="collapse" data-parent="#${accordionId}" href="#${groupId}">
		      ${header}
		    </a>
		</div>
		<div id="${groupId}" class="accordion-body collapse <#if active>in</#if>">
		    <div class="accordion-inner">
				<#nested>
		    </div>
		</div>
	</div>
</#macro>
