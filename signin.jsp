<!DOCTYPE html>
<html>
<head>
	<title>Login</title>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="signup.css">
	<link href="https://fonts.googleapis.com/css?family=Courgette|Crimson+Text:700" rel="stylesheet">
	<link rel="shortcut icon" href="..\..\201612.ico">
	
</head>
<body>
	<%
        String email=(String)session.getAttribute("email");
        
        //redirect user to home page if already logged in
        if(email!=null){
            response.sendRedirect("../homepage/home.jsp");
        }
		
 
        String status=request.getParameter("status");
        
        if(status!=null){
            if(status.equals("false")){
                   out.print("Incorrect login details!");                       
            }
            else{
                out.print("Some error occurred!");
            }
        }
        %>
	
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a href="#" class="navbar-brand"><i class="fa fa-book" aria-hidden="true"></i>&nbsp; CENTRAL LIBRARY</a>
			<ul class="navbar-nav mr-auto">
				<li class="nav-item">
					<a href="../../home/Home.htm" class="nav-link">&emsp; Home</a>
				</li>
			</ul>

			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#LibraryDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    		<span class="navbar-toggler-icon"></span>
  			</button>

			<div class="collapse navbar-collapse" id="LibraryDropdown">
				<ul class="navbar-nav">
					<li class="nav-item">
						<a href="../../home/About.htm" class="nav-link">About</a>
					</li>
					<li class="nav-item">
						<a href="../../home/Gallery.htm" class="nav-link">Gallery</a>
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
						<a href="../../home/Contacts.htm" class="nav-link">Contact Us</a>
					</li>
			</ul>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active">
					<a href="signin.jsp" class="nav-link"><i class="fa fa-sign-in" aria-hidden="true"></i>&nbsp; Sign In</a>
				</li>
				<li class="nav-item">
					<a href="../../home/signup.htm" class="nav-link"><i class="fa fa-user-plus" aria-hidden="true"></i>&nbsp; Sign Up</a>
				</li>
			</ul>
		</div>
		</div>
	</nav>
	<div class="container">
		<div class="row" id="extrapadding">
			<div class="col-12 offset-4">
			<%
				if(((String)session.getAttribute("signup"))=="Registered Successfully!!Login here..")
					out.println("<font color='red'>Registered Successfully!!Login here..</font>");
				
				if(((String)session.getAttribute("changemsg"))=="Password Recovered Successfully!!")
					out.println("<font color='red'>Password Recovered Successfully!!</font>");
			%>
				<h3><i class="fa fa-user" aria-hidden="true"></i>&nbsp;Student Login</h3>
			</div>
		</div>
			<div class="row" id="extrapadding">
				<div class="col-lg-4 col-md-6 offset-3 col-sm-8 col-8 offset-2">
					<form action="loginRequestHandler.jsp" method="post">
						<div class="form-group">
							<label for="sque"></label>
							<div class="input-group">
								<div class="input-group-prepend">
									<div class="input-group-text"><i class="fa fa-lock" aria-hidden="true"></i></div>
								</div>
								<input type="text" name="email" id="email" class="form-control" placeholder="Email ID" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="enter valid email" required>
							</div>
						</div>
				
						<div class="form-group">
							<label for="sans"><br></label>
							<div class="input-group">
								<div class="input-group-prepend">
									<div class="input-group-text"><i class="fa fa-unlock" aria-hidden="true"></i></div>
								</div>
								<input type="password" name="password" class="form-control" id="pass" placeholder="Password" required>
							</div><br>
							<font color="red"><%
												if(((String)session.getAttribute("error"))=="You need to login first")
												
													out.println("You need to login first.");

												
												if(((String)session.getAttribute("errormsg"))=="Invalid username or password.")

													out.println("Invalid username or password.");
													session.invalidate();
							%></font>
						</div>
					
						<div class="row">
							<div class="col-4 offset-4">
								<button type="submit" class="btn btn-primary"><i class="fa fa-paper-plane" aria-hidden="true"></i>&nbsp; Submit</button>
							</div>
						</div>
					
						<div class="row">
							<div class="col-8 offset-4" id="extrapadding">
								<span><a href="../../home/emailverify.jsp">Forgot Password ?</a></span>
							</div>
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