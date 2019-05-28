<!DOCTYPE html>
<html>
<head>
	<title>Password Recovery</title>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="signup.css">
	<link href="https://fonts.googleapis.com/css?family=Courgette|Crimson+Text:700" rel="stylesheet">
	<style>
		#content{
			text-align:center;
		}
	</style>
	<script>
		function formValidation()
		{
			if(document.form2.npassword.value != document.form2.cnpassword.value)
			{
				alert('Confirm Password did Not Match');
				document.form2.cnpassword.focus();     
				return false;
			}	
		}
	</script>
</head>
<body>
<%
		String email=(String)session.getAttribute("confirm");
		if(email==null)
		{
			response.sendRedirect("emailverify.jsp");
		}
%>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a href="#" class="navbar-brand"><i class="fa fa-book" aria-hidden="true"></i>&nbsp; CENTRAL LIBRARY</a>
			<ul class="navbar-nav mr-auto">
				<li class="nav-item">
					<a href="Home.htm" class="nav-link">&emsp; Home</a>
				</li>
			</ul>

			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#LibraryDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    		<span class="navbar-toggler-icon"></span>
  			</button>

			<div class="collapse navbar-collapse" id="LibraryDropdown">
				<ul class="navbar-nav">
					<li class="nav-item">
						<a href="About.htm" class="nav-link">About</a>
					</li>
					<li class="nav-item">
						<a href="Gallery.htm" class="nav-link">Gallery</a>
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
						<a href="Contacts.htm" class="nav-link">Contact Us</a>
					</li>
			</ul>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item">
					<a href="../student/login/signin.jsp" class="nav-link"><i class="fa fa-sign-in" aria-hidden="true"></i>&nbsp; Sign In</a>
				</li>
				<li class="nav-item">
					<a href="signup.htm" class="nav-link"><i class="fa fa-user-plus" aria-hidden="true"></i>&nbsp; Sign Up</a>
				</li>
			</ul>
		</div>
		</div>
	</nav>
	<div class="container" id="content">
		<div class="row">
			<div class="col-lg-6"><br><br><br>
			<h3><i class="fa fa-user" aria-hidden="true"></i>&nbsp;Account Recovery</h3>
			<span><%
				out.println("Welcome "+email+"<br>");
			%>
			</span>
			<h5><br>Enter New Password</h5>
			<form name="form2" action="passwordChanged.jsp" method="post" onsubmit="return formValidation();">
				<div class="form-group">
					<label for="sans"><br></label>
					<div class="input-group">
						<div class="input-group-prepend">
          					<div class="input-group-text"><i class="fa fa-key" aria-hidden="true"></i></div>
        				</div>
						<input type="password" name="npassword" class="form-control" id="npassword" placeholder="New Password" required>
					</div>

				<div class="form-group">
					<label for="sans"><br></label>
					<div class="input-group">
						<div class="input-group-prepend">
          					<div class="input-group-text"><i class="fa fa-check-square-o" aria-hidden="true"></i></div>
        				</div>
						<input type="password" name="cnpassword" class="form-control" id="cnpassword" placeholder="Confirm New Password" required>
					</div>
				<div>
				<br>
					<button type="submit" class="btn btn-default"><i class="fa fa-paper-plane" aria-hidden="true"></i>&nbsp; Submit</button>&emsp;&emsp;&emsp;
					<button type="reset" class="btn btn-default"><i class="fa fa-refresh" aria-hidden="true"></i>&nbsp; Reset</button>
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