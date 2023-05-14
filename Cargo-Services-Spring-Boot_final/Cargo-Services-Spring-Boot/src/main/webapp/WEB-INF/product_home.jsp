<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="cache_control.jsp"/>
   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
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
<style>
.cards1{
   display:flex;
   flex-direction: row;
   justify-content: space-around;
   margin-top: 10px;
   margin-bottom: 10px;
}
.chover:hover{
transform: scale(1.01);
box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
}
</style>
<script
  type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.0.1/mdb.min.js"
></script>
</head>
<body
style="background-image: -webkit-linear-gradient(15deg, white 60%, rgb(248, 248, 249) 50%);" background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">
<jsp:include page="header.jsp"/>

<!-- Carousel wrapper -->
<div id="carouselDarkVariant" class="carousel slide carousel-fade carousel-dark" data-mdb-ride="carousel" >
  <!-- Indicators -->
  <div class="carousel-indicators">
    <button
      data-mdb-target="#carouselDarkVariant"
      data-mdb-slide-to="0"
      class="active"
      aria-current="true"
      aria-label="Slide 1"
    ></button>
    <button
      data-mdb-target="#carouselDarkVariant"
      data-mdb-slide-to="1"
      aria-label="Slide 1"
    ></button>
    <button
      data-mdb-target="#carouselDarkVariant"
      data-mdb-slide-to="2"
      aria-label="Slide 1"
    ></button>
  </div>

  <!-- Inner -->
  <div class="carousel-inner" style="margin-top: 8px;">
    <!-- Single item -->
    <div class="carousel-item active">
      <img height="500px" src="https://images8.alphacoders.com/568/568490.jpg" class="d-block w-100" alt="Motorbike Smoke"/>
      <div class="carousel-caption d-none d-md-block" style=color:white;>
        <h5>Rich industry experience</h5>
        <p>We bring together years of diverse experience in the transport industry. As the best online transport booking company,</p>
      </div>
    </div>

    <!-- Single item -->
    <div class="carousel-item">
      <img height="500px" width="100%" src="https://2.bp.blogspot.com/-p0ivYlvT6-o/WlTkSZ8cmKI/AAAAAAAAB54/jOgzxYWFWv0VHOJ1U6LUt1Jdxq9qA1MkQCLcBGAs/s1600/18139.jpg" alt="Mountaintop"/>
      <div class="carousel-caption d-none d-md-block" style=color:white;>
        <h5>Advanced technology</h5>
        <p>Our adoption of technology, proven expertise and a huge network of fleet owners and drivers helps us to serve you anywhere, anytime across any part of the country.</p>
      </div>
    </div>

    <!-- Single item -->
    <div class="carousel-item">
      <img height="500px" src="https://1.bp.blogspot.com/-J38q7GOjm-M/WlTkSlYKYiI/AAAAAAAAB58/DV2MXBdIUzc0dazs8M5I6zGGuDol6jL8QCLcBGAs/s1600/hd_96e9a361b0ffe42542346b48dd73af83.jpg" class="d-block w-100" alt="Woman Reading a Book"/>
      <div class="carousel-caption d-none d-md-block" style=color:white;>
        <h5>Hassle-free services</h5>
        <p>We provide hassle-free shipping and flawless logistics solutions for all your Transport needs, whether small or big, to all parts across the country.</p>
      </div>
    </div>
  </div>
  <!-- Inner -->

  <!-- Controls -->
  <button class="carousel-control-prev" type="button" data-mdb-target="#carouselDarkVariant" data-mdb-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-mdb-target="#carouselDarkVariant" data-mdb-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<section>
<div>

<p>   
<h1 style="margin-left: 25px;color:black;font-weight: 100"> Car Renting Services is most reliable, dedicated and expert online Transport logistics services partner!</h1></p>
<br>
<p style="margin-left: 25px;color:black;"> Our company is equipped with advanced equipment, modern tools, and expertise that enable us to help our consumers with crucial transportation and supply chain solutions. We ensure businesses that they will get excellent-quality, prompt, and secure transportation services irrespective of time-constraint, the heavy load issue, and any other related problem.

Being the prime logistics services provider, we believe that people, technology, infrastructure and expertise all work together to help businesses to succeed and henceforth, we are offering the right blend of all these.</p>


</div>

</section>
<h2 style="margin-left: 15px;margin-bottom: 20px;">We Provide Services like <span class="dyntyped"></span></h2>
<div class="cards1">
    <div class="card chover" style="width: 18rem;background-color: #e1b382">
  <img class="card-img-top" src="data:image/jpeg;base64,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" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Household Item Transportation</h5>
    <p class="card-text">Packing & Moving across your city Is Now a breeze. Verified drivers, Transparent prices.</p>
    <a href="/registration" class="btn" style="background-color: #2d545e;color:white">Sign up Today</a>
  </div>
</div>
<div class="card chover" style="width: 18rem; background-color: #e1b382">
  <img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSy_2V4VyBNcBhitZM1idKJVqsDprJTpAElDQ&usqp=CAU" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Heavy Machinery Parts</h5>
    <p class="card-text">Get Details of Heavy Machinery Parts transporter,our services provide you help to supply and manage the whole thing</p>
    <a href="/registration" class="btn" style="background-color: #2d545e;color:white">Sign up Today</a>
  </div>
</div>
<div class="card chover" style="width: 18rem;background-color: #e1b382">
  <img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMPIPaast-YXkK1fHZVPXpVxQHXYL_Lq1ai2Ofrn1nPg&s" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Fertilizer Transportation</h5>
    <p class="card-text">Fertilizer is produced and transported year-round to meet  farmers' needs for crop nutrients.Fertilizer's journey from production </p>
    <a href="/registration" class="btn" style="background-color: #2d545e;color:white">Sign up Today</a>
  </div>
</div>
<div class="card chover" style="width: 18rem;background-color: #e1b382">
  <img class="card-img-top" src="data:image/jpeg;base64,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" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">On Demand Services</h5>
    <p class="card-text">Demand-Responsive Transport (DRT), Microtransit or On-Demand transport (ODT) has taken on many forms over the years</p>
    <a href="/registration" class="btn" style="background-color: #2d545e;color:white">Sign up Today</a>
  </div>
</div>
</div>


<jsp:include page="footer.jsp"/>
<script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.12"></script>
<script>
    var typed=new Typed(".dyntyped",{
        strings:["HouseHold Item Transportation","Heavy Machinery Parts","Fertlizer transportation","On Demand Services"],
        typeSpeed:50,
        backSpeed:50,
        loop:true
        })
</script>
</body>
</html>