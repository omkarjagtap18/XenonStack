<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<jsp:include page="cache_control.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Form</title>
<link rel="stylesheet" type="text/css" href="regi.css">
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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	
	<script type="text/javascript" src="webjars/jquery/2.2.4/jquery.min.js" ></script>
<script type="text/javascript">

$(document).ready(function () {

    $("#customer_form").submit(function (event) {
        //event.preventDefault();

        var customer = {}
        
        customer["fname"] = $("#fname").val();
        customer["lname"] = $("#lname").val();
        customer["peraddress"] = $("#peraddress").val();
        customer["curaddress"] = $("#curaddress").val();
        customer["mobileno"] = $("#mobileno").val();
        customer["custtype"] = $("#custtype").val();
        customer["email"] = $("#email").val();
        customer["password"] = $("#password").val();
        customer["conpassword"] = $("#conpassword").val();

        $("#bth_submit").prop("disabled", true);

        $.ajax({
            
            type: "POST",
            contentType: "application/json",
            url: "http://localhost:8080/customer_add_form",
            data: JSON.stringify(customer),
            dataType: 'json',
            cache: false,
            timeout: 600000,
            success: function (data) {
					consol.log()
                var json = JSON.stringify(data, null,4);
                $('#feedback').html(json);

                $("#bth_submit").prop("disabled", false);

            },
            error: function (e) {
                var json = e.responseText;
                $('#feedback').html(json);
                $("#bth_submit").prop("disabled", false);
            }
        });
    		
        
    });

});
function validate(){

    //validation for name
    var regName = /^[a-zA-Z]/;
    var name = document.getElementById('fname').value;
    if (name==null || name==""){  
        alert("Name can't be blank");  
        return false;  
        }
    else
    if(!regName.test(name)){
        alert("Name must be a character");
        return false;
    }
    var name = document.getElementById('lname').value;
    if (name==null || name==""){  
        alert("Name can't be blank");  
        return false;  
        }
    else
    if(!regName.test(name)){
        alert("Name must be a character");
        return false;
    }
    
     

    //validation for mobile number
    var num= document.getElementById("mobileno").value;
    if (num==null || num==""){  
        alert("Mobile Number can't be blank");  
        return false;  
        }
    else
    if (isNaN(num)){  
    alert("Enter Mobile Number Numeric value only");  
     return false;  
    }else
    if (num.length!=10)
    {
        alert("Mobile Number must be equal to 10");
        return false;
    }


    //validation for email    
    var x= document.getElementById("email").value;
    var atposition=x.indexOf("@");  
    var dotposition=x.lastIndexOf(".");  
    if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
    alert("Please enter a valid e-mail address");  
    return false;  
    }  

    //validation for password

    var firstpassword= document.getElementById("password").value;
    var secondpassword= document.getElementById("conpassword").value;
    
    if(firstpassword=="")
    {  
    alert("password not be empty!");  
    return false;  
    }else
    if(firstpassword.length<6)
    {
        alert("password must be atleast 6 characters");  
        return false;
    }
    else
    if(firstpassword==secondpassword){  
        alert("Signup Sucessfully...");
    return true;  
    }
    else
    {  
        alert("password must be same!");  
        return false;  
    }
}
</script>
</head>
<body>
   <jsp:include page="header.jsp"/>
  
	<form id="customer_form">

		<section class="h-100 bg-dark">
			<div class="container py-5 h-100">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col">
						<div class="card card-registration my-4">
							<div class="row g-0">
								<div class="col-xl-6 d-none d-xl-block">
									<img src="https://www.shutterstock.com/image-vector/red-delivery-van-express-services-260nw-1936091638.jpg" alt="Sample photo" class="img-fluid h-100" 
										style="border-top-left-radius: 0.25rem; border-bottom-left-radius: 0.25rem;" />
								</div>
								<div class="col-xl-6">
									<div class="card-body p-md-5 text-black">
										<h3 class="mb-5 text-uppercase">customer registration
											form</h3>

										<div class="row">
											<div class="col-md-6 mb-4">
												<div class="form-outline">
													<label class="form-label" for="fname">First
														name</label> <label style="color: red;"><b>*</b></label> <input
														name="fname" type="text" id="fname"
														class="form-control form-control-lg" required
														placeholder="Enter First name" style="border:1px solid black;"/>

												</div>
											</div>
											<div class="col-md-6 mb-4">
												<div class="form-outline">
													<label class="form-label" for="lname">Last
														name</label> <label style="color: red;"><b>*</b></label> 
														<input
														name="lname" type="text" id="lname"
														class="form-control form-control-lg" required
														placeholder="Enter Last name" style="border:1px solid black;"/>

												</div>
											</div>
										</div>


										<div class="form-outline mb-4">
											<label class="form-label" for="peraddress">Permanent
												Address</label> <label style="color: red;"><b>*</b></label> <input
												name="peraddress" type="text" id="peraddress"
												class="form-control form-control-lg" required
												placeholder="Enter Permanent Address" style="border:1px solid black;"/>

										</div>

										<div class="form-outline mb-4">
											<label class="form-label" for="curaddress">Current
												Address</label> <label style="color: red;"><b>*</b></label> 
												<input
												name="curaddress" type="text" id="curaddress"
												class="form-control form-control-lg" required
												placeholder="Enter Current Address" style="border:1px solid black;" />

										</div>

										<div class="form-outline">
											<label class="form-label" for="mobileno">Mobile
												Number</label> <label style="color: red;"><b>*</b></label> <input
												name="mobileno" type="tel" id="mobileno"
												class="form-control form-control-lg" required
												placeholder="Enter Mobile Number" style="border:1px solid black;"/>

										</div>


										<div
											class="d-md-flex justify-content-start align-items-center mb-4 py-2">

											<h6 class="mb-0 me-4">Customer Type:</h6>
											<br></br>

											<div class="form-check form-check-inline mb-0 me-4">
												<input name="custtype" class="form-check-input" type="radio"
													id="custtype" value="private" /> <label
													class="form-check-label" for="private">Private</label>
											</div>

											<div class="form-check form-check-inline mb-0 me-4">
												<input name="custtype" class="form-check-input" type="radio"
													id="custtype" value="business" /> <label
													class="form-check-label" for="business">Business</label>
											</div>



										</div>




										<div class="form-outline mb-4">
											<label class="form-label" for="form3Example97">Email
												ID</label> <label style="color: red;"><b>*</b></label> <input
												name="email" type="text" id="email"
												class="form-control form-control-lg" required
												placeholder="Enter Email ID" style="border:1px solid black;"/>

										</div>

										<div class="form-outline mb-4">
											<label for="exampleInputPassword1" class="form-label">Password</label>
											<label style="color: red;"><b>*</b></label> <input
												name="password" type="password" id="password"
												class="form-control form-control-lg" 
												placeholder="Enter Password" required style="border:1px solid black;">

										</div>
										<div class="form-outline mb-4">
											<label for="exampleInputPassword1" class="form-label">Confirm
												Password</label> <label style="color: red;"><b>*</b></label> <input
												name="conpassword" type="password"
												id="conpassword"
												class="form-control form-control-lg"
												placeholder="Enter Confirm Password" required style="border:1px solid black;">

										</div>



										<div class="d-flex justify-content-end pt-3">
											<button type="submit" class="btn btn-warning btn-lg ms-2" id="bth_submit">Submit
												form</button>
										</div>


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