<#macro navigationTabs id >
	<#global tabList = [], tabContent = []/>
	<#nested/>
	<ul class="nav nav-tabs" id="${id}">
		<#list tabList as tab>
			<li <#if tab_index == 0>class="active"</#if>><a href="#${tab}" onClick="$(this).tab('show');">${tab}</a></li>
		</#list>
	</ul>
	<div class="tab-content">
		<#list tabContent as content>
			<div class="tab-pane <#if content_index == 0>active</#if>" id="${tabList[content_index]}">${content}</div>
		</#list>
	</div>
</#macro>

<#macro navigationTab name>
	<#local content><#nested></#local>
	<#global tabContent = tabContent + [content]/>
	<#global tabList = tabList + [name]/>
</#macro>