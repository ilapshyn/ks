<#include "macro-lib/macro-all.ftl"/>
<@document title="Registration" requiredStyles=["main"]>
	<@container>
		<@row style="height:260px;"></@row>
		<@row>
			<@section size=4/>
			<@section size=5 class="design">
				<@form id="registration-form" action="/register" legend="Registration form">
					<@textField label="First name:" id="firstName" placeholder="For example Joe"/>
					<@textField label="Last name:" id="lastName" placeholder="For example Snow"/>
					<@passwordField/>
					<@passwordField label="Repeat password:" id="password_repeat" name="password_repeat" placeholder="Enter password once more"/>
					<@emailField/>
					<@control>
						<input type="submit" class="btn btn-primary" style="margin: 10px 20px 30px 40px; width: 108px;" value="Register">
					</@control>
					<@requiredScript/>
				</@form>
			</@section>
		</@row>
	</@container>
</@document>