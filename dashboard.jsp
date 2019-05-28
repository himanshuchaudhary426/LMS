<!DOCTYPE html>
<html>
<head>
	<title>Home | Central Library</title>
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<link rel="shortcut icon" href="..\..\201612.ico">
	<link rel="stylesheet" href="signup.css">

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
					<a href="dashboard.jsp" class="nav-link active"><i class="fa fa-home" aria-hidden="true"></i>&nbsp; Home</a>
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
						<a href="Gallery.htm" class="nav-link">&nbsp; Gallery</a>
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
			%>
			</li>
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
		<div class="row container-color" id="row-padding">
			<div class="col-lg-12">
					<div class="row" style="padding-top:20px;">
						<div class="col-lg-12">
							<div id="slideLibrary" class="carousel slide" data-ride="carousel" data-interval="3000" data-pause="hover">
						  		<div class="carousel-inner">
						    		<div class="carousel-item active">
						      			<img class="d-block w-100" src="http://leavenworthpubliclibrary.org/wp-content/uploads/2018/08/young-adult-reading-in-stacks-1100x400.jpg" alt="First slide">
						      			<div class="carousel-caption d-none d-md-block">
						      				<h3>The LIBRARY is the temple of learning, and learning has liberated more people than all the wars in history</h3>
						      			</div>
						    		</div>
						    		<div class="carousel-item">
						      			<img class="d-block w-100" src="http://leavenworthpubliclibrary.org/wp-content/uploads/2018/08/book-literature2-cropped-1100x400.jpg" alt="Second slide">
						      			<div class="carousel-caption d-none d-md-block">
						      				<h3 style="margin-bottom:280px;">If you have a garden and a library, you have everything you need</h3>
						      			</div>
						    		</div>
						    		<div class="carousel-item">
						      			<img class="d-block w-100" src="http://andtile.com/wp-content/uploads/2014/05/1548104_667750693298755_3583169135396253018_o-1100x400.jpg" alt="Third slide">
						      			<div class="carousel-caption d-none d-md-block">
						      				<h3>A library is not a luxury but one of the necessities of life</h3>
						      			</div>
						    		</div>
						    		<div class="carousel-item">
						      			<img class="d-block w-100" src="http://leavenworthpubliclibrary.org/wp-content/uploads/2018/09/library-assistant-1100x400.jpg" alt="Third slide">
						      			<div class="carousel-caption d-none d-md-block">
						      				<h3>A library of wisdom, then, is more precious than all wealth, and all things that are desirable cannot be compared to it.</h3>
						      			</div>
						    		</div>
						  		</div>
						  		<a class="carousel-control-prev" href="#slideLibrary" role="button" data-slide="prev">
						    		<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						    		<span class="sr-only">Previous</span>
						  		</a>
						  		<a class="carousel-control-next" href="#slideLibrary" role="button" data-slide="next">
						    		<span class="carousel-control-next-icon" aria-hidden="true"></span>
						    		<span class="sr-only">Next</span>
						  		</a>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-6 col-12">
							<p class="signup-quotes"><strong>CREATIVITY</strong> is seeing the <br>&emsp;&emsp;&emsp;same thing but <strong>THINKING</strong><br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <strong>DIFFERENTLY !</strong></p>
						</div>
						<div class="col-6">
							<div class="row">
								<div class="col-lg-12 offset-2" style="padding-bottom: 10px;margin-top: 30px;">
									<span>Search Your Books</span>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-12 offset-2">
									<form class="form-inline">
									      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
									      <button class="btn btn-success type="submit">Search</button>
									</form>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col"><br><br><br><br><br><br></div>
					</div>
			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>