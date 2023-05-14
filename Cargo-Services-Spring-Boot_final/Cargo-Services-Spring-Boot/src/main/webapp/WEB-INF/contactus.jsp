
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="cache_control.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script type="text/javascript">
$(document).ready(function () {

    $("#qry_form").submit(function (event) {
        //event.preventDefault();

        var qry = {}
        
        qry["name"] = $("#name").val();
        qry["subject"] = $("#subject").val();
        qry["email"] = $("#email").val();
        qry["msg"] = $("#msg").val();
       
     

        $("#bth_submit").prop("disabled", true);

        $.ajax({
            
            type: "POST",
            contentType: "application/json",
            url: "http://localhost:8080/addqry",
            data: JSON.stringify(qry),
            dataType: 'json',
            cache: false,
            timeout: 600000,
            success: function (data) {
					
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

</script> 
</head>
<body
style="background-image: url('https://images.pexels.com/photos/19670/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'); background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">
<jsp:include page="header.jsp"/>
<div class = "container min-vh-100 d-flex justify-content-center align-items-center">

<form id="qry_form">
  <!-- Name input -->
  <h1 style="margin-bottom:15px">Contact us</h1>
  
  <div class="form-outline mb-4">
    
    <input type="text" style="border:1px solid black;width:250px;border-radius:7px" id="name" name="name" placeholder="Enter Your Name..."/>
  </div>
  <div class="form-outline mb-4">
    
   
    <input type="text" style="border:1px solid black; width:250px;border-radius:7px" id="subject" name="subject" placeholder="Enter Your Subject..."/>
  </div>

  <div class="form-outline mb-4">
 
    <input type="email" style="border:1px solid black;width:250px;border-radius:7px" id="email" name="email" placeholder="Enter Your Email..."/>
  </div>

  <div class="form-outline mb-4">
    
	  <label id="label-1">Message:</label>
    <textarea class="form-control" style="border:1px solid black;width:250px;border-radius:7px" id="msg" name="msg" rows="4" ></textarea>
  </div>

  <button type="submit" value="submit" class="btn btn-primary btn-block mb-4" id="bth_submit">Send</button>
</form>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>