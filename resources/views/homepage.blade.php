<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Cleo - Agency Landing Page Template</title>
	<link rel="icon" href="{{ asset('fassets/images/favicon.png') }}">

	<!-- font -->
	<link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
	<!-- end font -->

	<link rel="stylesheet" href="{{ asset('fassets/css/bootstrap.css') }}">
	<link rel="stylesheet" href="{{ asset('fassets/css/ionicons.min.css') }}">
	<link rel="stylesheet" href="{{ asset('fassets/css/magnific-popup.css') }}">
	<link rel="stylesheet" href="{{ asset('fassets/css/style.css') }}">
</head>
<body>

	<!-- loader -->
	<div class="fakeLoader"></div>
	<!-- end loader -->

	<!-- navbar -->
	<nav class="navbar navbar-expand-md navbar-light fixed-top">
		<div class="container">
			<a href="index.blade.php" class="navbar-brand"><img src="{{ asset('fassets/images/logo.png') }}" alt=""></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<i class="icon ion-ios-menu"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item">
						<a class="nav-link" href="#home">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#about">About</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#portfolio">Portfolio</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#services">Services</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#news">News</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#contact">Contact us</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- end navbar -->

	<!-- home intro -->
	<div id="home" class="home-intro">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="content">
						<h2><span class="color-highlight">Student Intelligence</span> Leverage and</h2>
						<h2>Data Management <span class="color-highlight">System</span></h2>
						<!--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam dicta impedit iste!</p>-->
						<ul>
							<li><a href="" class="button">Log in</a></li>
							<li><a href="" class="button button-secondary">Sign up</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="content-image">
						<img src="{{ asset('fassets/images/lecture.jpg') }}" alt="">
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end home intro -->

 
	<!-- about us -->
<!--
	<div id="about" class="about">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-md-6 col-xs-12">
					<div class="content-image">
						<img src="{{ asset('fassets/images/about-img.png') }}" alt="">
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-xs-12">
					<div class="content">
						<h3>Why Choose Us?</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet aliquid expedita repellendus a officiis ullam quas, dignissimos iure! Molestiae, asperiores.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt debitis ullam temporibus laudantium, repellendus ipsum dicta velit autem tenetur non quisquam ad cum laboriosam vero, ab voluptatem fugiat! Culpa, quam!</p>
						<ul>
							<li><span class="circle-list"></span>Complete features</li>
							<li><span class="circle-list"></span>Lorem ipsum dolor sit</li>
							<li><span class="circle-list"></span>dolore architecto officiis</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
