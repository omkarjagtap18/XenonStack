<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="cache_control.jsp"/>
<head>
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
</head>
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #0005" >
  <div class="container-fluid">
    <button
      class="navbar-toggler"
      type="button"
      data-mdb-toggle="collapse"
      data-mdb-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent"
      aria-expanded="false"
      aria-label="Toggle navigation"
    >
      <i class="fas fa-bars"></i>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <a class="navbar-brand mt-2 mt-lg-0" href="/home">
        <img
          src="https://upload.wikimedia.org/wikipedia/commons/f/f4/BMW_logo_%28gray%29.svg"
          height="60"
          alt="MDB Logo"
          loading="lazy"
        />
      </a>
      
      <ul class="navbar-nav me-auto mb-2 mb-lg-0" style="font-weight: 600" >
        <li class="nav-item">
          <a class="nav-link" href="/home">Home</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="/addproduct">Book Now</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/orders">Orders</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/qry_add_form">Contact Us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/about_us">About Us</a>
        </li>
      </ul>
    </div>

<% if(session.getAttribute("id")==null) {%>
    <div class="d-flex align-items-center" style="font-weight: 600;">
      
      <div class="dropdown" style= "margin-right:20px;">
        <a
          class="dropdown-toggle d-flex align-items-center hidden-arrow"
          href="#"
          id="navbarDropdownMenuAvatar"
          role="button"
          data-mdb-toggle="dropdown"
          aria-expanded="false"
          style="color: black;font-weight: 600"
        >
      	Login
        </a>
        <ul
          class="dropdown-menu dropdown-menu-end"
          aria-labelledby="navbarDropdownMenuAvatar"
        >
          <li>
            <a class="dropdown-item" href="/customer_login">Log in as Customer</a>
          </li>
          <li>
            <a class="dropdown-item" href="/admin_login">Log in as Admin</a>
          </li>
         
        </ul>
      </div>
      <div class="dropdown" style= "margin-right:20px">
        <a
          class="dropdown-toggle d-flex align-items-center hidden-arrow"
          href="#"
          id="navbarDropdownMenuAvatar"
          role="button"
          data-mdb-toggle="dropdown"
          aria-expanded="false"
          style="color: black"
        >
      	Signup
        </a>
        <ul
          class="dropdown-menu dropdown-menu-end"
          aria-labelledby="navbarDropdownMenuAvatar"
        >
          <li>
            <a class="dropdown-item" href="/registration">Signup as Customer</a>
          </li>
         
        </ul>
        
      </div>
   <%} else{%>
   
      <a Style=color:black href="/logout">Logout</a>
      
      <%} %>
      
    </div>
    <!-- Right elements -->
  </div>
  <!-- Container wrapper -->
</nav>