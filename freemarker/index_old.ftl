<@document requiredStyles=["main"] title="Home Page" >
	<@container class="">
		<@row class="header"></@row>
		<@row>
			<@pills/>
		</@row>
		<@row>
			<@navigationTabs id="navTab">
				<@navigationTab name="TabName">
					Hello
				</@navigationTab>
				<@navigationTab name="Second">
					<@accordion accordionId="aId">
						<@accordionGroup accordionId="aId" groupId="gId" header="Main">
							Hello
						</@accordionGroup>
						<@accordionGroup accordionId="aId" groupId="gId1" header="Second">
							Hello
						</@accordionGroup>
						<@accordionGroup accordionId="aId" groupId="gId2" header="Third">
							Hello
						</@accordionGroup>
					</@accordion>
				</@navigationTab>
				<@navigationTab name="Third">
					<@table id="table" headers=["Header 1", "Header 2", "Header 3"]>
						<@tableRow cells=["a", "b", "c"]></@tableRow>
						<@tableRow cells=["a1", "b2", "c3"]></@tableRow>
						<@tableRow cells=["a4", "b5", "c6"]></@tableRow>
						<@tableRow cells=["a7", "b8", "c9"]></@tableRow>
					</@table>
				</@navigationTab>
			</@navigationTabs>
		</@row>
	</@container>
</@document>