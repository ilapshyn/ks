<#macro pills pages=pages page=page class="">
	<ul class="nav nav-pills">
		<#list pages as p>
			<li role="presentation" class="${class}<#if p==page>active</#if>"><a href="${p.getUrl()}">${p.getName()}</a></li>
		</#list>
	</ul>
</#macro>