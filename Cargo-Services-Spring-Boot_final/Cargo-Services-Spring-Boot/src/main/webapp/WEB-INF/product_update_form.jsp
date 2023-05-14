<%@page import="com.sou.service.ProductServiceImpl"%>
<%@page import="com.sou.model.Product"%>
<%@page import="java.util.List"%>
<jsp:include page="cache_control.jsp"/>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Form</title>
    <link rel="stylesheet" href="ProductFormStyle.css">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://unpkg.com/gijgo@1.9.14/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.14/css/gijgo.min.css" rel="stylesheet" type="text/css" />
    <link
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
  rel="stylesheet"
/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link
  href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
  rel="stylesheet"
/>
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.0.1/mdb.min.css"
  rel="stylesheet"
/>
	<script type="text/javascript" src="webjars/jquery/2.2.4/jquery.min.js" ></script>
<script type="text/javascript">
</script>

<script type="text/javascript" src="webjars/jquery/2.2.4/jquery.min.js" ></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script
  type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.0.1/mdb.min.js"
></script>

<style>
.container1{
    align-items: center;
    background: rgba(0, 0, 0, 0.2);
    color: black;
    border: 3px solid rgb(255, 255, 255);
    border-radius: 7px;
    width: 30%;
    height: 85%;
    padding: 20px;
    background-color: white;
    margin-left: 60%;
    margin-top: 15px;
    margin-bottom: 15px;
    border: 1px solid;
}
</style>
<script
  type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.0.1/mdb.min.js"
></script>
	<script type="text/javascript" src="webjars/jquery/2.2.4/jquery.min.js" ></script>
	  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
   
    <script src="https://unpkg.com/gijgo@1.9.14/js/gijgo.min.js" type="text/javascript"></script>
</head>
<body
	style="background-image: url('https://thumbs.dreamstime.com/b/caravan-trucks-cargo-transportation-concept-23576201.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">
<jsp:include page="header.jsp"/>

<spr:form action="productupdate" method="post" class="container1" id="product_form" modelAttribute="product">
            <div class="formnew">
            <h1>Update Booking Form</h1>
            <div class="input">
            <div class="inputBoxNew">
            <spr:input type="hidden" id="id" path="id"/>
            <spr:label path="source">Source</spr:label>
 			<spr:select class="form-control" name="source" id="source" path="source" required="required">
                  <spr:option name="source"  value="">Select Option</spr:option>
                  <spr:option name="source" path="source" value="Ahmedabad">Ahmedabad</spr:option>
                  <spr:option name="source" path="source" value="Bangalore">Bangalore</spr:option>
                  <spr:option name="source" path="source" value="Chennai">Chennai</spr:option>
                  <spr:option name="source" path="source" value="Delhi">Delhi</spr:option>             
                  <spr:option name="source" path="source" value="Hyderabad">Hyderabad</spr:option>             
                  <spr:option name="source" path="source" value="Jaipur">Jaipur</spr:option>             
                  <spr:option name="source" path="source" value="Kolkata">Kolkata</spr:option>             
                  <spr:option name="source" path="source" value="Mumbai">Mumbai</spr:option>             
                  <spr:option name="source" path="source" value="Pune">Pune</spr:option>             
                </spr:select>            
                
                <spr:label path="destination">Destination</spr:label>
                <spr:select class="form-control"  name="destination" id="destination" path="destination" required="required">
                  <spr:option name="destination"  value="">Select Option</spr:option>
                  <spr:option name="destination" value="Ahmedabad">Ahmedabad</spr:option>
                  <spr:option name="destination" value="Bangalore">Bangalore</spr:option>
                  <spr:option name="destination" value="Chennai">Chennai</spr:option>
                  <spr:option name="destination" value="Delhi">Delhi</spr:option>             
                  <spr:option name="destination" value="Hyderabad">Hyderabad</spr:option>             
                  <spr:option name="destination" value="Jaipur">Jaipur</spr:option>             
                  <spr:option name="destination" value="Kolkata">Kolkata</spr:option>             
                  <spr:option name="destination" value="Mumbai">Mumbai</spr:option>             
                  <spr:option name="destination" value="Pune">Pune</spr:option>             
                </spr:select> 
            </div>
            
              <div class="inputBoxNew">
                <spr:label path="trucktype">Truck Type</spr:label>
                <spr:select class="form-control" name="trucktype" id="trucktype" path="trucktype" required="required">
                  <spr:option name="trucktype"  value="">Select Option</spr:option>
                  <spr:option name="trucktype" value="ACE / DOST / PICKUP (1.5 TON)">ACE / DOST / PICKUP (1.5 TON)</spr:option>
                  <spr:option name="trucktype" value="TATA 407 / EICHER 14FT (4 TON)">TATA 407 / EICHER 14FT (4 TON)</spr:option>
                  <spr:option name="trucktype" value="32FT CONTAINER (7 TON)">32FT CONTAINER (7 TON)</spr:option>
                  <spr:option name="trucktype" value="TATA TRUCK (10 TON)">TATA TRUCK (10 TON)</spr:option>             
                </spr:select>
              </div>
              <div class="inputBoxNew">
                <spr:label path="goodstype">Goods Type</spr:label>
                <spr:select class="form-control" name="goodstype" id="goodstype" path="goodstype" required="required">
                  <spr:option name="goodstype" value="">Select Option</spr:option>
                  <spr:option name="goodstype" value="Industrial Machinery">Industrial Machinery</spr:option>
                  <spr:option name="goodstype" value="Household Goods">Household Goods</spr:option>
                  <spr:option name="goodstype" value="Textile / Garments">Textile / Garments</spr:option>
                  <spr:option name="goodstype" value="Scrap">Scrap</spr:option>
                  <spr:option name="goodstype" value="Others">Others</spr:option>
                </spr:select>
              </div>
            
               <div class="inputBoxNew ">
              <spr:label path="bookingdate">Booking Date</spr:label>
			   <spr:input id="datepicker" path="bookingdate" width="276" data-date-end-date="1d" required="required"/>
			    <script>
			        $('#datepicker').datepicker({
			            uiLibrary: 'bootstrap4',
			            
			            format:'yyyy-mm-dd',			           
			            minDate: new Date()
			            	  
			        });
			    </script>
              </div>
            
              <spr:input type="hidden" id="uid" path="uid" />
              
  
              <div class="inputBoxNew">
                <spr:button type="submit" value="submit" id="bth_submit" style="background-color: #2d545e; margin-top:10px;margin-bottom:20px;">Update Product</spr:button>
              </div>
            </div>
          </div>
          </spr:form>
          <div >
   <jsp:include page="footer.jsp"/>
</body>
</html>