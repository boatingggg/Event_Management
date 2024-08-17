<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
 <!--    <title>Focus Admin: Widget</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">   -->

    <!-- ================= Favicon ================== -->
    <!-- Standard -->
 <!--    <link rel="shortcut icon" href="http://placehold.it/64.png/000/fff">
    <!-- Retina iPad Touch Icon-->
<!--     <link rel="apple-touch-icon" sizes="144x144" href="http://placehold.it/144.png/000/fff">
    <!-- Retina iPhone Touch Icon-->
<!--     <link rel="apple-touch-icon" sizes="114x114" href="http://placehold.it/114.png/000/fff">
    <!-- Standard iPad Touch Icon-->
<!--     <link rel="apple-touch-icon" sizes="72x72" href="http://placehold.it/72.png/000/fff">
    <!-- Standard iPhone Touch Icon-->
  <!--   <link rel="apple-touch-icon" sizes="57x57" href="http://placehold.it/57.png/000/fff">

    <!-- Styles -->
  <!--   <link href="css/lib/font-awesome.min.css" rel="stylesheet">
    <link href="css/lib/themify-icons.css" rel="stylesheet">
    <link href="css/lib/bootstrap.min.css" rel="stylesheet">
    <link href="css/lib/helper.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
 -->
</head>

<body class="bg-primary mt-5">

     <div class="unix-login">
        <div class="container-fluid">
            <div class="row justify-content-center" style="background-color: black;">
                <div class="col-md-8 border"  style="background-color:  #198754;">
                    <div class="login-content">
                        <div class="login-logo">
                            <a href="index.html"><span>Focus</span></a>
                        </div>    
                        
                        <div class="login-form" style="color:#cda45e; text-align: center; ">
                            <h4 style="text-align: center; text-decoration: underline; font-weight: bold;">Register to Administration</h4>
                            <form action="SignUp" method="post" style="text-align: left; font-weight: bold;">
                                <div class="form-group">
                                    <label>First Name: </label>
                                     <div class="col-md-12">
                                    <input type="text" onblur="userfnameRequired()" class="form-control" placeholder="FirstName" name="userfname" id="userfname" required><br>
                               
                           		       <span id="userfnameError" style="display: none;color:red;font-size: 14px; font-family: sans-serif;">Please enter First Name.</span>	
						
                                </div>
                                  <div class="form-group">
                                    <label>Last Name:</label>
                                     <div class=" col-md-12">
                                    <input type="text" onblur="userlnameRequired()" class="form-control" placeholder="LastName" name="userlname" id="userlname" required><br>
                                     <span id="userlnameError" style="display: none;color:red;font-size: 14px; font-family: sans-serif;">Please enter Last Name.</span>	
						
                                </div>
                                 <div class="form-group">
                                 <label>Date of Birth:</label>
                                    <div class=" col-md-12">
                                    <input type="date"  onblur="userdobRequired()" class="form-control" name="userdob" placeholder="DateofBirth" name="userdob" id="userdob" required><br>
                                     <span id="userdobError" style="display: none;color:red;font-size: 14px; font-family: sans-serif;">Please enter Date of Birth.</span>	
						
                                   </div>
                                    </div>
                                     <div class="form-group">
                                 <label>Gender:</label>
                                      <div class="radio">
                                    <label>
										<input type="radio" name="usergender" onblur="usergenderRequired()" placeholder="usergender" id="usergender" value="Male" required> Male 
										<input type="radio" name="usergender" onblur="usergenderRequired()" placeholder="usergender" id="usergender" value="Female" required> Female 
									</label>		
									 <span id="usergenderError" style="display: none;color:red;font-size: 14px; font-family: sans-serif;">Please enter Date of Birth.</span>	
			
                                </div><br>
                               </div>
                                <div class="form-group">
                                    <label>Email address:</label>
                                     <div class=" col-md-12">
                                    <input type="email" onblur="emailRequired()" class="form-control" placeholder="Email" name="useremail" id="email" required><br>
                                    	<span id="emailError" style="display: none;color:red;font-size: 14px; font-family: sans-serif;">Enter Email Id.</span>	
						
                                     </div>
                                 <div class="form-group">
                                 <label>Contact Number:</label>
                                         <div class="col-md-12">
                                      <input type="text" onblur="contactRequired()"  class="form-control" name="usercontact" placeholder="Contact" id="usercontact" required><br>
                                      	<span id="contactError" style="display: none;color:red;font-size: 14px; font-family: sans-serif;">Enter Contact Number.</span>	
						
                                 </div>
                                          </div>
                                          
                                            <div class="form-group">
                                 <label>Address:</label>
                                         <div class="col-md-12">
                                      <input type="text" onblur="addressRequired()" class="form-control" name="useraddress" placeholder="Address" id="useraddress" required><br>
                                      	<span id="addressError" style="display: none;color:red;font-size: 14px; font-family: sans-serif;">Please enter Address.</span>	
						
                                 </div>
                                          </div>
                                          
                                <div class="form-group">
                                    <label>Password:</label>
                                     <div class="col-md-12">
                                    <input type="password" onblur="passwordRequired()" class="form-control" placeholder="Password" name="userpassword" id="psw" required><br>
                                    	<span id="pswError" style="display: none;color:red;font-size: 14px; font-family: sans-serif;">Please Enter Password.</span>	
                      
                                </div>
                                <div class="checkbox">
                                    <label>
										<input type="checkbox"> Agree the terms and policy 
									</label><br><br>
                                </div>
                                <button type="submit" a href="Login.jsp" style="background-color: red; position: relative; margin-left: 400px; color: white; border-color: white;" >Register</button><br><br>
                               <%--<div class="social-login-content">
                                    <div class="social-button" >
                                        <button type="button" class="btn btn-primary bg-facebook btn-flat btn-addon m-b-10" style="background-color: white; color:black;"><i class="ti-facebook"></i>Register with facebook</button>
                                        <button type="button" class="btn btn-primary bg-twitter btn-flat btn-addon m-t-10" style="background-color: white; color: black;"><i class="ti-twitter"></i>Register with twitter</button>
                                    </div>
                                </div> --%> 
                                <div class="register-link m-t-15 text-center">
                                    <p>Already have account ? <a href="Login.jsp"> Sign in</a></p>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script>
