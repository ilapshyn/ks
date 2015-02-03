<@document title="Login Page" requiredStyles=["main", "login"]>
<#--
	<@container>
		<@row>
			<@section size=4/>
			<@section size=5 class="design" style="padding-top: 25px;">
				<@form id="login-form" action="/j_spring_security_check">
					<@textField label="Your name:" name="j_username" placeholder="Your name"/>
					<@passwordField name="j_password"/>
					<@control>
						<input type="submit" class="btn btn-primary" style="width: 108px;" value="Login">
						<a href="/registration" class="btn" style="width: 108px; padding: 4px 0px;" >Register Now</a>
					</@control>
				</@form>
			</@section>
		</@row>
	</@container>

	<div class="container">
	    <div class="row">
	        <div class="col-sm-6 col-md-4 col-md-offset-4">
	            <h1 class="text-center login-title">Sign in to continue</h1>
	            <div class="account-wall">
	                <img class="profile-img" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120"
	                    alt="">
	                <form id="login-form" class="form-signin" action="/j_spring_security_check" method="post">
	                <input type="text" name="j_username" class="form-control" placeholder="Email" required autofocus>
	                <input type="password" name="j_password" class="form-control" placeholder="Password" required>
	                <input class="btn btn-lg btn-primary btn-block" type="submit">
	                    Sign in</button>
	                <label class="checkbox pull-left">
	                    <input type="checkbox" value="remember-me">
	                    Remember me
	                </label>
	                <a href="#" class="pull-right need-help">Need help? </a><span class="clearfix"></span>
	                </form>
	            </div>
	            <a href="#" class="text-center new-account">Create an account </a>
	        </div>
	    </div>
	</div>
-->


<div class="container">
	<div class="content">
      <div class="row">
        <div class="login-form">
          <h2>Login</h2>
          <form action="/j_spring_security_check" method="post">
              <div class="form-group">
                <input type="text" name="j_username" class="form-control" required autofocus placeholder="Username">
              </div>
              <div class="form-group">
                <input type="password" name="j_password" class="form-control" placeholder="Password" required>
              </div>
              <button class="btn btn-primary" type="submit">Sign in</button>
          </form>
        </div>
      </div>
   </div>
  </div> <!-- /container -->

</@document>