<!DOCTYPE html>
<html lang="es">
<head>
    <?php
        include 'inc/head.php';
    ?>
</head><!--/head-->

<body class="homepage">

    <?php
        include 'inc/header.php';
    ?>

    <section id="about-us">
        <div class="container">
			<div class="center wow fadeInDown">
				<h2>Acerca de Nosotros</h2>
				<p class="lead">10 MILLAS surgió  con el objetivo de poder brindarle a los fanáticos de las camisetas de fútbol un lugar donde encontrar la mejor cobertura de los lanzamientos de camisetas alrededor del mundo y todo lo relacionado a las últimas novedades de esta pasión tan particular. La idea comenzó por mi pasión por el futbol y por el Deporte, contamos con más de 10 años de experiencia en la distribución de ropa deportiva de alta calidad al por mayor y menor</p>
			</div>

			<!-- about us slider -->
			<div id="about-slider">
				<div id="carousel-slider" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
				  	<ol class="carousel-indicators visible-xs">
					    <li data-target="#carousel-slider" data-slide-to="0" class="active"></li>
					    <li data-target="#carousel-slider" data-slide-to="1"></li>
					    <li data-target="#carousel-slider" data-slide-to="2"></li>
				  	</ol>

					<div class="carousel-inner">
						<div class="item active">
							<img src="images/slider_one.jpg" class="img-responsive" alt="">
					   </div>
					   <div class="item">
							<img src="images/slider_two.jpg" class="img-responsive" alt="">
					   </div>
					</div>

					<a class="left carousel-control hidden-xs" href="#carousel-slider" data-slide="prev">
						<i class="fa fa-angle-left"></i>
					</a>

					<a class=" right carousel-control hidden-xs"href="#carousel-slider" data-slide="next">
						<i class="fa fa-angle-right"></i>
					</a>
				</div> <!--/#carousel-slider-->
			</div><!--/#about-slider-->


			<!-- Our Skill -->
			<div class="skill-wrap clearfix">

				<div class="center wow fadeInDown">
					<h2>Misión</h2>
					<p class="lead">10 millas se centra  en los últimos estrenos de las marcas y los clubes y selecciones más importantes, habiendo cubierto más de 2,000 estrenos desde su inauguración. Buscando dar relevancia a equipos grandes como otros más desconocidos que podemos destacar a través nuestros diseños. También cubrimos algunas iniciativas de marketing particulares apuntadas al fanático por medio de la moda deportiva, y otro tipo de productos relacionados tecnología Europea.</p>
				</div>

				<!-- <div class="row">

					<div class="col-sm-3">
						<div class="sinlge-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
							<div class="joomla-skill">
								<p><em>85%</em></p>
								<p>Joomla</p>
							</div>
						</div>
					</div>

					 <div class="col-sm-3">
						<div class="sinlge-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
							<div class="html-skill">
								<p><em>95%</em></p>
								<p>HTML</p>
							</div>
						</div>
					</div>

					<div class="col-sm-3">
						<div class="sinlge-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="900ms">
							<div class="css-skill">
								<p><em>80%</em></p>
								<p>CSS</p>
							</div>
						</div>
					</div>

					 <div class="col-sm-3">
						<div class="sinlge-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="1200ms">
							<div class="wp-skill">
								<p><em>90%</em></p>
								<p>Wordpress</p>
							</div>
						</div>
					</div>

				</div> -->

				<div class="row team-bar">
					<div class="first-one-arrow hidden-xs">
						<hr>
					</div>
					<div class="first-arrow hidden-xs">
						<hr> <i class="fa fa-angle-up"></i>
					</div>
					<div class="second-arrow hidden-xs">
						<hr> <i class="fa fa-angle-down"></i>
					</div>
					<div class="third-arrow hidden-xs">
						<hr> <i class="fa fa-angle-up"></i>
					</div>
					<div class="fourth-arrow hidden-xs">
						<hr> <i class="fa fa-angle-down"></i>
					</div>
				</div> <!--skill_border-->

            </div><!--/.our-skill-->


			<!-- our-team -->
			<div class="team">
				<div class="center wow fadeInDown">
					<h2>Visión</h2>
					<p class="lead">Nuestra página web provee información nuestros últimos productos, todos estos son seleccionados y confeccionados con la materia prima de más alta calidad, para asegurarnos de que nuestros clientes  queden completamente satisfechos.</p>
					<p class="lead"><strong>Gracias por formar parte de 10 MILLAS.</strong></p>
				</div>

				<div class="row team-bar">
					<div class="first-one-arrow hidden-xs">
						<hr>
					</div>
					<div class="first-arrow hidden-xs">
						<hr> <i class="fa fa-angle-up"></i>
					</div>
					<div class="second-arrow hidden-xs">
						<hr> <i class="fa fa-angle-down"></i>
					</div>
					<div class="third-arrow hidden-xs">
						<hr> <i class="fa fa-angle-up"></i>
					</div>
					<div class="fourth-arrow hidden-xs">
						<hr> <i class="fa fa-angle-down"></i>
					</div>
				</div> <!--skill_border-->


			</div><!--section-->
		</div><!--/.container-->
    </section><!--/about-us-->

    <footer id="footer" class="midnight-blue">
        <div class="container">
            <?php
                include 'inc/footer.php';
            ?>
        </div>
    </footer><!--/#footer-->


    <script src="js/jquery.js"></script>
    <script type="text/javascript">
        $('#about').addClass('active');
    </script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/wow.min.js"></script>
</body>
</html>