-->
	<!-- end about us -->

	<!-- process work -->

    <div id="process-work" class="process-work section">
		<div class="container">
			<div class="section-title">
				<h5 class="title-top">Features</h5>
	<!-- 			<h3>Features</h3> -->
			</div>
			<div class="row">
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="content">
						<i class="icon ion-ios-chatboxes"></i>
						<h5>QR ID for Parent and Students</h5>
						<p>QR code printed on the ID card can be used as Login credentials by this application.</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12 align-self-end">
					<div class="content">
						<i class="icon ion-ios-cash"></i>
						<h5>E-Results</h5>
						<p>Results can be declared department-wise and can be viewed & downloaded for easier access.</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="content">
						<i class="icon ion-ios-search"></i>
						<h5>Result Analysis and Career Predictions</h5>
						<p>Results or marks obtained by the student, the result will be analysed and favourable career will be predicted.</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12 align-self-end">
					<div class="content">
						<i class="icon ion-ios-checkmark-circle"></i>
						<h5>Feedback</h5>
						<p>Feedback and suggestions given by the students will be analyzed and reports can be generated for the teachers performance.</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- end process work -->

	<!-- portfolio -->

	<div id="portfolio" class="portfolio section-bottom-only">
		<div class="container">
			<div class="section-title">
				<h5 class="title-top">Work</h5>
				<h3>Our Work Portfolio</h3>
			</div>
			<div class="row no-gutters filter-container">
				<div class="col-md-4 col-sm-6 col-xs-12 filtr-item" data-category="3">
					<div class="content-image">
						<a href="{{ asset('fassets/images/portfolio1.jpg') }}" class="portfolio-popup">
							<img src="{{ asset('fassets/images/portfolio1.jpg') }}" alt="portfolio-image">
							<div class="image-overlay"></div>
							<div class="image-caption">
								<h4>Color Wall</h4>
								<span>Branding</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12 filtr-item" data-category="1">
					<div class="content-image">
						<a href="{{ asset('fassets/images/portfolio2.jpg') }}" class="portfolio-popup">
							<img src="{{ asset('fassets/images/portfolio2.jpg') }}" alt="portfolio-image">
							<div class="image-overlay"></div>
							<div class="image-caption">
								<h4>Smooth Flower</h4>
								<span>Branding</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12 filtr-item" data-category="2">
					<div class="content-image">
						<a href="{{ asset('fassets/images/portfolio3.jpg') }}" class="portfolio-popup">
							<img src="{{ asset('fassets/images/portfolio3.jpg') }}" alt="portfolio-image">
							<div class="image-overlay"></div>
							<div class="image-caption">
								<h4>Vintage Building</h4>
								<span>Branding</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12 filtr-item" data-category="3">
					<div class="content-image">
						<a href="{{ asset('fassets/images/portfolio4.jpg') }}" class="portfolio-popup">
							<img src="{{ asset('fassets/images/portfolio4.jpg') }}" alt="portfolio-image">
							<div class="image-overlay"></div>
							<div class="image-caption">
								<h4>Theo Digital</h4>
								<span>Branding</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12 filtr-item" data-category="2">
					<div class="content-image">
						<a href="{{ asset('fassets/images/portfolio5.jpg') }}" class="portfolio-popup">
							<img src="{{ asset('fassets/images/portfolio5.jpg') }}" alt="portfolio-image">
							<div class="image-overlay"></div>
							<div class="image-caption">
								<h4>Painted Wall</h4>
								<span>Branding</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12 filtr-item" data-category="1">
					<div class="content-image">
						<a href="{{ asset('fassets/images/portfolio6.jpg') }}" class="portfolio-popup">
							<img src="{{ asset('fassets/images/portfolio6.jpg') }}" alt="portfolio-image">
							<div class="image-overlay"></div>
							<div class="image-caption">
								<h4>Blue Lolipop</h4>
								<span>Branding</span>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- end portfolio -->

	<!-- services -->
<!--
	<div id="services" class="services section-bottom-only">
		<div class="section-title">
			<h5 class="title-top">Features</h5>
     		<h3>Our The Best Services</h3> 
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-12">
					<div class="content">
						<div class="serv-icon">
							<i class="icon ion-logo-html5"></i>
							<span class="clone-icon"><i class="icon ion-logo-html5"></i></span>
						</div>
						<h5>QR ID for Parent and Students</h5>
						<p>QR code printed on the ID card can be used as Login credentials by this application.</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-12">
					<div class="content">
						<div class="serv-icon">
							<i class="icon ion-ios-phone-portrait"></i>
							<span class="clone-icon"><i class="icon ion-ios-phone-portrait"></i></span>
						</div>
						<h5>E-Attendance</h5>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit deserunt</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-12">
					<div class="content">
						<div class="serv-icon">
							<i class="icon ion-ios-desktop"></i>
							<span class="clone-icon"><i class="icon ion-ios-desktop"></i></span>
						</div>
						<h5>E-Results</h5>
						<p>Results can be declared department-wise and can be viewed & downloaded for easier access.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-sm-12">
					<div class="content">
						<div class="serv-icon">
							<i class="icon ion-ios-bulb"></i>
							<span class="clone-icon"><i class="icon ion-ios-bulb"></i></span>
						</div>
						<h5>Result Analysis and Career Predictions</h5>
						<p>Results or marks obtained by the student, the result will be analysed and favourable career will be predicted.</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-12">
					<div class="content">
						<div class="serv-icon">
							<i class="icon ion-ios-paper"></i>
							<span class="clone-icon"><i class="icon ion-ios-paper"></i></span>
						</div>
						<h5>Fee Monitoring</h5>
						<p>The Notifications and monitoring regarding the fee balance and paid fees will be provided in this module.</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-12">
					<div class="content">
						<div class="serv-icon">
							<i class="icon ion-logo-wordpress"></i>
							<span class="clone-icon"><i class="icon ion-logo-wordpress"></i></span>
						</div>
						<h5>Feedback</h5>
						<p>Feedback and suggestions given by the students will be analyzed and reports can be generated for the teachers performance.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
-->
	<!-- end services -->

	<!-- words -->
<!--
	<div class="words-section section-bottom-only">
		<div class="container">
			<div class="content">
				<div class="row">
					<div class="col-md-8 col-sm-12 align-self-center">
						<div class="words-wrap">
							<h4>Let's work together on your</h4>
							<h4>best project</h4>
						</div>
					</div>
					<div class="col-md-4 col-sm-12 align-self-center">
						<div class="button-wrap">
							<button class="button">Contact Us</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
