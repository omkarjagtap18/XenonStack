<%@page import="com.sou.model.OrderD"%>
<%@page import="com.sou.model.Product"%>
<%@page import="java.util.List"%>
<jsp:include page="cache_control.jsp"/>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
<%List<OrderD> list = (List<OrderD>)request.getAttribute("orders"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product_orders</title>
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
<% if(list.size()==0) {%>
<div style="height:60vh;margin-top: 100px;margin-left:200px;">
	<h1 style="opacity: 0.5;">NO DATA AVAILABLE... </h1>

</div>
<%} else{%>


<div style="margin-left: 20px;margin-top: 20px">
  <form action="searchbyprice" method="get">
      <input type="radio" name="searchbyorder" value="1"/>All
      <input type="radio" name="searchbyorder" value="2"/>greater than 5000rs.
      <input type="radio" name="searchbyorder" value="3"/> less than 5000rs
      <button type="submit" class="btn btn-success">Search</button>
  </form>

 <div class="row">
     <c:forEach items="${orders}" var="order">
  		<div class="col-sm-3">
             <div class="card" style="width: 18rem;">
             	<img src="https://prod4-sprcdn-assets.sprinklr.com/200052/4c9025d6-2514-4045-9fd9-a9589ac70c5d-258997166/svgviewer-png-output_(6).png" alt="...">
                <div class="card-body">
                	<h5 class="card-title">Goods Type: ${order.goodstype}</h5>
                	<h5 class="card-title">Customer Name:${order.fname}</h5>
                	<h5 class="card-title">Price:  ${order.price}rs.</h5>
                	
               		<!--  <a href="/deleteproduct?id=${product.id}" class="btn btn-primary">Cancel Order</a>-->
               		
           		</div>
            </div>
         </div>
	</c:forEach>
</div>

 </div>
<%}%>	<jsp:include page="footer.jsp"/>
</body>
</html>