<!DOCTYPE html>
<html>
<head>
	<title>Happy To Help!</title>
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="signup.css">
	<link rel="shortcut icon" href="..\..\201612.ico">
</head>
<body>
<%
        String email=(String)session.getAttribute("email");
        
        //redirect user to login page if not logged in
        if(email==null){
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
						<a href="contacts.jsp" class="nav-link active"><i class="fa fa-phone" aria-hidden="true"></i>&nbsp; Contact Us</a>
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
		<div class="row container-color" style="padding-left: 50px; padding-bottom: 110px">
			<div class="col-12">
				<div class="row" id="extrapadding">
					<div class="col-12">
						<h3><i class="fa fa-phone" aria-hidden="true"></i>&nbsp; CONTACT US</h3>
					</div>
				</div>
				<div class="row" id="extrapadding">
					<div class="col-md-6 col-12">
						<span><i class="fa fa-map-marker" aria-hidden="true"></i>&nbsp; Address :</span>
						<address style="padding-left:25px;">ABES Engineering College Campus -1,<br> 19th KM Stone, NH-24,<br>Ghaziabad U.P., India</address>
						<br>
						<span><i class="fa fa-mobile" aria-hidden="true"></i>&nbsp; Telephone :</span>
						<p style="padding-left:25px;">+91-120-7135112, 7135113 </p>
						<br>
						<span><i class="fa fa-fax" aria-hidden="true"></i>&nbsp; Fax :</span>
						<p style="padding-left:25px;">+91-120-7135115</p>
						<br>
						<span><i class="fa fa-envelope" aria-hidden="true"></i>&nbsp; Mail :</span>
						<p style="padding-left:38px;">Mail@centrallibrary.ac.in</p>
					</div>
					<div class="col-md-6 col-12">
						<h3 style="padding-top: 35px;">Follow Us on :</h3>
						<br>
						<span><i class="fa fa-google-plus" aria-hidden="true"></i></span><span style="font-size:20px;padding-bottom:10px;">&nbsp; :&emsp;Central_Library@18</span>
						<br>
						<span><i class="fa fa-whatsapp" aria-hidden="true"></i></span><span style="font-size:20px;padding-bottom:10px;">&nbsp; :&emsp;8769XXXXXX</span>
						<br>
						<span><i class="fa fa-facebook-square" aria-hidden="true"></i></span><span style="font-size:20px;padding-bottom:10px;">&nbsp; :&emsp;Central@Library</span>
						<br>
						<span><i class="fa fa-instagram" aria-hidden="true"></i></span><span style="font-size:20px;padding-bottom:10px;">&nbsp; :&emsp;Library@insta</span>
						<br>
						<span><i class="fa fa-twitter" aria-hidden="true"></i></span><span style="font-size:20px;padding-bottom:10px;">&nbsp; :&emsp;Library@18_twitter</span>
					</div>
				</div>
			</div>
		</div>	
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>