function userfnameRequired(){
	var userfname = $("#userfname").val();
	console.log("Test : "+userfname.length);
	if(userfname.length == 0){
		$("#userfnameError").show();
	} else {
		$("#userfnameError").hide();
	}
}
function userlnameRequired(){
	var userlname = $("#userlname").val();
	if(userlname.length == 0){
		$("#userlnameError").show();
	} else {
		$("#userlnameError").hide();
	}
}
function userdobRequired(){
	var userdob = $("#userdob").val();
	console.log("Test : "+userdob.length);
	if(userdob.length == 0){
		$("#userdobError").show();
	} else {
		$("#userdobError").hide();
	}
}
function contactRequired(){
	var usercontact = $("#usercontact").val();
	if(usercontact.length == 0){
		$("#contactError").show();
	} else {
		$("#contactError").hide();
	}
}
function emailRequired(){
	var email = $("#email").val();
	console.log("Test : "+email.length);
	if(email.length == 0){
		$("#emailError").show();
	} else {
		$("#emailError").hide();
	}
}
function passwordRequired(){
	var psw = $("#psw").val();
	if(psw.length == 0){
		$("#pswError").show();
	} else {
		$("#pswError").hide();
	}
}
function addressRequired(){
	var useraddress = $("#useraddress").val();
	if(useraddress.length == 0){
		$("#addressError").show();
	} else {
		$("#addressError").hide();
	}
}
function usergenderRequired(){
	var usergender = $("#usergender").val();
	if(usergender.length == 0){
		$("#usergenderError").show();
	} else {
		$("#usergenderError").hide();
	}
}
</script>
</html>

<%@ include file="footer.jsp"%>

   