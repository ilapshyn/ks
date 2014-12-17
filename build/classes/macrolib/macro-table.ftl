<#macro table id="" headers=[] hovered=true class="">
	<table id="${id}" class="table ${class}<#if hovered>table-hover"</#if>>
		<thead>
			<tr>
				<#list headers as header>
					<th id="table_${id}_header_${header_index}">${header}</th>
				</#list>
			</tr>
		</thead>
		<tbody>
			<#nested/>
		</tbody>
	</table>
</#macro>

<#macro tableRow id="" cells=[]>
	<tr id=${id}>
		<#list cells as cell>
			<td>${cell}</td>
		</#list>
	</tr>
</#macro>