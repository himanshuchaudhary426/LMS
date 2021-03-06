<!DOCTYPE html>
<html>
<head>
	<title>About Us</title>
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="about.css">
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
					<a href="dashboard.jsp" class="nav-link"> Home</a>
				</li>
			</ul>

			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#LibraryDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    		<span class="navbar-toggler-icon"></span>
  			</button>

			<div class="collapse navbar-collapse" id="LibraryDropdown">
				<ul class="navbar-nav">
					<li class="nav-item">
						<a href="About.jsp" class="nav-link active"><i class="fa fa-info-circle" aria-hidden="true"></i>&nbsp;About</a>
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
			<ul class="navbar-nav mr-auto">
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
			<div class="col-12">
				<div class="row" id="extrapadding">
					<div class="col-12">
						<h3><i class="fa fa-info-circle" aria-hidden="true"></i>&nbsp; ABOUT US</h3>
					</div>
				</div>

				<div class="row" id="extrapadding">
					<div class="col-lg-8 col-12">
						<p>&emsp;&emsp;“<strong>ABES EC is the leading institution in AKTU</strong>. It has achieved excellence in academics by consistently securing the First position for consecutively 6 semesters in University academic result. The placement records for the year 2017-18 are the highest with <strong>1200+ job offers</strong> for Engineering and Management students.</p>
						<p>Mr. Ved Prakash Goel, founder of the institution started this journey in 1999 with a belief to provide the best quality of education to young minds in Technology & Management. The ABESEC family welcomes the students with a promise to deliver the best guidance to shape their career.” </p>
					</div>
					<div class="col-lg-4 col-12">
						<img id="img-small" src="https://images.static-collegedunia.com/public/college_data/images/campusimage/120912091849_2084b.jpg.jpg" alt="Picture"/>
					</div>
				</div>

				<hr style="border-bottom:2px white;box-shadow: 0px 2px 2px rgb(0,0,0,0.2);">

				<div class="row" id="extrapadding">
					<div class="col-12">
						<h3><i class="fa fa-book" aria-hidden="true"></i>&nbsp; LIBRARY</h3>
					</div>
				</div>

				<div class="row" id="extrapadding">
					<div class="col-md-4 col-12">
						<img id="img-small" src="http://www.abes.ac.in/wp-content/uploads/2018/01/lab_img.jpg" alt="Picture"/>
					</div>

					<div class="col-md-8 col-12">
						<h4>" There is no friend as loyal as book."</h4>
						<p>&emsp;&emsp;Library is the spinal column and the soul of ABES Engineering College and carries a vigorous role in teaching, training, research and development; and provides the foremost foundation for distinct research at the college. Library is intended to help academic community to keep up-to-date with the latest advancement in their area of interest and to deliver information sustenance for research and training. Students also utilize library as a source of information in accord with their course curriculum as well as for their self-development. </p>
					</div>
				</div>

				<div class="row">
					<div class="col-12">
						<p>It is a well-planned full automation library that is equipped with latest books and journals on Technology, Management, Economic and Business related area. The Library works 14 hours in weekdays and 8 hours on weekends & Vacation to give a smooth access to the students. Fully automated computerizing search along with bar code system with LIBSYS Library management system is available.</p>
						<p>Library is always blessed with numerous of E-Books, Lecture CSs of IIT Faculties and Video Cassettes with all modern and latest techniques.</p>
					</div>
				</div>

				<div class="row" id="extrapadding">
					<div class="col-md-6 col-12">
						<img id="img-small" src="http://www.abes.ac.in/wp-content/uploads/2018/01/lab_img2.jpg" alt="Picture"/>
					</div>

					<div class="col-md-6 col-12">
						<img id="img-small" src="http://www.abes.ac.in/wp-content/uploads/2018/01/lab_img1.jpg" alt="Picture"/>
					</div>
				</div>

				<div class="row">
					<div class="col"><br><br></div>
				</div>
			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>