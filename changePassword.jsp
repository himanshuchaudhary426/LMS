<!DOCTYPE html>
<html>
<head>
	<title>Change Password</title>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="signup.css">
	<link href="https://fonts.googleapis.com/css?family=Courgette|Crimson+Text:700" rel="stylesheet">
	<link rel="shortcut icon" href="..\..\201612.ico">
	
	<script>
		function formValidation()
		{
			if(document.form3.cnnpassword.value != document.form3.ccnpassword.value)
			{
				alert('Confirm Password did Not Match');
				document.form3.ccnpassword.focus();     
				return false;
			}	
		}
	</script>
</head>
<body>
<%
		String email=(String)session.getAttribute("email");
		if(email==null)
		{
			response.sendRedirect("../login/signin.jsp");
			session.setMaxInactiveInterval(500);
			session.setAttribute("error","You need to login first");
		}
%>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a href="#" class="navbar-brand"><i class="fa fa-book" aria-hidden="true"></i>&nbsp; CENTRAL LIBRARY</a>
			<ul class="navbar-nav mr-auto">
				<li class="nav-item">
					<a href="dashboard.jsp" class="nav-link">&emsp; Home</a>
				</li>
			</ul>

			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#LibraryDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    		<span class="navbar-toggler-icon"></span>
  			</button>

			<div class="collapse navbar-collapse" id="LibraryDropdown">
				<ul class="navbar-nav">
					<li class="nav-item">
						<a href="About.jsp" class="nav-link">About</a>
					</li>
					<li class="nav-item">
						<a href="Gallery.jsp" class="nav-link">Gallery</a>
					</li>
					<li class="nav-item dropdown">
	        			<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Student Corner</a>
	        			<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
	        				<a class="dropdown-item" href="#">College News</a>
	          				<a class="dropdown-item" href="#">Faculty Notes</a>
	          				<a class="dropdown-item" href="#">Library Books</a>
	          				<a class="dropdown-item" href="#">Extra</a>
	        			</div>
	      			</li>
					<li class="nav-item">
						<a href="contacts.jsp" class="nav-link">Contact Us</a>
					</li>
			</ul>
			</div>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item">
								<%
				out.println("<div class='nav-link active'>&emsp;<i class='fa fa-user' aria-hidden='true'></i> &nbsp;&nbsp;<font color='white'>"+email+"&emsp;</font></div>");
			%></li>
			</ul>
			<ul class="navbar-nav">
			<li class="nav-item dropdown">
	        			<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Setting</a>
	        			<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
	        				<a class="dropdown-item" href="myaccount.jsp">My Account</a>
	          				<a class="dropdown-item" href="changePassword.jsp">Change Password</a>
	          				<ul class="navbar-nav ml-auto">
					<li class="nav-item">
							<a href="../logout/logout.jsp" class="dropdown-item"><i class="fa fa-sign-out" aria-hidden="true"></i>&nbsp; Logout</a>
					</li>
				</ul>
	        	</div>
	      	</li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="row" id="extrapadding">
			<div class="col-12 offset-4">
				<h3><i class="fa fa-user" aria-hidden="true"></i>&nbsp;Change Password</h3>
			</div>
		</div>
		<div class="row" id="extrapadding">
			<div class="col-lg-4 col-md-6 offset-3 col-sm-8 col-8 offset-2">
				<form name="form3" action="changingPassword.jsp" method="post" onsubmit="return formValidation();">
					<div class="form-group">
						<label for="opassword">Enter old Password</label>
						<div class="input-group">
							<div class="input-group-prepend">
								<div class="input-group-text"><i class="fa fa-key" aria-hidden="true"></i></div>
							</div>
							<input type="password" name="opassword" class="form-control" id="opassword" placeholder="Old Password" required>
						</div>
						<br>
						<label for="cnnpassword">Enter New Password</label>
						<div class="input-group">
							<div class="input-group-prepend">
								<div class="input-group-text"><i class="fa fa-lock" aria-hidden="true"></i></div>
							</div>
							<input type="password" name="cnnpassword" class="form-control" id="cnnpassword" placeholder="New Password" required>
						</div>
						<br>
						<label for="ccnpassword">Confirm New Password</label>
						<div class="input-group">
							<div class="input-group-prepend">
								<div class="input-group-text"><i class="fa fa-check-square-o" aria-hidden="true"></i></div>
							</div>
							<input type="password" name="ccnpassword" class="form-control" id="ccnpassword" placeholder="Confirm New Password" required>
						</div>
						<br>
						<%
						if(session.getAttribute("changmsg")==null){}
						else
						out.println("<font color='red'>"+(session.getAttribute("changmsg"))+"</font>");
					%><br><br>
							<button type="submit" class="btn btn-success"><i class="fa fa-paper-plane" aria-hidden="true"></i>&nbsp; Submit</button>&emsp;&emsp;&emsp;
							<button type="reset" class="btn btn-info"><i class="fa fa-refresh" aria-hidden="true"></i>&nbsp; Reset</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>