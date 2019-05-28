<!DOCTYPE html>
<html>
<head>
	<title>Forgot Password</title>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="signup.css">
	<link href="https://fonts.googleapis.com/css?family=Courgette|Crimson+Text:700" rel="stylesheet">
	<style>
		#content{
			text-align:center;
		}
	</style>
</head>
<body>
			<%
				String memail=(String)session.getAttribute("verify");
				if(memail==null)
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
				<li class="nav-item active">
					<a href="signin.htm" class="nav-link"><i class="fa fa-sign-in" aria-hidden="true"></i>&nbsp; Sign In</a>
				</li>
				<li class="nav-item">
					<a href="Signup.htm" class="nav-link"><i class="fa fa-user-plus" aria-hidden="true"></i>&nbsp; Sign Up</a>
				</li>
			</ul>
		</div>
		</div>
	</nav>
	<div class="container" id="content">
		<div class="row">
			<div class="col-lg-6">
			<h3><i class="fa fa-user" aria-hidden="true"></i>&nbsp; Account Recovery</h3>
			<span><%
				String Remail=(String)session.getAttribute("verify");
				out.println("Welcome "+Remail+"<br>");
			%></span><br>
			<form action="enterNewPassword.jsp" method="post">
				<div class="form-group">
				<label for="sque">Choose Your Security Quetion</label>
					<div class="input-group">
						<div class="input-group-prepend">
          					<div class="input-group-text"><i class="fa fa-lock" aria-hidden="true"></i></div>
        				</div>
						<select class="form-control" name="SecurityQue" id="sque" required>
						<option selected>Security Question</option>
						<option value="What is your Nickname?">What is your Nickname?</option>
						<option value="What is your favourite color?">What is your favourite color?</option>
						<option value="What is your pet name?">What is your pet name?</option>
						<option value="Which sport you like?">Which sport you like?</option>
						<option value="What is your favorite team?">What is your favorite team?</option>
						<option value="What is your favorite movie?">What is your favorite movie?</option>
						<option value="In what town your first job?">In what town your first job?</option>
					</select>
					</div>
				</div>
				<div class="form-group">
					<label for="sans">Your Answer</label>
					<div class="input-group">
						<div class="input-group-prepend">
          					<div class="input-group-text"><i class="fa fa-unlock" aria-hidden="true"></i></div>
        				</div>
						<input type="text" name="SecurityAns" class="form-control" id="sans" placeholder="Answer" required>
					</div>
					<%
						String msg=(String)session.getAttribute("errmsg");
						if(msg=="Question and Answer did not match")
						out.println("<font color='red'>"+msg+"</font>");
						
						
					%>
				</div>
				<div>
					<button type="submit" class="btn btn-default"><i class="fa fa-paper-plane" aria-hidden="true"></i>&nbsp; Submit</button>
				</div>
			</form>
		</div>
		</div>
	</div>
</body>
</html>