<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="cache_control.jsp"/>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<spr:form id="form-1" modelAttribute="orderd" action="update_order" method="post">
	
		
		<spr:input type="hidden" path="oid"/>
		<spr:input type="hidden" path="pid"/>
		
		<spr:input type="hidden" path="cid"/>
		Goods Type:
		<spr:input type="text" path="goodstype" />	
		Customer Name:
		<spr:input type="text" path="fname"/>
		Pay RS.:
		<spr:input type="text" path="price" />
		
		<button type="submit" >Pay</button>
		
		
	</spr:form>
</body>
</html>