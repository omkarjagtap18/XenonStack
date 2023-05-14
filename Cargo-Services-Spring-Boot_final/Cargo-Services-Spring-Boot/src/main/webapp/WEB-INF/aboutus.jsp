<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<jsp:include page="cache_control.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About us</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
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
<body
style="background-image: url('https://images.pexels.com/photos/19670/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'); background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">
    <jsp:include page="header.jsp"/>
	<section class="py-5">
		<div class="container">
			<!-- FOR DEMO PURPOSE -->
			<div class="row">
				<div class="col-lg-6 mx-auto">
					<header class="text-center pb-5">
						<h1 class="h2">About Us </h1>
						<br>
						<p class="mb-0 mt-2 font-italic"
							style="font-size: 18px; font-weight: 500;"><span class="para"></span> </p>
					</header>
				</div>
			</div>
			<!-- END -->


			<div class="row">
				<div class="col-lg-6 mx-auto">

					<!-- CUSTOM BLOCKQUOTE -->
					<blockquote
						class="blockquote blockquote-custom bg-white p-5 shadow rounded">
						<div class="blockquote-custom-icon bg-info shadow-sm">
							<i class="fa fa-quote-left text-white"></i>
						</div>
						<img
							src="https://bookboon.com/blog/wp-content/uploads/sites/5/2016/04/leadership-models-ebook-bookboon-bl.jpg"
							class="img-fluid" alt="..." style="height: 250px; width: 100%"><br>
						<br>
						<h3>Our commitment</h3>

						<p class="mb-0 mt-2 font-italic">"We are a dedicated group of
							professionals, committed to delivering value for you. You will
							get what we have promised you. We don't make false promises and
							don't hide anything from you. When we make the commitment, you
							will get the delivery no excuses."</p>

					</blockquote>
					<!-- END -->

				</div>
				<div class="col-lg-6 mx-auto">

					<!-- CUSTOM BLOCKQUOTE -->
					<blockquote
						class="blockquote blockquote-custom bg-white p-5 shadow rounded">
						<div class="blockquote-custom-icon bg-info shadow-sm">
							<i class="fa fa-quote-left text-white"></i>
						</div>
						<img src="https://careernursing.org/uploads/vision.jpg"
							class="img-fluid" alt="..." style="height: 250px; width: 100%"><br>
						<br>
						<h3>Our Vision</h3>

						<p class="mb-0 mt-2 font-italic">"To stay ahead among our
							rivals in the transport and logistics industry by providing
							world-class and innovative moving solutions to our clients. We
							wish to become the top choice of our customers when they are
							looking for a reliable, affordable and professional transporter."
						</p>

					</blockquote>
					<!-- END -->

				</div>

				<div class="col-lg-6 mx-auto">

					<!-- CUSTOM BLOCKQUOTE -->
					<blockquote
						class="blockquote blockquote-custom bg-white p-5 shadow rounded">
						<div class="blockquote-custom-icon bg-info shadow-sm">
							<i class="fa fa-quote-left text-white"></i>
						</div>
						<img
							src="https://www.bajajmachines.com/wp-content/uploads/2021/07/mission.jpg"
							class="img-fluid" alt="..." style="height: 250px; width: 100%"><br>
						<br>
						<h3>Our Mission</h3>

						<p class="mb-0 mt-2 font-italic">"Stay responsive to
							consumers' requirement, find innovative and flexible solutions
							and strive to achieve customer satisfaction with our performance,
							honesty, and integrity. We aim to achieve our esteemed patrons'
							trust and develop a lasting relationship with them."</p>

					</blockquote>
					<!-- END -->

				</div>

				<div class="col-lg-6 mx-auto">

					<!-- CUSTOM BLOCKQUOTE -->
					<blockquote
						class="blockquote blockquote-custom bg-white p-5 shadow rounded">
						<div class="blockquote-custom-icon bg-info shadow-sm">
							<i class="fa fa-quote-left text-white"></i>
						</div>
						<img
							src="https://www.salesforce.com/blog/wp-content/uploads/sites/2/2021/03/improve-team-efficiency-productivity-header.jpg"
							class="img-fluid" alt="..." style="height: 250px; width: 100%"><br>
						<br>
						<h3>Our Team</h3>

						<p class="mb-0 mt-2 font-italic">"Our team is made up of
							highly skilled and experienced professionals who are passionate
							about what they do. We work together as a team to deliver the
							best results for our customers. "</p>
						<br> <br>

					</blockquote>
					<!-- END -->

				</div>
			</div>

		</div>
	</section>
	<jsp:include page="footer.jsp"/>
<script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.12"></script>
<script>
    var typed=new Typed(".para",{
        strings:["Welcome to our website! We are a company that specializes in providing high-quality products and services to our customers. Our team is dedicated to delivering the best experience possible, and we are always looking for ways to improve and innovate."],
	
        typeSpeed:70,
        
       
        })
</script>

</body>
</html>