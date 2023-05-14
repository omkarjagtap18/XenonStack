<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="cache_control.jsp"/>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="driver_registration.css">
<meta charset="ISO-8859-1">
<title>Log in </title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
  rel="stylesheet"
/>
<link
  href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
  rel="stylesheet"
/>
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.0.1/mdb.min.css"
  rel="stylesheet"
/>
<script
  type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.0.1/mdb.min.js"
></script>
</head>
<body>
    <jsp:include page="header.jsp"/>
	<form action="logincheck" method="get">
		<section class="h-100 bg-dark">
 			<div class="container py-5 h-100">
    			
    			<div class="row d-flex justify-content-center align-items-center h-100">
      				<div class="col">
        				<div class="card card-registration my-4">
        				
          					<div class="row g-0">
            					<div class="col-xl-6 d-none d-xl-block">
              						<img src="https://media.istockphoto.com/id/1368308150/photo/red-big-rig-bonnet-semi-truck-with-dry-van-semi-trailer-running-on-the-wide-highway-road-at.jpg?b=1&s=170667a&w=0&k=20&c=XZUudMyK6S6oT_L1VWFO2qcWoethZNhkMcWdghHt2no=" alt="Sample photo" class="img-fluid" style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;height: 100%" />
            					</div>
            					
            				<div class="col-xl-6">
              					<div class="card-body p-md-5 text-black">
               						<h3 class="mb-5 text-uppercase" style="text-align: center;">Login Form</h3>
                			
                					<div class="form-outline mb-4">
                						<label class="form-label" for="form3Example97">Email ID</label><label style="color: red;"><b>*</b></label>
                  						<input type="text" id="email" class="form-control form-control-lg" name="email" placeholder="Enter Email ID" required="required" style="border:1px solid black;"/>
                					</div>

                					<div class="form-outline mb-4">
                						<label class="form-label" for="form3Example90">Password</label><label style="color: red;"><b>*</b></label>
                  						<input type="password" id="password" class="form-control form-control-lg" name="password" placeholder="Enter Password" required="required" style="border:1px solid black;"/>
                					</div>
                					<div class="pt-1 mb-4">
                    					<button class="btn btn-dark btn-lg btn-block" type="submit">Login</button>
                  					</div>
                					<p class="mb-5 pb-lg-2" style="color: #393f81;">Don't have an account? <a href="/registration"
                      				style="color: #393f81;">Register here</a></p>
                				</div>
            				</div>
          					</div>
        				</div>
      				</div>
    			</div>
  			</div>
		</section>
	</form>
	<jsp:include page="footer.jsp"/>
</body>
</html>