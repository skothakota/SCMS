<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Student Counselling Management System</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by freehtml5.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="freehtml5.co" />

	

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" /> 

	<link href="https://fonts.googleapis.com/css?family=Open+Sans|Playfair+Display" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="css/flexslider.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
        <style>
            table
            {
                background-color: lightskyblue;
                margin-top: 100px;
            }
           
            table tr td
            {
                padding: 10px;
                text-decoration:red;
                
            }
            input[type="text"]{
    height:30px;
    margin-top:20px;
   
  
}
input[type="number"]{
    height:30px;
    margin-top:20px;
  
}
        </style>
	</head>
	<body>
		
	<div class="fh5co-loader"></div>
	
	<div id="page">
	<nav class="fh5co-nav" role="navigation">
		<div class="container">
			<div class="top-menu">
				<div class="row">
					<div class="">
                                            <div id=""><a href="index.html"><span><font size="5">Student Counselling Management System</font></span></a></div>
					</div>
					<div class="col-sm-10 text-right menu-1">
						<ul>
							<li><a href="StudentHome.jsp">Home</a></li>
							<li class="active"><a href="StudentReg.jsp">Counseling Forms</a></li>
							<li class="has-dropdown"><a href="Prof_Details.jsp">professional details</a>
								
							</li>
                                                        <li class="has-dropdown"><a href="Give_FeedBack.jsp">Give FeedBack </a>
								
							</li>
							<li><a href="Student.jsp">Logout</a></li>
						</ul>
					</div>
				</div>
				
			</div>
		</div>
	</nav>
	<div class="container">
		<div id="fh5co-intro">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 col-md-pull-2">
					<h2>Counseling Form</h2>
				</div>
			</div>
		</div>
		<aside id="fh5co-hero">
			<div class="flexslider">
				<ul class="slides">
                                    <h2><center></center></h2>
                                    <form name="reg" action="StudentRegAction.jsp" method="post">
                                        <h5><b>Student Bio-Data:</b></h5>
                                        <table>
                                            <tr><th>1. Name Of The Student</th><td>:<input type="text" name="student_name" required=""></td></tr>
                                            <tr><th>2. Register Number</th><td>:<input type="number" name="reg_no" required=""></td></tr>
                                         <tr><th>3. Present Address</th><td>:<input type="text" name="present_address" required=""></td></tr>
                                         <tr><th>4. Phone No</th><td>:<input type="number" name="phone_no" required=""></td></tr>
                                         <tr><th>5. E-Mail</th><td>:<input type="email" name="email" required=""></td></tr>
                                         <tr><th>6. Date of Birth</th><td>:<input type="date" name="dob" required=""></td></tr>
                                         <tr><th>7. Father and Mother Names,Education status,Mobile Number:</th></tr>
                                         <tr><th>Father: <input type="text" name="father_name" required=""> Mobile: <input type="number" name="father_mobile" required=""></th></tr>
                                         
                                         <tr><th>Mother: <input type="text" name="mother_name" required=""> Mobile: <input type="number" name="mother_mobile" required=""></th></tr>
                                         <tr><th>Eduction Status : <input type="text" name="gardian_status" required=""> </th></tr>
                                        <tr><th>8. Present Profession </th><td>:<input type="text" name="present_profession" required=""></td></tr>
                                        <tr><th>9. Details of Brothers and Sisters</th><td>:<input type="text" name="siblings" required=""></td></tr>
                                         <tr><th>Education: <input type="text" name="sibling_education" required=""> </th></tr>
                                         
                                         <tr><th>Occupation: <input type="text" name="sibling_occupation" required=""></th></tr>
                                         <tr><th>Mobile Numbers: <input type="number" name="sibling_number" required=""> </th></tr>
                                        <tr><th>10. Financial Status </th><td>:<input type="text" name="financial_status" required=""></td></tr>
                                        <tr><th>11. SSC Marks</th><td>:<input type="text" name="ssc_marks" required=""></td></tr>
                                         <tr><th>Inter Marks: <input type="text" name="inter_marks" required=""> </th></tr>
                                         
                                         <tr><th>CET Rank: <input type="text" name="cet_rank" required=""></th></tr>
                                          <tr><th>12.
                                                  <input type="radio" value="Hosteller" name="stay">Hosteller
                                           <input type="radio" value="DayScholar" name="stay">Day Scholar
                                        <input type="radio" value="OtherRoom" name="stay">Other room</th></tr>
                                          <tr>
                                              <th><input type="submit" value="submit data"></th>
                                          </tr>
                                        </table>
                                        
   </form>
                                  
			   		
	
			<div class="row copyright">
				<div class="col-md-12 text-center">
					<p>
								</p>
					<p>
						<ul class="fh5co-social-icons">
							<li><a href="#"><i></i></a></li>
							<li><a href="#"><i></i></a></li>
							<li><a href="#"><i></i></a></li>
							<li><a href="#"><i></i></a></li>
						</ul>
					</p>
				</div>
			</div>
		</footer>
	</div><!-- END container -->
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Sticky Kit -->
	<script src="js/sticky-kit.min.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>

	</body>
</html>