-->
	<!-- end words -->

	<!-- news -->
<!--
	<div id="news" class="news section-bottom-only">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-12">
					<div class="section-title section-title-left">
						<h5 class="title-top">News</h5>
						<h3>Latest Post</h3>
						<div class="title-desc">
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam repellat nobis impedit, distinctio eius cupiditate doloribus labore sunt totam!</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-12">
					<div class="row">
						<div class="col-md-6 col-sm-12">
							<a href="">
								<div class="content">
									<img src="{{ asset('fassets/images/news1.jpg') }}" alt="news-image">
									<h4>Graphic Design and Photography Workshop</h4>
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque</p>
								</div>
							</a>
						</div>
						<div class="col-md-6 col-sm-12">
							<a href="">
								<div class="content">
									<img src="{{ asset('fassets/images/news2.jpg') }}" alt="news-image">
									<h4>10 Best Website Design for Inspiration</h4>
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque</p>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
-->

	<!-- end news -->

	<!-- contact -->
	<div id="contact" class="contact section-bottom-only">
		<div class="container">
			<div class="section-title">
				<h5 class="title-top">Contact Us</h5>
				<h3>Let's Join Us</h3>
			</div>
			<div class="box-content">
				<div class="row">
					<div class="col-md-4 col-sm-12">
						<div class="content">
							<h5>Address</h5>
							<p>121 King Street, Melbourne Victoria 3000 Australia</p>
							<h5>Phone</h5>
							<p>+61 3 8376 6284</p>
							<h5>Email</h5>
							<p>support@example.com</p>
						</div>
					</div>
					<div class="col-md-8 col-sm-12">
						<div class="content-right">
							<form action="contact-form.php" class="contact-form" id="contact-form" method="post">
								<div class="row">
									<div class="col">
										<div id="first-name-field">
											<input type="text" placeholder="Name" name="form-name">
										</div>
									</div>
									<div class="col">
										<div id="email-field">
											<input type="email" placeholder="Email Address" name="form-email">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div id="subject-field">
											<input type="text" placeholder="Subject" name="form-subject">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div id="message-field">
											<textarea cols="30" rows="5" id="form-message" name="form-message" placeholder="Message"></textarea>
										</div>
									</div>
								</div>
								<button class="button" type="submit" id="submit" name="submit">Send Message</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end contact -->

	<!-- footer -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="content">
						<div class="brand"><img src="{{ asset('fassets/images/logo.png') }}" alt=""></div>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero, accusamus.</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="content">
						<h5>About</h5>
						<ul>
							<li><a href=""><i class="icon ion-ios-contact"></i> About us</a></li>
							<li><a href=""><i class="icon ion-ios-chatboxes"></i> Contact</a></li>
							<li><a href=""><i class="icon ion-ios-list"></i> Portfolio</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="content">
						<h5>Support</h5>
						<ul>
							<li><a href=""><i class="icon ion-ios-headset"></i> support@example.com</a></li>
							<li><a href=""><i class="icon ion-ios-call"></i> +61 3 8376 6284
							</a></li>
							<li><a href=""><i class="icon ion-ios-settings"></i> Services</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="content">
						<h5>Follow us</h5>
						<ul class="social">
							<li><a href=""><i class="icon ion-logo-facebook"></i> Facebook</a></li>
							<li><a href=""><i class="icon ion-logo-twitter"></i> Twitter</a></li>
							<li><a href=""><i class="icon ion-logo-instagram"></i> Instagram</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- end footer -->

	<!-- footer bottom -->
	<div class="footer-bottom">
		<span>Copyright © All Right Reserved</span>
	</div>
	<!-- end footer bottom -->

	<!-- script -->
	<script src="{{ asset('fassets/js/jquery-3.5.1.min.js') }}"></script>
	<script src="{{ asset('fassets/js/bootstrap.bundle.min.js') }}"></script>
	<script src="{{ asset('fassets/js/jquery.filterizr.min.js') }}"></script>
	<script src="{{ asset('fassets/js/imagesloaded.pkgd.min.js') }}"></script>
	<script src="{{ asset('fassets/js/magnific-popup.min.js') }}"></script>
	<script src="{{ asset('fassets/js/contact-form.js') }}"></script>
	<script src="{{ asset('fassets/js/main.js') }}"></script>

</body>
</html>