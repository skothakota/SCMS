<%@page import="java.sql.ResultSet"%>
<%@page import="connection.Queries"%>
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
							<li><a href="CounselorHome.jsp">Home</a></li>
							<li><a href="Add_S_Professional.jsp">Add student details</a></li>
							<li class="has-dropdown"><a href="CouselorData.jsp">FeedBack</a></li>
								
							
                                                        <li class="active"><a href="View_S_Details.jsp">View Student Details</a></li>
							<li><a href="Counselor.jsp">Logout</a></li>
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
                                    <h2><center>Student Details</center></h2>
				</div>
			</div>
		</div>
		<aside id="fh5co-hero">
			<div class="flexslider">
				<ul class="slides">
                                    <h2><center></center></h2>
                                    <style>
                                        table tr th{
                                            font-weight: bold;
                                      
                                        }
                                        input{
                                            background: none;
                                            border:1px solid blue;
                                        }
                                    </style>
                                    <%
                                    String uname=(String)session.getAttribute("uname");
                                     String email=(String)session.getAttribute("email");
                                    String roll_no=request.getParameter("roll_no");
                                    try{
                                        ResultSet r=Queries.getExecuteQuery("select * from c_form where reg_no='"+roll_no+"'");
                                    if(r.next()){
                                    %>
                                     <table>
                                            <tr><th>1. Name Of The Student</th><td>:<input type="text" name="student_name" value="<%=r.getString(2)%>" readonly=""></td>
                                            
                                                <td><image src="view.jsp?regno=<%=roll_no%>" style="width:150px;height:150px;"/></td>
                                            
                                            
                                            </tr>
                                            <tr><th>2. Register Number</th><td>:<input type="number" name="reg_no"  value="<%=r.getString(3)%>" readonly=""></td></tr>
                                         <tr><th>3. Present Address</th><td>:<input type="text" name="present_address" value="<%=r.getString(4)%>" readonly=""></td></tr>
                                         <tr><th>4. Phone No</th><td>:<input type="number" name="phone_no"  value="<%=r.getString(5)%>" readonly=""></td></tr>
                                         <tr><th>5. E-Mail</th><td>:<input type="email" name="email"  value="<%=r.getString(6)%>" readonly=""></td></tr>
                                         <tr><th>6. Date of Birth</th><td>:<input type="date" name="dob"  value="<%=r.getString(7)%>" readonly=""></td></tr>
                                         <tr><th>7. Father and Mother Names,Education status,Mobile Number:</th></tr>
                                         <tr><th>Father: <input type="text" name="father_name"  value="<%=r.getString(8)%>" readonly=""> Mobile: <input type="number" name="father_mobile"  value="<%=r.getString(9)%>" readonly=""></th></tr>
                                         
                                         <tr><th>Mother: <input type="text" name="mother_name"  value="<%=r.getString(10)%>" readonly=""> Mobile: <input type="number" name="mother_mobile" value="<%=r.getString(11)%>" readonly=""></th></tr>
                                         <tr><th>Eduction Status : <input type="text" name="gardian_status"  value="<%=r.getString(12)%>" readonly=""> </th></tr>
                                        <tr><th>8. Present Profession </th><td>:<input type="text" name="present_profession"  value="<%=r.getString(13)%>" readonly=""></td></tr>
                                        <tr><th>9. Details of Brothers and Sisters</th><td>:<input type="text" name="siblings" value="<%=r.getString(14)%>" readonly=""></td></tr>
                                         <tr><th>Education: <input type="text" name="sibling_education"  value="<%=r.getString(15)%>" readonly=""> </th></tr>
                                         
                                         <tr><th>Occupation: <input type="text" name="sibling_occupation"  value="<%=r.getString(16)%>" readonly=""></th></tr>
                                         <tr><th>Mobile Numbers: <input type="number" name="sibling_number"  value="<%=r.getString(17)%>" readonly=""> </th></tr>
                                        <tr><th>10. Financial Status </th><td>:<input type="text" name="financial_status"  value="<%=r.getString(18)%>" readonly=""></td></tr>
                                        <tr><th>11. SSC Marks</th><td>:<input type="text" name="ssc_marks"  value="<%=r.getString(19)%>" readonly=""></td></tr>
                                         <tr><th>Inter Marks: <input type="text" name="inter_marks"  value="<%=r.getString(20)%>" readonly=""> </th></tr>
                                         
                                         <tr><th>CET Rank: <input type="text" name="cet_rank"  value="<%=r.getString(21)%>" readonly=""></th></tr>
                                         <tr><th>12.Staying at: <input type="text" name="cet_rank"  value="<%=r.getString(22)%>" readonly=""></th></tr>
                                              
                                         <tr><a href="ViewFeeDetails.jsp?regno=<%=r.getString(3)%>">View Fee Details</a></tr>
                                        </table>
                                        <%}
}catch(Exception e){
out.println(e);
}%>
			<div class="row copyright">
				<div class="col-md-12 text-center">
					<p>
						
					</p>
					<p>
						<ul class="fh5co-social-icons">
							<li><a href="#"><i class="icon-twitr"></i></a></li>
							<li><a href="#"><i class="icon-faceb"></i></a></li>
							<li><a href="#"><i class="icon-linked"></i></a></li>
							<li><a href="#"><i class="icon-dribbb"></i></a></li>
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

