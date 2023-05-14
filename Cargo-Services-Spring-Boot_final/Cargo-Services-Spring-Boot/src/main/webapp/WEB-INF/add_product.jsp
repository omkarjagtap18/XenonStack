<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="cache_control.jsp"/>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Add Form</title>
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
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://unpkg.com/gijgo@1.9.14/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.14/css/gijgo.min.css" rel="stylesheet" type="text/css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>
.container1{
    align-items: center;
    background: rgba(0, 0, 0, 0.2);
    color: black;
    border: 3px solid rgb(255, 255, 255);
    border-radius: 7px;
    height: 90%;
    padding: 20px;
    background-color: white;
    margin-top: 15px;
    width:40%;
    margin-bottom: 15px;
    margin-left:10px;
    border: 1px solid;
}

.card{

margin-bottom:5vh;
margin-top:5vh;
}

</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script
  type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.0.1/mdb.min.js"
></script>
	<script type="text/javascript" src="webjars/jquery/2.2.4/jquery.min.js" ></script>
	  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
   
    <script src="https://unpkg.com/gijgo@1.9.14/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.14/css/gijgo.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">

$(document).ready(function () {

    $("#product_form").submit(function (event) {
        //event.preventDefault();

        var product = {}
        
        product["source"] = $("#source").val();
        product["destination"] = $("#destination").val();
        product["trucktype"] = $("#trucktype").val();
        product["goodstype"] = $("#goodstype").val();
        product["bookingdate"] = $("#datepicker").val();
        product["uid"] = $("#uid").val();
     

        $("#bth_submit").prop("disabled", true);

        $.ajax({
            
            type: "POST",
            contentType: "application/json",
            url: "http://localhost:8080/product_add_form",
            data: JSON.stringify(product),
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
	style="background-image: -webkit-linear-gradient(15deg, white 60%, rgb(248, 248, 249) 50%);" background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">
     <jsp:include page="header.jsp"/>
     <div style="margin-left: 20px;">
      <form class="container1" id="product_form">
            <div class="formnew">
            <h1>Booking</h1>
            <div class="input">
            <div class="inputBoxNew">
            <label for="source">Source</label>
 			<select class="form-control" name="source" id="source" required>
                  <option name="source"  value="">Select Option</option>
                  <option name="source" value="Ahmedabad">Ahmedabad</option>
                  <option name="source" value="Bangalore">Bangalore</option>
                  <option name="source" value="Chennai">Chennai</option>
                  <option name="source" value="Delhi">Delhi</option>             
                  <option name="source" value="Hyderabad">Hyderabad</option>             
                  <option name="source" value="Jaipur">Jaipur</option>             
                  <option name="source" value="Kolkata">Kolkata</option>             
                  <option name="source" value="Mumbai">Mumbai</option>             
                  <option name="source" value="Pune">Pune</option>             
                </select>            
                
                <label for="destination">Destination</label>
                <select class="form-control"  name="destination" id="destination" required>
                  <option name="destination"  value="">Select Option</option>
                  <option name="destination" value="Ahmedabad">Ahmedabad</option>
                  <option name="destination" value="Bangalore">Bangalore</option>
                  <option name="destination" value="Chennai">Chennai</option>
                  <option name="destination" value="Delhi">Delhi</option>             
                  <option name="destination" value="Hyderabad">Hyderabad</option>             
                  <option name="destination" value="Jaipur">Jaipur</option>             
                  <option name="destination" value="Kolkata">Kolkata</option>             
                  <option name="destination" value="Mumbai">Mumbai</option>             
                  <option name="destination" value="Pune">Pune</option>             
                </select> 
            </div>
            
              <div class="inputBoxNew">
                <label for="trucktype">Truck Type</label>
                <select class="form-control" name="trucktype" id="trucktype" required>
                  <option name="trucktype"  value="">Select Option</option>
                  <option name="trucktype" value="ACE / DOST / PICKUP (1.5 TON)">ACE / DOST / PICKUP (1.5 TON)</option>
                  <option name="trucktype" value="TATA 407 / EICHER 14FT (4 TON)">TATA 407 / EICHER 14FT (4 TON)</option>
                  <option name="trucktype" value="32FT CONTAINER (7 TON)">32FT CONTAINER (7 TON)</option>
                  <option name="trucktype" value="TATA TRUCK (10 TON)">TATA TRUCK (10 TON)</option>             
                </select>
              </div>
              <div class="inputBoxNew">
                <label for="goodstype">Goods Type</label>
                <select class="form-control" name="goodstype" id="goodstype" required>
                  <option name="goodstype" value="">Select Option</option>
                  <option name="goodstype" value="Industrial Machinery">Industrial Machinery</option>
                  <option name="goodstype" value="Household Goods">Household Goods</option>
                  <option name="goodstype" value="Textile / Garments">Textile / Garments</option>
                  <option name="goodstype" value="Scrap">Scrap</option>
                  <option name="goodstype" value="Others">Others</option>
                </select>
              </div>
            
               <div class="inputBoxNew ">
              <label for="bookingdate">Booking Date</label>
			   <input id="datepicker" width="276" data-date-end-date="1d" required/>
			    <script>
			        $('#datepicker').datepicker({
			            uiLibrary: 'bootstrap4',
			            
			            format:'yyyy-mm-dd',			           
			            minDate: new Date()
			            	  
			        });
			    </script>
              </div>
            <input type="hidden" id="uid" value=<%=session.getAttribute("id") %>>
  
              <div class="inputBoxNew">
                <button type="submit" value="submit" id="bth_submit" style="background-color: #2d545e; margin-top:10px;margin-bottom:20px;">Add Product</button>
              </div>
            </div>
          </div>
          </form>
          
          
          <div >
 <div class="row" >
     <c:forEach items="${products}" var="product">
  		<div class="col-sm-3">
             <div class="card" style="width: 23rem;min-height: 30rem">
             	<img src="https://thumbs.dreamstime.com/b/delivery-man-blue-uniform-handing-parcel-box-to-recipient-courier-service-concept-84275323.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                	<h5 class="card-title">Source:${product.source}</h5>
                	<h5 class="card-title">Destination:${product.destination}</h5>
                	<h5 class="card-title"> Goods Type:${product.goodstype}</h5>
                	<h5 class="card-title"> Truck Type:${product.trucktype}</h5>
               		<h5 class="card-title">Booking Date:${product.bookingdate}</h5>
               		<a href="/deleteproduct?id=${product.id}" class="btn btn-primary">Delete</a>
               		<a href="/product_update_form?id=${product.id}" class="btn btn-primary">Update</a>
               		<a href="/paynow?id=${product.id}" class="btn btn-primary">Pay Now</a>
           		</div>
            </div>
         </div>
	</c:forEach>
</div>
 </div>
          
  </div>        
          
          
          <jsp:include page="footer.jsp"/>
</body>
</html>