<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
<style type="text/css">


</style>
 
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Focus Admin: Widget</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
   
    <!-- ================= Favicon ================== -->
    <!-- Standard -->
    <link rel="shortcut icon" href="http://placehold.it/64.png/000/fff">
    <!-- Retina iPad Touch Icon-->
    <link rel="apple-touch-icon" sizes="144x144" href="http://placehold.it/144.png/000/fff">
    <!-- Retina iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="114x114" href="http://placehold.it/114.png/000/fff">
    <!-- Standard iPad Touch Icon-->
    <link rel="apple-touch-icon" sizes="72x72" href="http://placehold.it/72.png/000/fff">
    <!-- Standard iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="57x57" href="http://placehold.it/57.png/000/fff">

    <!-- Styles -->
    <link href="css/lib/font-awesome.min.css" rel="stylesheet">
    <link href="css/lib/themify-icons.css" rel="stylesheet">
    <link href="css/lib/bootstrap.min.css" rel="stylesheet">
    <link href="css/lib/helper.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
</head>
<style>
.b{
background-color:rgba(0,0,0,0.5);
}
</style>
<body class="">

    <div class="unix-login" style="background-color: black;">
        <div class="container-fluid" >
            <div class="row justify-content-center" >
                <div class="col-md-6 border b" style="background-color: #198754;">
                    <div class="login-content">
                        <div class="login-logo">
                            <a href="index.html"><span>Focus</span></a>
                        </div>
                        <div class="login-form" style="color:#cda45e; text-align: center; ">
                            <h4 style="text-align: center; text-decoration: underline; font-weight: bold;">Login</h4>
                            <form style="text-align: left; font-weight: bold;" action="loginCheck" method="post">
                                <div class="form-group">
                                    <label>Email address: </label>
                                    <input type="text" onblur="emailRequired()" class="form-control" placeholder="Email" name="useremail" id="email" required><br>
                        
						<span id="emailError" style="display: none;color:red;font-size: 14px; font-family: sans-serif;">Enter Email Id.</span>	
						
                                </div>
                                <div class="form-group">
                                    <label>Password: </label>
                                    <input type="password" onblur="passwordRequired()" class="form-control" placeholder="Password" name="userpassword" id="psw" required><br><br>
                                    
						<span id="pswError" style="display: none;color:red;font-size: 14px; font-family: sans-serif;">Enter Password.</span>	
                                </div>
                                <div class="checkbox">
                                    <label>
										<input type="checkbox"> Remember Me
									</label>
                                    <label class="pull-right">
										<a href="forgetpassword.jsp"  style="border:threedhighlight; margin-left: 450px;">Forgotten Password?</a>
									</label><br>
 
                                </div>
                                <button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30" style="border:threedhighlight; margin-left: 280px;">Sign in</button><br><br>
                               <%--<div class="social-login-content">
                                    <div class="social-button">
                                        <button type="button" class="btn btn-primary bg-facebook btn-flat btn-addon m-b-10"><i class="ti-facebook"></i>Sign in with facebook</button>
                                        <button type="button" class="btn btn-primary bg-twitter btn-flat btn-addon m-t-10"><i class="ti-twitter"></i>Sign in with twitter</button>
                                    </div>
                                </div> --%> 
                                <div class="register-link m-t-15 text-center">
                                    <p>Don't have account ? <a href="#"> Sign Up Here</a></p>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
<script>
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
</script>
</html>
<!-- Content Wrapper. Contains page content -->
<!--  <div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<!--  <section class="content-header">
		<div class="container-fluid border mt-5">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>Login Form</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active">Login Form</li>
					</ol>
				</div>
			</div>
		</div>
		<!-- /.container-fluid -->
<!-- 	</section>

	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<!-- left column -->
			<!-- 	<div class="col-md-6">
					<!-- general form elements -->
			<!-- 		<div class="card card-primary">
						<div class="card-header">
							<h3 class="card-title">Login Form</h3>
						</div>
						<!-- /.card-header -->
						<!-- form start -->
					<!-- 	<form>
						 <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required><br><br>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required><br><br>

    <button type="submit">Login</button>
	<button type="button" class="cancelbtn">Cancel</button><br><br>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label><br><br>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>    -->

<%@ include file="footer.jsp"%>