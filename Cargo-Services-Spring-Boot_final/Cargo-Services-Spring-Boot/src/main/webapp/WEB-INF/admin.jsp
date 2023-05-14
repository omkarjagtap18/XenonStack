<%@page import="com.sou.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="cache_control.jsp"/>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<style>
.card{

margin-bottom:5vh;
margin-top:5vh;
}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body style="background-color: #ecf9ff">
<jsp:include page="header.jsp"/>
<div >
<h2><u> PRODUCT DETAILS</u></h2>
 <div class="row">
 <c:if test="${products.size()==0}">
 
 <div style="height: 20vh; margin-top: 20px">
 <h3 style="opacity: 0.5">NOT AVAILABLE</h3>
 </div>
 </c:if >
     <c:forEach items="${products}" var="product">
   
  		<div class="col-sm-3">
             <div class="card" style="width: 18rem;">
             	<img src="https://thumbs.dreamstime.com/b/delivery-man-blue-uniform-handing-parcel-box-to-recipient-courier-service-concept-84275323.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                	<h5 class="card-title">Source:${product.source}</h5>
                	<h5 class="card-title">Destination:${product.destination}</h5>
                	<h5 class="card-title"> Goods Type:${product.goodstype}</h5>
                	<h5 class="card-title"> Truck Type:${product.trucktype}</h5>
               		<h5 class="card-title">Booking Date:${product.bookingdate}</h5>
               		<a href="/admin_delete_product?id=${product.id}" class="btn btn-primary">Delete Product</a>
               		
           		</div>
            </div>
         </div>
	</c:forEach>
</div>
 </div>
<div >
<hr>
<h2><u>CUSTOMER DETAILS</u></h2>

 <div class="row">
 <c:if test="${customers.size()==0}">
 
 <div style="height: 20vh; margin-top: 20px">
 <h3 style="opacity: 0.5">NOT AVAILABLE</h3>
 </div>
 </c:if >
     <c:forEach items="${customers}" var="customer">
  		<div class="col-sm-3">
             <div class="card" style="width: 18rem;">
             	<img src="https://www.pngplay.com/wp-content/uploads/7/Customer-Logo-Transparent-File.png" class="card-img-top" alt="...">
                <div class="card-body">
                	<h5 class="card-title">First Name:${customer.fname}</h5>
                	<h5 class="card-title">Last Name:${customer.lname}</h5>
                	<h5 class="card-title">Address:${customer.curaddress}</h5>
               		<h5 class="card-title">Mobile No.:${customer.mobileno}</h5>
               		<a href="/admin_delete_customer?id=${customer.id}" class="btn btn-primary">Delete Customer</a>
               		
           		</div>
            </div>
         </div>
	</c:forEach>
</div>
 </div>
 <hr>
 <h2><u>Order Details</u></h2>
 <div class="row">
 <c:if test="${orders.size()==0}">
 
 <div style="height: 20vh; margin-top: 20px">
 <h3 style="opacity: 0.5">NOT AVAILABLE</h3>
 </div>
 </c:if >
     <c:forEach items="${orders}" var="order">
  		<div class="col-sm-3">
             <div class="card" style="width: 18rem;">
             	<img src="https://prod4-sprcdn-assets.sprinklr.com/200052/4c9025d6-2514-4045-9fd9-a9589ac70c5d-258997166/svgviewer-png-output_(6).png" class="card-img-top" alt="...">
                <div class="card-body">
                	<h5 class="card-title">Goods Type:${order.goodstype}</h5>
                	<h5 class="card-title">Customer Name:${order.fname}</h5>
                	<h5 class="card-title">Price: ${order.price}rs.</h5>
           		</div>
            </div>
         </div>
	</c:forEach>
</div>
 </div>
<jsp:include page="footer.jsp"/>
</body>
</html>